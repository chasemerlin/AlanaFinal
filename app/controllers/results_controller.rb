class ResultsController < ApplicationController
  def index
    @msas = @msas || ZipMsa.all.map {|msa| msa.msa_name}.uniq
    @hospitals = @hospitals || HospitalGeneral.all.map {|hospital| hospital.name.split(" ").map {|word| word.downcase.mb_chars.capitalize.to_s}.join(" ")}
  end

  def search
    @user_selected_msa = params[:tags] unless params[:tags].empty?
    @user_selected_hospital = params[:hospitals] unless params[:hospitals].empty?
    # Handle invalid case where user inputs both MSA and hospital
    if !@user_selected_msa && !@user_selected_hospital
      flash[:notice] = "Please enter an MSA or Hospital."
      redirect_to results_index_path
    # Handle invalid case where user does not input anything
    elsif @user_selected_msa && @user_selected_hospital
      flash[:notice] = "Please enter either an MSA or Hopsital (not both)."
      redirect_to results_index_path
    # User inputs MSA
    else 
      if @user_selected_msa
        inferred_state_list = ZipMsa.where(msa_name: @user_selected_msa)
        if inferred_state_list.empty?
          flash[:notice] = "The MSA you have entered was not found."
          redirect_to results_index_path
        else
          inferred_state = inferred_state_list.first.state_abbreviation
          # Compute predicted market size for MSA
          state_copd_rate = StateCopd.where(abbreviation: inferred_state).first.percentage if StateCopd.where(abbreviation: inferred_state).first
          msa_population = ZipMsa.where(msa_name: @user_selected_msa).first.msa_population
          if msa_population && msa_population!= 0 && state_copd_rate
            @msa_market_size = msa_population * state_copd_rate
          else
            @msa_market_size = "N/A"
          end
          # Find all hospitals in MSA
          zips_in_msa = ZipMsa.where(msa_name: @user_selected_msa).map {|record| record.zip_code}
          hospitals = HospitalGeneral.where("zip IN (?)", zips_in_msa)
          @hospital_count = hospitals.count
          # Compute total beds and max beds, discharges,and readmissions 
          @beds_count = 0
          max_bed_count = 0
          max_discharges_count = 0
          max_readmissions_count = 0
          hospitals.each do |hospital|
            bedsize = hospital.hospital_bedsizes.first
            # Compute max number of beds 
            staffed_beds = bedsize.staffed_beds if bedsize
            if staffed_beds
              max_bed_count = staffed_beds if staffed_beds > max_bed_count
              @beds_count = @beds_count + staffed_beds 
            end
            # Compute max number of discharges
            discharges = bedsize.total_discharges if bedsize
            if discharges
              max_discharges_count = discharges if discharges > max_discharges_count
            end
            # Compute max number of copd readmissions
            copd_readmissions = hospital.copd_readmissions
            max_readmissions_count = copd_readmissions if copd_readmissions > max_readmissions_count
          end
          # Create list of hospitals with computed metrics
          @hospitals_with_metrics = []
          hospitals.each do |hospital|
            # Compute bed rating
            bed_rating = 0
            bedsize = hospital.hospital_bedsizes.first
            staffed_beds = bedsize.staffed_beds if bedsize
            if staffed_beds
              bed_rating = staffed_beds.to_f/max_bed_count
            end
            # Compute discharges rating
            discharges_rating = 0
            discharges = bedsize.total_discharges if bedsize
            if discharges
              discharges_rating = discharges.to_f/max_discharges_count
            end
            # Compute discharges rating
            copd_readmissions = hospital.copd_readmissions
            readmissions_rating = copd_readmissions.to_f/max_readmissions_count
            # Compute overall rating
            if bed_rating == 0 || discharges_rating==0 || readmissions_rating==0
              overall_rating = 0
            else
              overall_rating = (bed_rating + discharges_rating + readmissions_rating)/3
            end
            hospital_with_metric = []
            hospital_with_metric << hospital
            hospital_with_metric << overall_rating
            @hospitals_with_metrics << hospital_with_metric
          end
          @hospitals_with_metrics = @hospitals_with_metrics.sort_by {|k| k[1]}.reverse.select {|k| k[1]!=0}
          @msas = @msas || ZipMsa.all.map {|msa| msa.msa_name}.uniq
          @hospitals = @hospitals || HospitalGeneral.all.map {|hospital| hospital.name.split(" ").map {|word| word.downcase.mb_chars.capitalize.to_s}.join(" ")}
          render 'index' 
        end
      end 
      if @user_selected_hospital
        @hospital = HospitalGeneral.where(name: @user_selected_hospital.upcase).first
        if @hospital.nil?
          flash[:notice] = "The hospita you entered was not found."
          redirect_to results_index_path
        else
          # Compute predicted market size for the MSA in which the hospital is located
          inferred_state = @hospital.state
          state_copd_rate = StateCopd.where(abbreviation: inferred_state).first.percentage if StateCopd.where(abbreviation: inferred_state).first
          inferred_msa = ZipMsa.where(zip_code: @hospital.zip).first.msa_name
          @inferred_msa = inferred_msa
          msa_population = ZipMsa.where(msa_name: inferred_msa).first.msa_population
          if msa_population && msa_population!= 0 && state_copd_rate
            @msa_market_size = msa_population * state_copd_rate
          else
            @msa_market_size = "N/A"
          end
          # Compute total number of hospitals for MSA in which hospital is located
          zips_in_msa = ZipMsa.where(msa_name: inferred_msa).map {|record| record.zip_code}
          hospitals = HospitalGeneral.where("zip IN (?)", zips_in_msa)
          @hospital_count = hospitals.count
          # Compute total number of beds for MSA in which hospital is located
          @beds_count = 0
          hospitals.each do |hospital|
            bedsize = hospital.hospital_bedsizes.first
            # Compute max number of beds 
            staffed_beds = bedsize.staffed_beds if bedsize
            if staffed_beds
              @beds_count = @beds_count + staffed_beds 
            end
          end 
          # Compute selected hospital metrics
          bedsize = @hospital.hospital_bedsizes.first
          bedsize.nil? ? @hospital_beds = "NA" : @hospital_beds = bedsize.staffed_beds
          @discharges = bedsize.total_discharges if bedsize
          @copd_readmissions = @hospital.copd_readmissions
          @msas = @msas || ZipMsa.all.map {|msa| msa.msa_name}.uniq
          @hospitals = @hospitals || HospitalGeneral.all.map {|hospital| hospital.name.split(" ").map {|word| word.downcase.mb_chars.capitalize.to_s}.join(" ")}
          render 'index'
        end
      end
    end
  end
end

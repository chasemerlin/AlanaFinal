class HospitalGeneral < ActiveRecord::Base
  has_many :hospital_bedsizes, primary_key: :name, foreign_key: :hospital_name
  has_many :hospital_readmissions, primary_key: :name, foreign_key: :hospital_name
  has_many :fines, primary_key: :name, foreign_key: :hospital_name

  def fine
    fines.first
  end

  def copd_readmissions
    if hospital_readmissions
      re = hospital_readmissions.where(measure_id:"READM_30_COPD").first
      number = re.denominator if re
      if number
        number
      else
        0
      end
    else
      0
    end
  end

  def excess_readmissions
    total = fine.copd_amount + fine.ami_amount + fine.pneumonia_amount + fine.hip_knee_amount + fine.hf_amount
  end

  def aggregate_payments
    fine.total_payments
  end

  def readjustment_factor
    overall_ratio = 1 - (excess_readmissions/aggregate_payments)
    if overall_ratio < 0.97
      0.03
    else
      1 - overall_ratio
    end
  end

  def total_fines
    final_fine = readjustment_factor * aggregate_payments
  end
end

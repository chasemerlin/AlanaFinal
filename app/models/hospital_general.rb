class HospitalGeneral < ActiveRecord::Base
  has_many :hospital_bedsizes, primary_key: :name, foreign_key: :hospital_name
  has_many :hospital_readmissions, primary_key: :name, foreign_key: :hospital_name
  has_many :fines, primary_key: :name, foreign_key: :hospital_name

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

  def total_fines
    record = fines.first
    total_excess_readmissions = record.copd_amount + record.ami_amount + record.pneumonia_amount +
                                record.hip_knee_amount + record.hf_amount
    total_payments = record.total_payments
    overall_ratio = 1 - (total_excess_readmissions/total_payments)
    if overall_ratio < 0.97
      readjustment_factor = 0.03
    else
      readjustment_factor = 1 - overall_ratio
    end
    final_fine = readjustment_factor * total_payments
  end
end

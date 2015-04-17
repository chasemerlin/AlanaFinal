class HospitalGeneral < ActiveRecord::Base
  has_many :hospital_bedsizes, primary_key: :name, foreign_key: :hospital_name
  has_many :hospital_readmissions, primary_key: :name, foreign_key: :hospital_name

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
end

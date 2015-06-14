module HospitalGeneralsHelper

  def excess_readmissions_status(hospital)
    hospital.excess_readmissions.round(0)
  end
end

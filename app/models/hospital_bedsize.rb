class HospitalBedsize < ActiveRecord::Base
  belongs_to :hospital_general, foreign_key: :hospital_name, primary_key: :name
end

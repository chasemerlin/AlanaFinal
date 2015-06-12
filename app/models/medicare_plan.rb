class MedicarePlan < ActiveRecord::Base
  validates :mco_id, presence: true
end

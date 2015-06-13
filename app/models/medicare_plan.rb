class MedicarePlan < ActiveRecord::Base
  include Plan

  validates :mco_id, presence: true
end

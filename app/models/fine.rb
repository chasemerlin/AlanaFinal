class Fine < ActiveRecord::Base
  belongs_to :hospital_general, foreign_key: :hospital_name, primary_key: :name

  def copd_amount
    if copd_total.nil?
      copd_amount = 0
    else
      (copd_ratio.nil? || copd_ratio < 1.0) ? copd_amount = 0 : copd_amount = copd_total * (copd_ratio.to_f-1)
    end
  end

  def ami_amount
    if ami_total.nil?
      ami_amount = 0
    else
      (ami_ratio.nil? || ami_ratio < 1.0) ? ami_amount = 0 : ami_amount = ami_total * (ami_ratio.to_f-1)
    end
  end

  def pneumonia_amount
    if pneumonia_total.nil?
      pneumonia_amount = 0
    else
      (pneumonia_ratio.nil? || pneumonia_ratio < 1.0) ? pneumonia_amount = 0 : pneumonia_amount = pneumonia_total * (pneumonia_ratio.to_f-1)
    end
  end

  def hip_knee_amount
    if hip_knee_total.nil?
      hip_knee_amount = 0
    else
      (hip_knee_ratio.nil? || hip_knee_ratio < 1.0) ? hip_knee_amount = 0 : hip_knee_amount = hip_knee_total * (hip_knee_ratio.to_f-1)
    end
  end

  def hf_amount
    if hf_total.nil?
      hf_amount = 0
    else
      (hf_ratio.nil? || hf_ratio < 1.0) ? hf_amount = 0 : hf_amount = hf_total * (hf_ratio.to_f-1)
    end
  end
end

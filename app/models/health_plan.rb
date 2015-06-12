class HealthPlan < ActiveRecord::Base
  def total_in_state(state)
    case state
    when "AL"
      al
    when "AK"
      ak
    when "AZ"
      az
    when "AR"
      ar
    when "CA"
      ca
    when "CO"
      co
    when "CT"
      ct
    when "DE"
      de
    when "DC"
      dc
    when "FL"
      fl
    when "GA"
      ga
    when "HI"
      hi
    when "ID"
      indiana
    when "IL"
      il
    when "IN"
      send(:in)
    when "IA"
      ia
    when "KS"
      ks
    when "KY"
      ky
    when "LA"
      la
    when "ME"
      me
    when "MD"
      md
    when "MA"
      ma
    when "MI"
      mi
    when "MN"
      mn
    when "MS"
      ms
    when "MO"
      mo
    when "MT"
      mt
    when "NE"
      ne
    when "NV"
      nv
    when "NH"
      nh
    when "NJ"
      nj
    when "NM"
      nm
    when "NY"
      ny
    when "NC"
      nc
    when "ND"
      nd
    when "OH"
      oh
    when "OK"
      ok
    when "OR"
      send(:or)
    when "PA"
      pa
    when "RI"
      ri
    when "SC"
      sc
    when "SD"
      sd
    when "TN"
      tn
    when "TX"
      tx
    when "UT"
      ut
    when "VT"
      vt
    when "VA"
      va
    when "WA"
      wa
    when "WV"
      wv
    when "WI"
      wi
    when "WY"
      wy
    when "PR"
      pr
    else
      "N/A"
    end
  end
end

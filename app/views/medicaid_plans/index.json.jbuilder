json.array!(@medicaid_plans) do |medicaid_plan|
  json.extract! medicaid_plan, :id, :mco_id, :mco_name, :mco_owner, :owner_id, :address, :city, :state_abbreviation, :zip, :url, :profit_status, :private_public, :telephone_one, :telephone_two, :fax, :contracted_pbm, :contracted_sp_vendor, :service_areas, :aliases, :provider_sponsored, :blues, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign
  json.url medicaid_plan_url(medicaid_plan, format: :json)
end

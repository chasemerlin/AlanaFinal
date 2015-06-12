json.array!(@rollup_parents) do |rollup_parent|
  json.extract! rollup_parent, :id, :mco_id, :owner_id, :company, :al, :ak, :ar, :az, :ca, :co, :ct, :dc, :de, :fl, :ga, :hi, :ia, :indiana, :il, :in, :ks, :ky, :la, :ma, :me, :mi, :md, :mn, :ms, :mo, :mt, :nc, :nd, :ne, :nh, :nj, :nm, :nv, :ny, :oh, :ok, :or, :pa, :ri, :sc, :sd, :tn, :tx, :ut, :va, :vt, :wa, :wi, :wv, :wy, :pr, :foreign
  json.url rollup_parent_url(rollup_parent, format: :json)
end

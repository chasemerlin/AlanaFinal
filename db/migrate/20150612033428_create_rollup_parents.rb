class CreateRollupParents < ActiveRecord::Migration
  def change
    create_table :rollup_parents, id: false do |t|
      t.integer :mco_id
      t.integer :owner_id
      t.string :company, primary_key: true
      t.integer :al
      t.integer :ak
      t.integer :ar
      t.integer :az
      t.integer :ca
      t.integer :co
      t.integer :ct
      t.integer :dc
      t.integer :de
      t.integer :fl
      t.integer :ga
      t.integer :hi
      t.integer :ia
      t.integer :indiana
      t.integer :il
      t.integer :in
      t.integer :ks
      t.integer :ky
      t.integer :la
      t.integer :ma
      t.integer :me
      t.integer :mi
      t.integer :md
      t.integer :mn
      t.integer :ms
      t.integer :mo
      t.integer :mt
      t.integer :nc
      t.integer :nd
      t.integer :ne
      t.integer :nh
      t.integer :nj
      t.integer :nm
      t.integer :nv
      t.integer :ny
      t.integer :oh
      t.integer :ok
      t.integer :or
      t.integer :pa
      t.integer :ri
      t.integer :sc
      t.integer :sd
      t.integer :tn
      t.integer :tx
      t.integer :ut
      t.integer :va
      t.integer :vt
      t.integer :wa
      t.integer :wi
      t.integer :wv
      t.integer :wy
      t.integer :pr
      t.integer :foreign

      t.timestamps null: false
    end
  end
end
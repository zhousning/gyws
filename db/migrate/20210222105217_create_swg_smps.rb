class CreateSwgSmps < ActiveRecord::Migration
  def change
    create_table :swg_smps do |t|
    
      t.date :smp_date
    
      t.float :act_ipt,  null: false, default: Setting.systems.default_num 
    
      t.float :ipt_tmp,  null: false, default: Setting.systems.default_num 
    
      t.float :ipt_ph,  null: false, default: Setting.systems.default_num 
    
      t.float :cod_ipt,  null: false, default: Setting.systems.default_num 
    
      t.float :cod_opt,  null: false, default: Setting.systems.default_num 
    
      t.float :cod_rmr,  null: false, default: Setting.systems.default_num 
    
      t.float :amn_ipt,  null: false, default: Setting.systems.default_num 
    
      t.float :amn_opt,  null: false, default: Setting.systems.default_num 
    
      t.float :amn_rmr,  null: false, default: Setting.systems.default_num 
    
      t.float :tmn_ipt,  null: false, default: Setting.systems.default_num 
    
      t.float :tmn_opt,  null: false, default: Setting.systems.default_num 
    
      t.float :tmn_rmr,  null: false, default: Setting.systems.default_num 
    
      t.float :psp_ipt,  null: false, default: Setting.systems.default_num 
    
      t.float :psp_opt,  null: false, default: Setting.systems.default_num 
    
      t.float :psp_rmr,  null: false, default: Setting.systems.default_num 
    
      t.boolean :rts,  null: false, default: Setting.systems.default_boolean
    
      t.string :level_ab,  null: false, default: Setting.systems.default_str
    
      t.text :desc
    

    

    

    
      t.references :sewage
    

      t.timestamps null: false
    end
  end
end

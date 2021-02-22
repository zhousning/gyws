class CreateSewages < ActiveRecord::Migration
  def change
    create_table :sewages do |t|
    
      t.string :name,  null: false, default: Setting.systems.default_str
    

    

    

    
      t.references :user
    

      t.timestamps null: false
    end
  end
end

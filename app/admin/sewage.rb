ActiveAdmin.register Sewage  do

  permit_params  :name

  menu label: Setting.sewages.label
  config.per_page = 20
  config.sort_order = "id_asc"

  
  filter :name, :label => Setting.sewages.name
  filter :created_at

  index :title=>Setting.sewages.label + "管理" do
    selectable_column
    id_column
    
    column Setting.sewages.name, :name

    column "创建时间", :created_at, :sortable=>:created_at do |f|
      f.created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
    column "更新时间", :updated_at do |f|
      f.updated_at.strftime('%Y-%m-%d %H:%M:%S')
    end
    actions
  end

  form do |f|
    f.inputs "添加" + Setting.sewages.label do
      
      f.input :name, :label => Setting.sewages.name 
    end
    f.actions
  end

  show :title=>Setting.sewages.label + "信息" do
    attributes_table do
      row "ID" do
        sewage.id
      end
      
      row Setting.sewages.name do
        sewage.name
      end

      row "创建时间" do
        sewage.created_at.strftime('%Y-%m-%d %H:%M:%S')
      end
      row "更新时间" do
        sewage.updated_at.strftime('%Y-%m-%d %H:%M:%S')
      end
    end
  end

end

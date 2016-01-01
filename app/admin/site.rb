ActiveAdmin.register Site do
  permit_params :name, :description, :url, :protocol, :active, :status

  index do
    selectable_column
    id_column
    column :name
    column :url
    column :active
    column :status
    actions
  end

  filter :url
  filter :status

  form do |f|
    f.inputs "Site details" do
      f.input :name
      f.input :description
      f.input :url
      f.input :protocol
      f.input :active
      f.input :status
    end
    f.actions
  end

end

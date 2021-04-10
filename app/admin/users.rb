ActiveAdmin.register User do
  permit_params :email, :admin, :first_name, :last_name

  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :last_name
      f.input :email
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  index do
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :email
    column :created_at
    column :admin
    actions
  end
end

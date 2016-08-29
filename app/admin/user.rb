ActiveAdmin.register User do
  menu priority: 2

  index do
    selectable_column
    column :id
    column :email
    column :sign_in_count
    column :last_sign_in_at
    column :created_at
    actions
  end
end

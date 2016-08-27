ActiveAdmin.register Product do
  active_admin_importable

  permit_params :name, :description, :price, images_attributes: [:id, :data]

  index do
    selectable_column
    column :id
    column :name
    column :price
    actions
  end

  form do |f|
    f.inputs 'Admin Details' do
      f.input :name
      f.input :description
      f.input :price
      f.has_many :images, heading: false, allow_destroy: true do |cd|
        cd.input :data, :required => true, :as => :file
      end
    end
    f.actions
  end
end

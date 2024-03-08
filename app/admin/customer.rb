ActiveAdmin.register Customer do
    permit_params :full_name, :phone_number, :email, :notes, :image
  
    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email
      column :created_at
      actions
    end
  
    filter :full_name
    filter :phone_number
    filter :email
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :full_name
        f.input :phone_number
        f.input :email
        f.input :notes
        f.input :image, as: :file
      end
      f.actions
    end
  end
  
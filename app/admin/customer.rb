ActiveAdmin.register Customer do
    permit_params :fullName, :phoneNumber, :email, :notes, :image
  
    index do
      selectable_column
      id_column
      column :fullName
      column :phoneNumber
      column :email
      column :created_at
      actions
    end
  
    filter :fullName
    filter :phoneNumber
    filter :email
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :fullName
        f.input :phoneNumber
        f.input :email
        f.input :notes
        f.input :image, as: :file
      end
      f.actions
    end
  end
  
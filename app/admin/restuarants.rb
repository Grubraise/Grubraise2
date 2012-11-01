ActiveAdmin.register Restuarant do

  index do
  	column :restuarant_name
    column :owner_name
    column :email
    column :message
    column :phone_number
    column :reference
    column :website

    default_actions
  end
  
end

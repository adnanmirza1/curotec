ActiveAdmin.register Career do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :technology
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :technology]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title, :description, :technology
  index do
    id_column
    column :title
    column :description
    column :technology
    actions
  end
  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :technology
      f.input :description
    end
    f.actions
  end
  
end

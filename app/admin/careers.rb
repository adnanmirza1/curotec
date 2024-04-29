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
  actions :all, :except => [:new]
  action_item :new, only: :index do
    link_to 'create career', careers_new_path
  end

  permit_params :title, :description, :technology, :experience

  filter :title
  filter :technology
  filter :created_at
  filter :updated_at

  index do
    id_column
    column :title
    column :description
    column :technology
    column :experience
    actions
  end
  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :technology
      f.input :description
      f.input :experience
    end
    f.actions
  end
  
end

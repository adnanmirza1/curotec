ActiveAdmin.register Recruiter do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :mobile, :email, :education_details, :current_salary, :expected_salary, :skill_set, :job_title
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :mobile, :email, :education_details, :current_salary, :expected_salary, :skill_set, :job_title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  show do
    attributes_table do
      row :id
      row :name
      row :email
      row :current_salary
      row :expected_salary
      row :education_details
      row :skill_set
      row :job_title
      row "Avatar" do |recruiter|
        if recruiter.avatar.attached?
          pdf_url = rails_blob_path(recruiter.avatar, disposition: "attachment")
          link_to 'Download PDF', pdf_url
        else
          "No avatar available"
        end
      end
    end
    active_admin_comments
  end



  actions :all, :except => [:new]
  action_item :new, only: :index do
    link_to 'create career', careers_new_path
  end

  permit_params :name, :mobile, :email, :education_details, :current_salary, :expected_salary, :skill_set, :job_title, :avatar

  filter :title
  filter :technology
  filter :created_at
  filter :updated_at


  index do
    id_column
    column :name
    column :email
    column :current_salary
    column :expected_salary
    column :education_details
    column :skill_set
    column :job_title
    column "Avatar" do |recruiter|
      if recruiter.avatar.attached?
        pdf_url = rails_blob_path(recruiter.avatar, disposition: "attachment")
        link_to 'Download PDF', pdf_url
      else
        "No avatar available"
      end
    end
    actions
  end
  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :email
      f.input :current_salary
      f.input :expected_salary
      f.input :education_details
      f.input :skill_set
      f.input :job_title
      f.input :avatar
    end
    f.actions
  end
  
end

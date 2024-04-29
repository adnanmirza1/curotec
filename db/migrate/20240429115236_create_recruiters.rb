class CreateRecruiters < ActiveRecord::Migration[7.0]
  def change
    create_table :recruiters do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.text :education_details
      t.decimal :current_salary
      t.decimal :expected_salary
      t.string :skill_set
      t.string :job_title

      t.timestamps
    end
  end
end

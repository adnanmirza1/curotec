class AddExperienceColumnToCareers < ActiveRecord::Migration[7.0]
  def change
    add_column :careers, :experience, :string
  end
end

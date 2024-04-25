class ChangeDescriptionTypeInCareers < ActiveRecord::Migration[7.0]
  def change
    change_column :careers, :description, :rich_text
  end
end

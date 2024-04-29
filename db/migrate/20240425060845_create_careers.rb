class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :title
      t.text :description
      t.string :technology

      t.timestamps
    end
  end
end

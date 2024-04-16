class AddColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :email, :string
    add_column :articles, :phone, :string
    add_column :articles, :website, :string
  end
end

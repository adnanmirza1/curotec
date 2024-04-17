class RenameTitleInArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :title, :description
  end
end

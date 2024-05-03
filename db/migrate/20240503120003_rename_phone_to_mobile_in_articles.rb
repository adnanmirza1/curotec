class RenamePhoneToMobileInArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :phone, :mobile
  end
end

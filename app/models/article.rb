class Article < ApplicationRecord
    validates :email, :mobile, :name, :website, presence: true
end

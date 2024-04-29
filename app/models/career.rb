class Career < ApplicationRecord
    has_rich_text :body
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "technology", "title", "updated_at"]
    end
   
end

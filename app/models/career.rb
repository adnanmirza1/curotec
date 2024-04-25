class Career < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "technology", "title", "updated_at"]
    end
end

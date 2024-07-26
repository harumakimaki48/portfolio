class Shop < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["closing_time", "created_at", "holiday", "id", "name", "opening_time", "updated_at", "url"]
      end
end

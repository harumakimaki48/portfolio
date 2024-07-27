class Shop < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["closing_time", "holiday", "name", "opening_time" ]
    end

    def self.ransackable_associations(auth_object = nil)
        ["closing_time", "holiday", "name", "opening_time" ]
    end
end

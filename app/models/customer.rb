class Customer < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[id email fullName notes phoneNumber created_at updated_at] # Add other attributes here as needed
      end
    has_one_attached :image
    # Add other model validations as per your requirement
    validates :fullName, presence: true
  end
  
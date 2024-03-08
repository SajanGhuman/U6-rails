class Customer < ApplicationRecord
    has_one_attached :image
    # Add other model validations as per your requirement
    validates :full_name, presence: true
  end
  
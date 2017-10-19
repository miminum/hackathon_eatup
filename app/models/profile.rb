class Profile < ApplicationRecord
  include ProfileImageUploader[:profile_image]
  belongs_to :user

  GENDER_TYPES = ["Male", "Female"]
end

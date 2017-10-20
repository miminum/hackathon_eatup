class Profile < ApplicationRecord
  include ProfileImageUploader[:profile_image]
  belongs_to :user

  GENDER_TYPES = ["Male", "Female"]
  CUISINE_TYPES = ["Chinese", "French", "Italian", "Japanese", "Mexican", "Spanish", "Ethiopian", "Thai", "Africaaaaan", "Vietnamese"]
end

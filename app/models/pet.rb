class Pet < ApplicationRecord

  mount_uploader :image1, PetImageUploader
  mount_uploader :image2, PetImageUploader
  mount_uploader :image3, PetImageUploader
  mount_uploader :image4, PetImageUploader
end

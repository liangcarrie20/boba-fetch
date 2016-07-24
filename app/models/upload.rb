class Upload < ActiveRecord::Base
  belongs_to :drink

  mount_uploader :filepath, Uploader
end

class Upload < ActiveRecord::Base
  mount_uploader :filepath, Uploader

  belongs_to :drink
end

class Note < ActiveRecord::Base
  mount_uploader :data, DataUploader # Tells rails to use this uploader for this model.
  validates :name, presence:true
  validates :composer, presence:true

end

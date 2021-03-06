class ProfilePhoto < ActiveRecord::Base
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "171x180#" }, default_url: "missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
	belongs_to :profile
end

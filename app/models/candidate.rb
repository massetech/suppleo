class Candidate < ApplicationRecord

	has_attached_file :cv
	validates_attachment_content_type :cv, content_type: ['application/pdf']
	validates_attachment_size :cv, less_than: 5.megabytes
	validates_presence_of :name, :email, :message
	validates_attachment_presence :cv
end

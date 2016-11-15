# Preview all emails at http://localhost:3000/rails/mailers/apply_mailer
class ApplyMailerPreview < ActionMailer::Preview
	def apply_preview
		ApplyMailer.apply_email(Candidate.first)
	end
end

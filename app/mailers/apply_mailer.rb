class ApplyMailer < ActionMailer::Base
  default from: "t.masse@suppleo-conseil.fr"

  def apply_email(candidate)
  	@candidate = candidate
  	attachments[@candidate.cv_file_name] = File.read(@candidate.cv.path)
    mail(to: 't.masse@suppleo-conseil.fr', subject: 'Nouveau candidat !')
  end

end
	
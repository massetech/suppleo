class CandidatesController < ApplicationController
	include ApplicationHelper

	def welcome
		@candidate = Candidate.new
		render 'public/welcome'
	end

	def create
		@candidate = Candidate.new(candidate_params)
		respond_to do |format|
	      if @candidate.save
	      	ApplyMailer.apply_email(@candidate).deliver
			flash_message('success', 'Merci pour votre candidature !')
			@candidate.delete
	        format.html {redirect_to root_path}
	    else
	    	flash_message('alert', 'Impossible de poster votre candidature. Vérifiez le formulaire...')
	    	format.html {redirect_to root_path}
	      end
	    end
	end


	private

	def candidate_params
		params.require(:candidate).permit(:name, :email, :cv, :message)
	end



end

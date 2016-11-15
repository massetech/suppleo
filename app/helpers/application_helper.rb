module ApplicationHelper

	# --------    Navigation -----------------------------------------

	def link_to_image(image_path, target_link,options={})
	  link_to(image_tag(image_path, :border => "0"), target_link, options)
	end

	def link_to_icon(name, width, height, target_link,options={})
	  link_to(image_tag('icons/' + name.to_s + '.png', width: width, height: height), target_link, options)
	end

	# --------    Flash messages display -----------------------------------------

	def flash_message (type, text)
		flash[type] ||= []
		flash[type] << text
	end

	def render_flash
		rendered = []
			flash.each do |type, msg|
				if msg.class == Array
					msg.each do |message|
						content = ""
						if message.class == Array
							content = message[0].to_s + " " + message[1][0].to_s
						else
							content = message
						end
						rendered << content_tag(:h4, content, class: "flash_#{type} flash")
					end
				else
					rendered << content_tag(:h4, msg, class: "flash_#{type} flash")   			
				end
	  	end
	  	flash.clear
	  	if !rendered.empty?
			rendered.join().html_safe
		end
	end
	
end

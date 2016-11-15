window.App ||= {}

App.init = ->
	init_flash()
	

$(document).on "turbolinks:load", ->
  App.init()
	

# -------------------------------  JS functions  --------------------------------------------

# Init flash
init_flash = ->
	$('#flash_msg').hide()
	#console.log 'Flash loaded'
	unless $('#flash_msg').length is 0
		show_flash()
	$('#flash_msg').change ->
		show_flash()
	$('.flash').click ->
		$(this).fadeOut 2000, ->
			$(this).empty()
	
# Show flash messages
show_flash = ->
	setTimeout ->
		$('#flash_msg').fadeIn 1000
	, 1000
	setTimeout ->
		$('#flash_msg')
			.fadeOut 2000, ->
				$(this).empty()
	, 600000
	console.log 'Flash fired'



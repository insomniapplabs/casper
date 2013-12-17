# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$("#your_editor").crevasse previewer: $("#your_previewer")
	$('#datepicker').datepicker
			format: "yyyy-mm-dd"
			todatHighlight: true
			todayBtn: 'linked'
			autoclose: true

	

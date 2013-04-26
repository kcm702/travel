# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$(document).ready ->
		$('#container').masonry itemSelector: ".box" 
		columnWidth: 240

	$("#TypeAccommodation").click ->
  		$(".type_accommodation").toggle @checked

	$("#TypeHot_Spot").click ->
 		$(".type_hot_spot").toggle @checked

	$("#TypeNote").click ->
 		 $(".type_note").toggle @checked
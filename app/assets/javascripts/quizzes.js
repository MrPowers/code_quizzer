// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
	$('.answer_hide').toggle(
		function(){
			$(this).attr('class', 'answer_show')
		}, 
		function(){
			$(this).attr('class', 'answer_hide')
		}
	); //end toggle	
}); //end ready

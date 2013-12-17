$(document).ready(function(){
  $('.menu li a:first').trigger('click').closest('li').addClass('selected');

});

$(document).ready(function(){
	$('a.links-post').click(function(e){
		e.preventDefault();
		$(this).closest('li').addClass('selected').siblings().removeClass('selected');
	});
});

$(document).ready(function(){
	$('#tag-input').hide();
	$('.calendar-input').hide();
	$('#tag-icon').click(function(){
		$('#tag-input').show().focus();
	});
	$('#calendar-icon').click(function(){
		$('.calendar-input').show().focus();
	});
});







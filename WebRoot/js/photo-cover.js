$(document).ready(function(){

		$('.banner div').css('opacity',0.2);

		$('.banner').hover(function(){
	
			var el = $(this);
		
			el.find('div').stop().animate({width:200,height:200},'slow',function(){

				el.find('p').fadeIn('fast');
			});

		},function(){

			var el = $(this);
		
			el.find('p').stop(true,true).hide();
		
			el.find('div').stop().animate({width:60,height:60},'fast');

		}).click(function(){
		
		
			window.open($(this).find('a').attr('href'));
		
		});
	});
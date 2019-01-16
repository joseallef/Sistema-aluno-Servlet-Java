$(function(){
	
	$(".imput").each(function(){
		var place = $(this).attr("title");
		var input = $(this);

		input
			.val(place)
			.css('color','#999')
			.focusin(function(){
				input.css("color", "#888888");
				if (input.val() == place){
					input.val('');
				}
			}).focusout(function(){				
				if (input.val() == ''){
					input.css('color', '#999');
					input.val(place);
				}
			});

	});
	

	$('#slide img:eq(0)').addClass("ativo").show();

	var texto = $(".ativo").attr("alt");

	// Apresentação do conteúdo adicionado no rodapé da imagem 
	$('#slide').prepend("<p>"+texto+"</p>");

	// Criando um nome de função para o temporizador de troca de imagens
	setInterval(slide, 5000);

	function slide(){
		if($('.ativo').next().size()){
			$('.ativo').fadeOut().removeClass("ativo").next().fadeIn().addClass("ativo");
		}else{
			$('.ativo').fadeOut().removeClass("ativo");
			$('#slide img:eq(0)').fadeIn().addClass("ativo");
		}
		let texto = $(".ativo").attr("alt");
		$('#slide p').hide().html(texto).delay(500).fadeIn();
	}
	
	
});

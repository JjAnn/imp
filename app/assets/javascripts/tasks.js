$( document ).ready(function() {
  $(".adicionarp").click(function(){
    linha = $(".pai:first").clone();
    $(".tabela").append("<li class='pai'>"+$(linha).html()+"</li>");
    remover();
  });

<<<<<<< HEAD
$(".adicionar").click(function(){
    linha = $(".linha:first").clone();
    $(".tabela").append("<tr class='linha'>"+$(linha).html()+"</tr>");
    remover();
  });


=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289

  $(".adicionarf").click(function(){
    linha = $(".filho:first").clone();
    $(".tabelap").append("<li class='filho'>"+$(linha).html()+"</li>");
    remover();
  });

  $(".adicionarn").click(function(){
    linha = $(".neto:first").clone();
    $(".tabelan").append("<li class='neto'>"+$(linha).html()+"</li>");
    remover();
  });


function remover() {
  $(".remover").click(function(){
<<<<<<< HEAD
    $(this).parent().parent().remove();
=======
    $(this).parent().remove();
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
  });
}});




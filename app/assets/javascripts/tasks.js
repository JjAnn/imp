$( document ).ready(function() {
  $(".adicionarp").click(function(){
    linha = $(".pai:first").clone();
    $(".tabela").append("<li class='pai'>"+$(linha).html()+"</li>");
    remover();
  });


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
    $(this).parent().remove();
  });
}});




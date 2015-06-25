$( document ).ready(function() {
  $(".adicionar").click(function(){
    linha = $(".linha:first").clone();
    $(".tabela").append("<div class='linha'>"+$(linha).html()+"</div>");
    remover();
  });
});

function remover() {
  $(".remover").click(function(){
    $(this).parent().parent().parent().remove();
  });
}

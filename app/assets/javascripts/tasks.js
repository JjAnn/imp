$( document ).ready(function() {
  $(".adicionar").click(function(){
    linha = $(".linha:first").clone();
    $(".tabela").append("<tr class='linha'>"+$(linha).html()+"</tr>");
    remover();
  });
});

function remover() {
  $(".remover").click(function(){
    $(this).parent().parent().remove();
  });
}

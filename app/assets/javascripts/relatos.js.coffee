# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery -> 
 projetos = $('#relato_projeto_id').html()
 $('#relato_cliente_id').change ->
  cliente = $('#relato_cliente_id :selected').text()
  options = $(projetos).filter("optgroup[label='#{cliente}']").html()
  if options 
   $('#relato_projeto_id').html(options)
  else
   $('#relato_projeto_id').empty();

 locals = $('#relato_local_id').html()
 $('#relato_cliente_id').change ->
  clienti = $('#relato_cliente_id :selected').text()
  options = $(locals).filter("optgroup[label='#{clienti}']").html()
  if options 
   $('#relato_local_id').html(options)
  else
   $('#relato_local_id').empty();

 tasks = $('#relato_task_id').html()
 $('#relato_projeto_id').change ->
  projeti = $('#relato_projeto_id :selected').text()
  options = $(tasks).filter("optgroup[label='#{projeti}']").html()
  if options 
   $('#relato_task_id').html(options)
  else
   $('#relato_task_id').empty();




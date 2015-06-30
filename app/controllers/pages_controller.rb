class PagesController < ApplicationController
  include TheSortableTreeController::Rebuild

  def manage
    @pages = Page.nested_set.select('id, title, content, parent_id').all
  end

  # any code here

  def index
  
@tasks = Task.all
@projetos = Projeto.all
@clientes = Cliente.all

def new
    @page = Page.index


  end


end
end


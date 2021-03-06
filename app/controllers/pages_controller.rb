class PagesController < ApplicationController
  include TheSortableTreeController::Rebuild

  def manage
    @pages = Page.nested_set.select('id, title, content, parent_id').all
  end

  # any code here


 def index
@clientes = Cliente.all
end

  def find
  
@tasks = Task.where("projeto_id = ?", projeto.id)
@projetos = Projeto.where("cliente_id = ?", cliente.id)
@clientes = Cliente.all


def pages_params
      params.require(:page).permit(:cliente, :task, :projeto, :user)
    end
end
end


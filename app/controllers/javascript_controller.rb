class JavascriptController < ApplicationController
def dynamic_projetos
@projetos = Projeto.find(:all)
end

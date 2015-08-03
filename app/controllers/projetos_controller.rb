class ProjetosController < ApplicationController
  before_action :set_projeto, only: [:show, :edit, :update, :destroy]

  # GET /projetos
  # GET /projetos.json
  def index
    @projetos = Projeto.all
  end

  # GET /projetos/1
  # GET /projetos/1.json
  def show
@tasks = @projeto.tasks
  end

  # GET /projetos/new
  def new
    @projeto = Projeto.new
     @projetos = Projeto.all
      @conditional = Conditional.new
 @conditionals = Conditional.all


  end

  # GET /projetos/1/edit
  def edit
  @projetos = Projeto.all
  @projeto1 = Projeto.find(params[:id])


  end

  # POST /projetos
  # POST /projetos.json
  def create
    @projeto = Projeto.new(projeto_params)

    respond_to do |format|
      if @projeto.save
        format.html { redirect_to projetopo_path, notice: 'Projeto criado com sucesso! Agora adicione uma Atividade para este projeto!' }
        format.json { render :show, status: :created, location: @projeto }
      else
        format.html { render :new }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /projetos/1
  # PATCH/PUT /projetos/1.json
  def update
    respond_to do |format|
      if @projeto.update(projeto_params)
        format.html { redirect_to projetopo_path, notice: 'Projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeto }
      else
        format.html { render :edit }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projetos/1
  # DELETE /projetos/1.json
  def destroy
    @projeto.destroy
    respond_to do |format|
      format.html { redirect_to projetos_url, notice: 'Projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto
      @projeto = Projeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_params
      params.require(:projeto).permit(:id, :cliente_id, :name, :descr, :typo, :user_id, :dateini, :datefin, :status, :tasks_attributes => [:projeto_id, :raiz, :descr, :tempo, :typo, :id,  :parent_id])
    end

end

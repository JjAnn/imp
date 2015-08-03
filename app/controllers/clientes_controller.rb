class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  @cliente = Cliente.find(params[:id])

  end

  # GET /clientes/new
  def new
<<<<<<< HEAD

 @cliente = Cliente.new
 @clientes = Cliente.all
 @local = Local.new
 @locals = Local.all


=======
 @cliente = Cliente.new
  @cliente.build_local
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
end
  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
<<<<<<< HEAD

 if params[:commit] == 'Cadastrar' 
=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
<<<<<<< HEAD
        format.html { redirect_to clienta_path, notice: 'Cliente cadastrado com sucesso!' }
=======
        format.html { redirect_to loca_path, notice: 'Cliente cadastrado com sucesso! Por gentileza, Adicioar o Local de Atendimento' }
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
<<<<<<< HEAD
 elsif params[:commit] == 'Adicionar'

  @local = Local.new(local_params)

    respond_to do |format|
      if @local.save
        format.html { redirect_to clienta_path, notice: 'Local adicionado com sucesso! Agora adicione um novo Projeto!' }
        format.json { render :show, status: :created, location: @local }
      else
        format.html { render :new }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
end
=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
<<<<<<< HEAD
      params.require(:cliente).permit(:id, :name, :telefone, :celular, :email, :locals_attributes => [:logra, :cep, :uf, :city, :km, :id, :_destroy])
    end

 def local_params
      params.require(:local).permit(:cliente_id, :logra, :cep, :uf, :city, :km)
=======
      params.require(:cliente).permit(:name, :telefone, :celular, :email, :local_attributes => [:logra, :cep, :uf, :city, :km])
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
    end

end

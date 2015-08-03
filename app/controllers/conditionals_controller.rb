class ConditionalsController < ApplicationController
  before_action :set_conditional, only: [:show, :edit, :update, :destroy]

  # GET /conditionals
  # GET /conditionals.json
  def index
    @conditionals = Conditional.all
  end

  # GET /conditionals/1
  # GET /conditionals/1.json
  def show
  end

  # GET /conditionals/new
  def new
    @conditional = Conditional.new
  end

  # GET /conditionals/1/edit
  def edit
  end

  # POST /conditionals
  # POST /conditionals.json
  def create
    @conditional = Conditional.new(conditional_params)

    respond_to do |format|
      if @conditional.save
<<<<<<< HEAD
        format.html { redirect_to projetopo_path, notice: 'Conditional was successfully created.' }
=======
        format.html { redirect_to @conditional, notice: 'Conditional was successfully created.' }
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
        format.json { render :show, status: :created, location: @conditional }
      else
        format.html { render :new }
        format.json { render json: @conditional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conditionals/1
  # PATCH/PUT /conditionals/1.json
  def update
    respond_to do |format|
      if @conditional.update(conditional_params)
        format.html { redirect_to @conditional, notice: 'Conditional was successfully updated.' }
        format.json { render :show, status: :ok, location: @conditional }
      else
        format.html { render :edit }
        format.json { render json: @conditional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conditionals/1
  # DELETE /conditionals/1.json
  def destroy
    @conditional.destroy
    respond_to do |format|
      format.html { redirect_to conditionals_url, notice: 'Conditional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conditional
      @conditional = Conditional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conditional_params
      params.require(:conditional).permit(:transla, :interval, :km, :data, :why, :time, :projeto_id)
    end
end

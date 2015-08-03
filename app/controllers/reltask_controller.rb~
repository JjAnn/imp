class ReltaskController < ApplicationController

 before_action :set_relato, only: [:show, :edit, :update, :destroy]

 def new
    @reltask = Reltask.new
end


  def create
    @reltask = reltask.new(reltask_params)
    respond_to do |format|
      if @reltask.save
        format.html { redirect_to '/reltaskrio', notice: 'reltask was successfully created.' }
        format.json { render :new, status: :created, location: @reltask }
      else
        format.html { render :new }
        format.json { render json: @reltask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reltasks/1
  # PATCH/PUT /reltasks/1.json
  def update
    respond_to do |format|
      if @reltask.update(reltask_params)
        format.html { redirect_to '/reltaskrio', notice: 'Relatório finalizado com sucesso!' }
        format.json { render :new, status: :ok, location: @reltask }
      else
        format.html { render :edit }
        format.json { render json: @reltask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reltasks/1
  # DELETE /reltasks/1.json
  def destroy
    @reltask.destroy
    respond_to do |format|
      format.html { redirect_to reltasks_url, notice: 'reltask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reltask
      @reltask = reltask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reltask_params
      params.require(:reltask).permit(:projeto_id, :reltask_id, :task_id, :tempo, :isdoe, :user_id, :latitude, :longitude, :ip_address, :getlocal)
    end

end

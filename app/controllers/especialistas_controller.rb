class EspecialistasController < ApplicationController
  before_action :set_especialista, only: [:show, :edit, :update, :destroy]

  # GET /especialistas
  # GET /especialistas.json
  def index
    @especialistas = Especialista.all
  end

  # GET /especialistas/1
  # GET /especialistas/1.json
  def show
  end

  # GET /especialistas/new
  def new
    @especialista = Especialista.new
    render layout:false
  end

  # GET /especialistas/1/edit
  def edit
    render layout:false
  end

  # POST /especialistas
  # POST /especialistas.json
  def create
    @especialista = Especialista.new(especialista_params)

    respond_to do |format|
      if @especialista.save
        format.html { redirect_to @especialista, notice: 'Especialista was successfully created.' }
        format.json { render :show, status: :created, location: @especialista }
      else
        format.html { render :new }
        format.json { render json: @especialista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialistas/1
  # PATCH/PUT /especialistas/1.json
  def update
    respond_to do |format|
      if @especialista.update(especialista_params)
        format.html { redirect_to @especialista, notice: 'Especialista was successfully updated.' }
        format.json { render :show, status: :ok, location: @especialista }
      else
        format.html { render :edit }
        format.json { render json: @especialista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialistas/1
  # DELETE /especialistas/1.json
  def destroy
    @especialista.destroy
    respond_to do |format|
      format.html { redirect_to especialistas_url, notice: 'Especialista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialista
      @especialista = Especialista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especialista_params
      params.require(:especialista).permit(:especialidad_id, :cedula, :nombres, :apellidos, :correo, :telefono)
    end
end

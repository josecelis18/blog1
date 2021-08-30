class CommentesController < ApplicationController
  before_action :set_commente, only: %i[ show edit update destroy ]

  # GET /commentes or /commentes.json
  def index
    @commentes = Commente.all
  end

  # GET /commentes/1 or /commentes/1.json
  def show
  end

  # GET /commentes/new
  def new
    @commente = Commente.new
  end

  # GET /commentes/1/edit
  def edit
  end

  # POST /commentes or /commentes.json
  def create
    @commente = Commente.new(commente_params)

    respond_to do |format|
      if @commente.save
        format.html { redirect_to @commente, notice: "Commente was successfully created." }
        format.json { render :show, status: :created, location: @commente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentes/1 or /commentes/1.json
  def update
    respond_to do |format|
      if @commente.update(commente_params)
        format.html { redirect_to @commente, notice: "Commente was successfully updated." }
        format.json { render :show, status: :ok, location: @commente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentes/1 or /commentes/1.json
  def destroy
    @commente.destroy
    respond_to do |format|
      format.html { redirect_to commentes_url, notice: "Commente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commente
      @commente = Commente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commente_params
      params.require(:commente).permit(:post, :body)
    end
end

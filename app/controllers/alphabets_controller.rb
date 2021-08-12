class AlphabetsController < ApplicationController
  before_action :set_alphabet, only: %i[ show edit update destroy ]

  # GET /alphabets or /alphabets.json
  def index
    @alphabets = Alphabet.all
  end

  # GET /alphabets/1 or /alphabets/1.json
  def show
  end

  # GET /alphabets/new
  def new
    @alphabet = Alphabet.new
  end

  # GET /alphabets/1/edit
  def edit
  end

  # POST /alphabets or /alphabets.json
  def create
    @alphabet = Alphabet.new(alphabet_params)

    respond_to do |format|
      if @alphabet.save
        format.html { redirect_to @alphabet, notice: "Alphabet was successfully created." }
        format.json { render :show, status: :created, location: @alphabet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alphabet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alphabets/1 or /alphabets/1.json
  def update
    respond_to do |format|
      if @alphabet.update(alphabet_params)
        format.html { redirect_to @alphabet, notice: "Alphabet was successfully updated." }
        format.json { render :show, status: :ok, location: @alphabet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alphabet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alphabets/1 or /alphabets/1.json
  def destroy
    @alphabet.destroy
    respond_to do |format|
      format.html { redirect_to alphabets_url, notice: "Alphabet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alphabet
      @alphabet = Alphabet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alphabet_params
      params.require(:alphabet).permit(:letter, :keycode, :audio)
    end
end

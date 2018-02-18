class EmailSwapsController < ApplicationController
  before_action :set_email_swap, only: [:show, :edit, :update, :destroy]

  # GET /email_swaps
  # GET /email_swaps.json
  def index
    @email_swaps = EmailSwap.all
  end

  # GET /email_swaps/1
  # GET /email_swaps/1.json
  def show
  end

  # GET /email_swaps/new
  def new
    @email_swap = EmailSwap.new
  end

  # GET /email_swaps/1/edit
  def edit
  end

  # POST /email_swaps
  # POST /email_swaps.json
  def create
    @email_swap = EmailSwap.new(email_swap_params)

    respond_to do |format|
      if @email_swap.save
        format.html { redirect_to @email_swap, notice: 'Email swap was successfully created.' }
        format.json { render :show, status: :created, location: @email_swap }
      else
        format.html { render :new }
        format.json { render json: @email_swap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_swaps/1
  # PATCH/PUT /email_swaps/1.json
  def update
    respond_to do |format|
      if @email_swap.update(email_swap_params)
        format.html { redirect_to @email_swap, notice: 'Email swap was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_swap }
      else
        format.html { render :edit }
        format.json { render json: @email_swap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_swaps/1
  # DELETE /email_swaps/1.json
  def destroy
    @email_swap.destroy
    respond_to do |format|
      format.html { redirect_to email_swaps_url, notice: 'Email swap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_swap
      @email_swap = EmailSwap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_swap_params
      params.require(:email_swap).permit(:name, :folder, :subject, :message)
    end
end

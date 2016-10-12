class DestinationCategoriesController < ApplicationController
  before_action :set_destination_category, only: [:show, :edit, :update, :destroy]

  # GET /destination_categories
  # GET /destination_categories.json
  def index
    @destination_categories = DestinationCategory.all
  end

  # GET /destination_categories/1
  # GET /destination_categories/1.json
  def show
  end

  # GET /destination_categories/new
  def new
    @destination_category = DestinationCategory.new
  end

  # GET /destination_categories/1/edit
  def edit
  end

  # POST /destination_categories
  # POST /destination_categories.json
  def create
    @destination_category = DestinationCategory.new(destination_category_params)

    respond_to do |format|
      if @destination_category.save
        format.html { redirect_to @destination_category, notice: 'Destination category was successfully created.' }
        format.json { render :show, status: :created, location: @destination_category }
      else
        format.html { render :new }
        format.json { render json: @destination_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destination_categories/1
  # PATCH/PUT /destination_categories/1.json
  def update
    respond_to do |format|
      if @destination_category.update(destination_category_params)
        format.html { redirect_to @destination_category, notice: 'Destination category was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination_category }
      else
        format.html { render :edit }
        format.json { render json: @destination_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destination_categories/1
  # DELETE /destination_categories/1.json
  def destroy
    @destination_category.destroy
    respond_to do |format|
      format.html { redirect_to destination_categories_url, notice: 'Destination category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination_category
      @destination_category = DestinationCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_category_params
      params.require(:destination_category).permit(:name)
    end
end

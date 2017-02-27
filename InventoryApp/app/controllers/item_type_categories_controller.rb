class ItemTypeCategoriesController < ApplicationController
  before_action :set_item_type_category, only: [:show, :edit, :update, :destroy]

  # GET /item_type_categories
  # GET /item_type_categories.json
  def index
    @item_type_categories = ItemTypeCategory.all
  end

  # GET /item_type_categories/1
  # GET /item_type_categories/1.json
  def show
  end

  # GET /item_type_categories/new
  def new
    @item_type_category = ItemTypeCategory.new
  end

  # GET /item_type_categories/1/edit
  def edit
  end

  # POST /item_type_categories
  # POST /item_type_categories.json
  def create
    @item_type_category = ItemTypeCategory.new(item_type_category_params)

    respond_to do |format|
      if @item_type_category.save
        format.html { redirect_to @item_type_category, notice: 'Item type category was successfully created.' }
        format.json { render :show, status: :created, location: @item_type_category }
      else
        format.html { render :new }
        format.json { render json: @item_type_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_type_categories/1
  # PATCH/PUT /item_type_categories/1.json
  def update
    respond_to do |format|
      if @item_type_category.update(item_type_category_params)
        format.html { redirect_to @item_type_category, notice: 'Item type category was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_type_category }
      else
        format.html { render :edit }
        format.json { render json: @item_type_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_type_categories/1
  # DELETE /item_type_categories/1.json
  def destroy
    @item_type_category.destroy
    respond_to do |format|
      format.html { redirect_to item_type_categories_url, notice: 'Item type category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_type_category
      @item_type_category = ItemTypeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_type_category_params
      params.require(:item_type_category).permit(:itemtypecategory)
    end
end

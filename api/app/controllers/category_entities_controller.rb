class CategoryEntitiesController < ApplicationController
  # GET /category_entities
  # GET /category_entities.json
  def index
    @category_entities = CategoryEntity.all

    render json: @category_entities
  end

  # GET /category_entities/1
  # GET /category_entities/1.json
  def show
    @category_entity = CategoryEntity.find(params[:id])

    render json: @category_entity
  end

  # GET /category_entities/new
  # GET /category_entities/new.json
  def new
    @category_entity = CategoryEntity.new

    render json: @category_entity
  end

  # POST /category_entities
  # POST /category_entities.json
  def create
    @category_entity = CategoryEntity.new()
    @category_entity.name = params[:name]
    @category_entity.description = params[:description]
    if @category_entity.save
      render json: @category_entity, status: :created, location: @category_entity
    else
      render json: @category_entity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_entities/1
  # PATCH/PUT /category_entities/1.json
  def update
    @category_entity = CategoryEntity.find(params[:id])

    if @category_entity.update_attributes(params[:category_entity])
      head :no_content
    else
      render json: @category_entity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_entities/1
  # DELETE /category_entities/1.json
  def destroy
    @category_entity = CategoryEntity.find(params[:id])
    @category_entity.destroy

    head :no_content
  end
end

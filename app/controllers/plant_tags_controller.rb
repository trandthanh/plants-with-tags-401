class PlantTagsController < ApplicationController

  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    # raise
    @plant = Plant.find(params[:plant_id])
    # @tag = Tag.find(params[:plant_tag][:tag])
    # @plant_tag = PlantTag.new(tag: @tag, plant: @plant)
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      @plant_tag = PlantTag.create(tag: tag, plant: @plant)
      # create = new + save
    end

    # @plant_tag.save
    redirect_to garden_path(@plant.garden)
  end
end

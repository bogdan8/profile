# frozen_string_literal: true

module Users
  class ExperiencesController < BaseController
    before_action :set_experience, only: %i[show edit update destroy]    
    before_action :authenticate_user!

    def index
      @experiences = Experience.order(:position)
    end

    def new
      @experience = Experience.new
    end

    def edit; end

    def create
      @experience = Experience.new(experience_params)
      if @experience.save
        redirect_to %i[users experiences], notice: 'Experience was successfully created'
      else
        render :new
      end
    end

    def update
      if @experience.update(experience_params)
        redirect_to %i[users experiences], notice: 'Attachment was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @experience.destroy
      redirect_to %i[users experiences], notice: 'Attachment was successfully destroyed.'
    end

    def sort
      params[:experience].each_with_index do |id, index|
        Experience.where(id: id).update_all(position: index + 1)
      end
      redirect_to %i[users experiences]
    end

    private

    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:title, :color, :position, works_attributes: %i[id title date color _destroy])
    end
  end
end

# frozen_string_literal: true

module Users
  class AttachmentsController < BaseController
    before_action :set_attachment, only: %i[edit update destroy]
    before_action :authenticate_user!

    def index
      @attachments = Attachment.order(:position)
    end

    def new
      @attachment = Attachment.new
    end

    def edit; end

    def create
      @attachment = Attachment.new(attachment_params)
      if @attachment.save
        redirect_to %i[users attachments], notice: 'Attachment was successfully created.'
      else
        render :new
      end
    end

    def update
      if @attachment.update(attachment_params)
        redirect_to %i[users attachments], notice: 'Attachment was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @attachment.destroy
      redirect_to %i[users attachments], notice: 'Attachment was successfully destroyed.'
    end

    def sort
      params[:attachment].each_with_index do |id, index|
        Attachment.where(id: id).update_all(position: index + 1)
      end
      redirect_to %i[users attachments]
    end

    private

    def set_attachment
      @attachment = Attachment.find(params[:id]).decorate
    end

    def attachment_params
      params.require(:attachment).permit(:image, :video, :extra_small, :small, :medium, :large, :extra_large, :position)
    end
  end
end

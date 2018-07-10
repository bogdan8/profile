module Users
  class AttachmentsController < BaseController
    before_action :set_attachment, only: %i[show edit update destroy]
    before_action :authenticate_user!

    def index
      @attachments = Attachment.all
    end

    def show; end

    def new
      @attachment = Attachment.new
    end

    def edit; end

    def create
      @attachment = Attachment.new(attachment_params)
      if @attachment.save
        redirect_to [:users, @attachment], notice: 'Attachment was successfully created.'
      else
        render :new
      end
    end

    def update
      if @attachment.update(attachment_params)
        redirect_to [:users, @attachment], notice: 'Attachment was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @attachment.destroy
      redirect_to users_attachments_url, notice: 'Attachment was successfully destroyed.'
    end

    private
    
    def set_attachment
      @attachment = Attachment.find(params[:id]).decorate
    end

    def attachment_params
      params.require(:attachment).permit(:image, :video, :small, :medium, :large, :extra_large)
    end
  end
end

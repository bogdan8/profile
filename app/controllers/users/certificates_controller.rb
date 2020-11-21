# frozen_string_literal: true

module Users
  class CertificatesController < BaseController
    before_action :set_certificate, only: %i[edit update destroy]
    before_action :authenticate_user!

    def index
      @certificates = Certificate.includes(image_attachment: :blob)
    end

    def new
      @certificate = Certificate.new
    end

    def edit; end

    def create
      @certificate = Certificate.new(certificate_params)
      if @certificate.save
        redirect_to %i[users certificates], notice: 'Certificate was successfully created'
      else
        render :new
      end
    end

    def update
      if @certificate.update(certificate_params)
        redirect_to %i[users certificates], notice: 'Certificate was successfully updated'
      else
        render :edit
      end
    end

    def destroy
      @certificate.destroy
      redirect_to %i[users certificates], notice: 'Certificate was successfully destroyed'
    end

    private

    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    def certificate_params
      params.require(:certificate).permit \
        :image, :alt, :src, :completed_at
    end
  end
end

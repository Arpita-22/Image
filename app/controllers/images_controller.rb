class ImagesController < ApplicationController

    def index
        @images = Image.all
    end

    def show
        @image = Image.find(params[:id])
        # response = Restclient.get"url"
        # result = JSON.parse
        # render json :result
    end

    def create
        @image = Image.create(image_params)
    end

    def update
        @image = Image.find(params[:id])
        @image.update
    end

    def destroy
        @image = Image.find(params[:id])
        @image.destroy
    end

    private

    def image_params
        params.require(:image).permit(:id,:image_url,:title,:user_id)
    end
end

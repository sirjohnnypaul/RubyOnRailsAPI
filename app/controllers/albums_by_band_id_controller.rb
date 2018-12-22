class AlbumsByBandIdController < ApplicationController

    def index
        @albums = Album.where(band_id: params[:band_id])
        render json: @albums
    end


    private

            def album_params
                params.permit(:bandname,:title,:body,:albumcoverurl)
            end

            
end

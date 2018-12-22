class TracksByAlbumIdController < ApplicationController
    
    def index
        @tracks = Track.where(album_id: params[:album_id])
        render json: @tracks
    end


    private

            def track_params
                params.permit(:album_id)
            end

end

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :members
      resources :tracks
      resources :albums
      resources :bands

      get 'albums_by_band_id/band_id' => 'albums_by_band_id/#index'
      get 'tracks_by_album_id/album_id' => 'tracks_by_album_id/#index'

      resources :albums_by_band_id, param: :band_id
      resources :tracks_by_album_id, param: :album_id

      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
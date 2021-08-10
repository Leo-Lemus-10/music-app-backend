class FavoritesController < ApplicationController
    def create
        favorite = Favorite.create(fav_params)
        render json: favorite
    end

    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def destroy
        favorite = Favorite.find_by(id: params[:id])
        if favorite
            favorite.delete
            render json: {message: "favorite deleted"}
        else
            render json: {error: "not found"}
        end

    end

    private

    def fav_params
        params.permit(:user_id, :artist_id, :img, :artist_name)
    end
end

class ArtistsController < ApplicationController
    def show 
    @artist = Artist.find(params[:id])
    end 

    def new 
        @artist = Artist.new
    end 

    def create 
        @artist = Artist.new(artist_params)
        if @artist.valid?
            @artist.save
            redirect_to new_artist_path
        end 
    end 

    def edit
    @artist = Artist.find(params[:id])
    end 

    def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
    end 


    private 
    def artist_params
    params.require(:artist).permit(:name, :bio)
    end 
    # def find_artist
    #     @artist = Artist.find(params[:id])
    # end 

end

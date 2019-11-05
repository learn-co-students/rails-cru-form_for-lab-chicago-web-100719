class GenresController < ApplicationController
    def index

    end
    
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to @genre
    end

    def show
        find_genre
    end

    def edit
        find_genre
    end

    def update
        @genre = find_genre
        @genre.update(genre_params)
        redirect_to @genre
    end


    private
    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end

end

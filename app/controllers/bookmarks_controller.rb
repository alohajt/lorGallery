class BookmarksController < ApplicationController
    def index
        @bookmarks = Bookmark.all
        render json: @bookmarks
    end

    def show
        @bookmark = Bookmark.find(params[:id])
        render json: @bookmark
    end

    def addToBookmarks
        user = User.find_by(username:params[:currentUsername])
        Bookmark.create(user:user, bookmark_id: params[:imageID])
    end
end

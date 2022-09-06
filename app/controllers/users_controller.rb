class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @books = @user.books
        @new_book = Book.new
    end
end

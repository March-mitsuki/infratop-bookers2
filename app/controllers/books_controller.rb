class BooksController < ApplicationController
    def home
    end

    def about
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        @book.save
        redirect_to user_path(current_user.id)
    end

    def index
        @user = User.find(current_user.id)
        @books = Book.all
    end

    private
        def book_params
            params.require(:book).permit(:title, :body)
        end
end

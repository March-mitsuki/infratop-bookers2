class BooksController < ApplicationController
    def home
    end

    def about
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @book.save
            redirect_to user_path(current_user.id), flash: {success: "create book successfully"}
        else
            @user = User.find(current_user.id)
            @books = Book.all
            render :index
        end
    end

    def show
        @user = User.find(current_user.id)
        @book = Book.find(params[:id])
    end

    def index
        @user = User.find(current_user.id)
        @books = Book.all
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        redirect_to books_path, status: 303
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        redirect_to book_path(params[:id])
    end

    private
        def book_params
            params.require(:book).permit(:title, :body)
        end
end

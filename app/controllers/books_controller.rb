class BooksController < ApplicationController
    def home
    end

    def about
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @book.save
            redirect_to book_path(@book.id), flash: {success: "create book successfully"}
        else
            @new_book = Book.new
            @user = User.find(current_user.id)
            @books = Book.all
            render :index, status: 303
        end
    end

    def show
        @user = User.find(current_user.id)
        @book = Book.find(params[:id])
    end

    def index
        @new_book = Book.new
        @user = User.find(current_user.id)
        @books = Book.all
    end

    def destroy
        @book = Book.find(params[:id])
        if @book.destroy
            redirect_to books_path, status: 303, flash: {success: "destory book successfully"}
        else
            @new_book = Book.new
            @user = User.find(current_user.id)
            @books = Book.all
            render :index, status: 303
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to book_path(params[:id]), flash: {success: "update book successfully"}
        else
            render :edit, status: 303
        end
    end

    private
        def book_params
            params.require(:book).permit(:title, :body)
        end
end

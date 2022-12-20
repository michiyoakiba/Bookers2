class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end
end

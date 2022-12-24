class BooksController < ApplicationController

  def create
    @book_new = Book.new(book_params)
    if @book.save
     redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

   
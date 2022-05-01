class BooksController < ApplicationController
# -------------------------------------以下、new/create(投稿一覧＆新規投稿)
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end
# -------------------------------------以下、show(詳細画面)
  def show
    @book = Book.find(params[:id])
  end
# -------------------------------------以下、edit/update(編集画面＆更新機能)
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end
# -------------------------------------以下、destroy(削除機能)
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to '/books'
  end
# -------------------------------------以下、private
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end

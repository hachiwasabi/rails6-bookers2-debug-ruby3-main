class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_params)
    comment.book_id = book.id
    comment.save
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:book_id])                      
    @book_comment = @book.book_comments.find(params[:id])    

    if @book_comment.user != current_user
      redirect_to book_path(@book), alert: "削除権限がありません" and return
    end

    @book_comment.destroy
    redirect_to book_path(@book), notice: "コメントを削除しました"
  end


  private

  def book_params
    params.require(:book_comment).permit(:comment)
  end

    

end

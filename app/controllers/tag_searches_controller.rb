class TagSearchesController < ApplicationController
  def search
    @model = Book
    @content = params[:content]
    @books = Book.where("category LIKE ?", "%#{@content}%")
    render "tag_searches/tagsearch"
  end
end

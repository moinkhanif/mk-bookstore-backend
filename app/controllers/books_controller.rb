require 'httparty'
class BooksController < ApplicationController
  def create
  end
  def index
    if @current_user
      render json: {
        books: @current_user.books
      }
    else
      render json: {
        status: "Please login to view",
        books: user.books,
        totalBooks: user.books.length
      }
    end
  end
  def show
    if @current_user
      render json: {
        books: @current_user.books[params[:id].to_i]
      }
    else
      render json: {
        status: "Please login to view"
      }
    end
  end
  def suggest
    key = ENV["BOOKS_API_KEY"]
    query = params["query"]
    abc = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=#{query}&key=#{key}")
    render json: {
      "hey": JSON.parse(abc.body)
    }
  end
end

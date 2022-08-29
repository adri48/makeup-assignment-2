class CommentsController < ApplicationController
    def index
      @comments = Comment.all
    end
  
    def new
      @comment = Comment.new
    end
  
    def create
      if @current_user
        @comment = Comment.new
        @comment ["post_id"] = @post_id ["post"]
        @comment["text"] = params["comment"]["text"]
        @comment["user_id"] = @current_user["id"]
        @comment.save
      else
        flash["notice"] = "Login first."
      end
      redirect_to "/posts"
    end
  end
  
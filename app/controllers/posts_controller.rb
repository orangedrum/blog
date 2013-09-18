class PostsController < ApplicationController
	
	def new
	end
	
	def create
		@post = Post.new(params[:post].permit(:title, :text))
		
		@post.save
		redirect_to @post
		
		post GET
	end
		
	private
	  def post_params
		params.require(:post).permit(:title, :text)
	  end
end
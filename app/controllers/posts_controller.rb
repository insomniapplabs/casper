class PostsController < ApplicationController

	def index
		@posts = Post.order('created_at desc')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		if params[:save_as_draft]
			@post.draft = true
			@post.save
			redirect_to root_path
		else params[:publish]
			@post.draft = false
			@post.save
			redirect_to root_path
		end
	end

	def show
		@post = Post.find(params[:id])
		@posts = Post.order('created_at desc')
		respond_to do |format|
			format.html # show.html.erb
			format.js 
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if params[:save_as_draft] 
			@post.draft = true
			@post.update(post_params)
			redirect_to root_path 
		elsif params[:publish] 
			@post.draft = false
			@post.update(post_params)
			redirect_to root_path
		else
			render "edit"
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :tag_list, :pub_date, :image)
	end

end

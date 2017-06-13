class PostsController < ApplicationController
	before_action :set_post, only: [:edit, :update, :show, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@posts=Post.all.order("created_at desc").paginate(page: params[:page], per_page: 3)
	end

	def new
		@post=Post.new
	end

	def create
		@post=Post.new(post_params)
		if @post.save
			redirect_to @post, notice: "article succesfully posted"
		else
			render 'new', notice: "article not posted"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "article succesfully updated"
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :slug)
	end

	def set_post
		@post=Post.friendly.find(params[:id])
	end
end

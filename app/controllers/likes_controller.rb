class LikesController < ApplicationController

	def create
	  @like = Like.new(
		user_id: @current_user.id,
		post_id: params[:post_id]
	  )
	  @like.save
	  @post = Post.find_by(id: params[:post_id])
	  @post.like_count = Like.where(post_id: @post.id).count
	  @post.save
	  redirect_to("/posts/#{params[:post_id]}")
	end

	def destroy
		@like = Like.find_by(
			user_id: @current_user.id,
			post_id: params[:post_id]
		)
		@like.destroy
		redirect_to("/posts/#{params[:post_id]}")
	end

end
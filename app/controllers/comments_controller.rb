class CommentsController < ApplicationController
  # def create
  #   @comment = Comment.new(params[:comment])
  #   @comment.user_id = current_user.id
  #   @comment.save
  # end
	def create
	    @event = Event.find_by_id(params[:event_id])
	    @comment = @event.comments.create(params[:comment])
	    redirect_to event_path(@event)
	end
end

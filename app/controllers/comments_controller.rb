class CommentsController < ApplicationController
 
 def index
 	@event = Event.find(params[:event_id])
 	@comments = @event.comments
 end

 def new
 	@event = Event.find(params[:event_id])
 	@comment.user_id = current_user.id
 	@comment = @event.comments.new
 end

 def create
 	@event = Event.find(params[:event_id])
 	@comment = @event.comments.new(params[:comment])
 	@comment.user_id = current_user.id
 	if @comment.save
 		redirect_to @event, notice: 'Comment created.'
 	else
 		render :new
 	end
 end


end
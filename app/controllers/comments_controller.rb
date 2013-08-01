class CommentsController < ApplicationController
 respond_to :js

 def index
 	@event = Event.find(params[:event_id])
 	@comments = @event.comments
 	respond_to do |format|
 		format.html
 		format.js
 	end
 end

 # def new
 # 	@event = Event.find(params[:event_id])
 # 	@comment.user_id = current_user.id
 # 	@comment = @event.comments.new
 # 	respond_to do |format|
 # 		format.html
 # 		format.js
 # 	end
 # end

 	
 def create
  @event= Event.find(params[:event_id])
  @comments = @event.comments
  @comment = @event.comments.new(params[:comment])
  @comment.user_id = current_user.id
  @comment.save
 # binding.pry
  end


end
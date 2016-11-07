class CommentsController < ApplicationController

before_action :authorise


 def create
 @trip = Trip.find params[:trip_id]
 @comment = @trip.comments.new(comment_params)
 @comment.user_id = @current_user.id #sets the user_id FK
 @comment.save #saves the @comment
#object to the comments table

respond_to do |format|
	format.html { redirect_to @trip }
 end
end

private
def comment_params #This is the method which whitelists the data fields from the form
 params.require(:comment).permit(:content, :trip_id, :user_id, :stars)
end


end

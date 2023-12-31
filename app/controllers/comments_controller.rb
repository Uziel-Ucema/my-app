class CommentsController < ApplicationController
    def create
      @pet_submission = PetSubmission.find(params[:pet_submission_id])
      @comment = @pet_submission.comments.build(comment_params)
  
      if @comment.save
        redirect_to @pet_submission, notice: 'Comment was successfully created.'
      else
        # Handle errors
        render 'pet_submissions/show'
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:body)
    end
end
  
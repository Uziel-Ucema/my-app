# app/controllers/pet_submissions_controller.rb
class PetSubmissionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
  
    def new
      @pet_submission = PetSubmission.new
    end
  
    def create
      @pet_submission = current_user.pet_submissions.build(pet_submission_params)
  
      if @pet_submission.save
        redirect_to pet_submissions_path, notice: 'Pet submission created successfully.'
      else
        render :new
      end
    end
  
    def index
      @pet_submissions = PetSubmission.all
    end

    def show
        @pet_submission = PetSubmission.find(params[:id])
        @comment = Comment.new
    end
      
    def close_case
        @pet_submission = PetSubmission.find(params[:id])
        @pet_submission.update(closed: true)
        redirect_to pet_submission_path(@pet_submission)
    end
  
    private
  
    def pet_submission_params
      params.require(:pet_submission).permit(:title, :body, :image)
    end
  end
  
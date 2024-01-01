class PetSubmissionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :user_submissions]
  
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
      @comments = @pet_submission.comments
    end

    def close
      @pet_submission = PetSubmission.find(params[:id])
  
      # Check if the current user is the owner of the pet submission
      if current_user && @pet_submission.user == current_user
        @pet_submission.update(closed: true)
        redirect_to pet_submissions_path, notice: 'Pet submission closed successfully.'
      else
        redirect_to pet_submissions_path, alert: 'You are not authorized to close this pet submission.'
      end
    end

    def user_submissions
      @open_submissions = current_user.pet_submissions.where(closed: [nil, ''])
      @closed_submissions = current_user.pet_submissions.where(closed: true)
    end
  
    private
  
    def pet_submission_params
      params.require(:pet_submission).permit(:title, :body, :image)
    end
  end
  
class AlertsController < ApplicationController
    before_action :authenticate_user!
    def index
        @folders = Folder.all
    end
        
    def save_changes
        selected_folder_ids = params[:folders]
        current_user.folders = Folder.find(selected_folder_ids)
        # Update the associations based on the selected_folder_ids
    
        # Assuming you have a redirect or render logic
        redirect_to root_path, notice: 'Changes saved successfully!'
    end
end
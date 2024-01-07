class AlertsController < ApplicationController
    before_action :authenticate_user!
    def index
        @folders = Folder.all
    end
        
    def save_changes
        selected_folder_ids = params[:folders]
    
        if selected_folder_ids.present?
          current_user.folders = Folder.find(selected_folder_ids)
          # Update the associations based on the selected_folder_ids
        else
          # Delete all folders_users relations when no folder is selected
          current_user.folders = []  # Clear the associations
          FoldersUser.where(user_id: current_user.id).delete_all
          flash[:notice] = 'All folder-user relations deleted.'
        end
    
        # Assuming you have a redirect or render logic
        redirect_to root_path, notice: 'Changes saved successfully!'
      end
end
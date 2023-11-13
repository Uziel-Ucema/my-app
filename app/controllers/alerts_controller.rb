class AlertsController < ApplicationController
    before_action :authenticate_user!
    def index
        @folders = Folder.all
    end
    
    # Other actions...
    
    def save_changes
        # Handle the logic to save changes here
    end
end
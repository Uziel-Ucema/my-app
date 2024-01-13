module Api
    class AlertsController < ApplicationController
      skip_before_action :verify_authenticity_token
  
      def new_picture
        class_name = params[:class_name]
        frame_path = params[:frame_path]
  
        # Get the folders associated with the class_name
        folders = Folder.includes(:users).where(name: class_name)
  
        # Send email alerts to users subscribed to the folders
        folders.each do |folder|
          folder.users.each do |user|
            AlertMailer.new_picture_alert(user, folder, frame_path).deliver_now
          end
        end
  
        render json: { success: true }
      end
    end
  end
  
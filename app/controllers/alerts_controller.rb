class AlertsController < ApplicationController
  before_action :authenticate_user!

  def index
    @locations = Location.all
    @folders = Folder.all
    @user_subscriptions = current_user.subscriptions.includes(:location, :folder)
  end

  def save_changes
    selected_location_ids = params[:locations]
    selected_folder_ids = params[:folders]

    Subscription.transaction do
      selected_location_ids.each do |location_id|
        selected_folder_ids.each do |folder_id|
          # Find or create a subscription for the user, location, and folder combination
          subscription = current_user.subscriptions.find_or_initialize_by(location_id: location_id, folder_id: folder_id)
          subscription.save
        end
      end
    end

    redirect_to alerts_path, notice: 'Changes saved successfully!'
  end

  def destroy
    subscription = current_user.subscriptions.find(params[:id])
    subscription.destroy

    redirect_to alerts_path, notice: 'Alert deleted successfully!'
  end
end

class AlertMailerPreview < ActionMailer::Preview
    def new_picture_alert
      user = User.first
      folder = Folder.first
      AlertMailer.new_picture_alert(user, folder)
    end
  end
  
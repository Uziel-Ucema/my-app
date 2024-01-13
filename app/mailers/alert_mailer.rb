class AlertMailer < ApplicationMailer
    def new_picture_alert(user, folder, frame_path)
      @user = user
      @folder = folder
      @frame_path = frame_path
      mail(to: @user.email, subject: 'New Picture Alert!')
    end
  end
  
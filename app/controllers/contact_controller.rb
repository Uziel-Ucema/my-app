class ContactController < ApplicationController
    before_action :authenticate_user!
    def new
        @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to root_path, notice: 'Message sent successfully.'
      else
        redirect_to root_path, alert: 'Failed to send message. Please try again'
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:subject, :email, :message)
    end
    
  end
  
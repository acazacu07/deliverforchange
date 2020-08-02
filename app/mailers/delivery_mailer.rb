class DeliveryMailer < ApplicationMailer
    helper :application
    default from: "noreply@deliverforchange.ie"
   
    
  
  def delivery_scheduled
      @delivery = params[:delivery]
      @user = params[:user]
      
      mail(to: @user.email, subject: "Donation Collection Confirmation")
  end
  
  
end

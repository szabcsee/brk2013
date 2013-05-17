class UserMailer < ActionMailer::Base
  default :from => "becske2013course@gmail.com"
 
  def confirmation_email_en(user)
    @user = user
    @url  = "http://www.buddhizmusma.hu/uncategorized/programvaltozas/"
    mail(:to => user.email_address, :subject => "Becske Course 2013 - Confirmation")
  end
  
end

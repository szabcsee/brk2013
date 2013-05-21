class UserMailer < ActionMailer::Base
  default :from => "becske2013course@gmail.com"
  helper ApplicationHelper
 
  def confirmation_email(user)
    @user = user
    @meals = user.meals.all
    @children = user.children.all
    @url  = "http://www.buddhizmusma.hu/uncategorized/programvaltozas/"
    mail(:to => user.email_address, :subject => "Becske Course 2013 - Confirmation")
  end
  
end

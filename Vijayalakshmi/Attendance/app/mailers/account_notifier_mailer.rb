class AccountNotifierMailer < ApplicationMailer

default :from => 'whiteplaast@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(account)
    @account = account
    mail( :to => @account.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end


end

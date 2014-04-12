class UserMailer < ActionMailer::Base
  default from: '"Home Grown" <homegrown.info.us@gmail.com>'

  def welcome_mail(address)
    @url = 'http://homegrown.us/' 
    mail(to: address, subject: 'Welcome to Home Grown!')
  end

end

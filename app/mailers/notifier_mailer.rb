class NotifierMailer < ApplicationMailer
  default from: 'okoders@gmail.com'
  def show_time(tv_show, email)
    @email    = email
    @tv_show  = tv_show
    @channel  = tv_show.channel  
    mail(to: email, subject: "Don't forget today's show").deliver_now
  end
end
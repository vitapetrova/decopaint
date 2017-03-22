class UserMailer < ApplicationMailer
  default from: 'admin@magmaster.by'

  def question(question)
    @question = question
    @url  = 'magmaster.by@gmail.com'
    mail(to: @url, subject: 'question')
  end

  def order(order)
    @order = order
    @url = 'magmaster.by@gmail.com'
    mail(to: @url, subject: 'order')
  end
end


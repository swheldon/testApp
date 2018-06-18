class AdminMailer < Devise::Mailer
    default from: 'scottwheldon@gmail.com'
    layout 'mailer'

    def new_user_waiting_for_approval(email)
      @email = email
      mail(to: 'scottwheldon@gmail.com', subject: 'New User Awaiting Admin Approval')
    end
end
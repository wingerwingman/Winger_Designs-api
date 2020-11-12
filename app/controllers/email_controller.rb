class EmailController < ApplicationMailer

        def contact_email(name, email, message)
          @name = name
          @email = email
          @message = message
          mail(to: "justin@wingerdesigns.com", subject: "Contact from website", reply_to: @email, from: "justin@wingerdesigns.com")
        end

end

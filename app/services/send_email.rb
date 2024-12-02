class SendEmail
    # require 'sendgrid-ruby'
    # include SendGrid
    # require 'erb'
        def initialize(name , email , message)
            @name = name
            @email = email
            @message = message
        end
    
        def sendmail
            from = Email.new(email: 'info@igknighttech.com')
            to = Email.new(email: 'info@igknighttech.com')
            subject = 'Queries from your website:IGKNIGHTECH'
            html_content = File.read('app/views/support_mail_mailer/support_mail.html.erb')
            text_content = File.read('app/views/support_mail_mailer/support_mail.text.erb')
            # Create content objects
            html_content = Content.new(type: 'text/html', value: ERB.new(html_content).result(binding))
            text_content = Content.new(type: 'text/plain', value: ERB.new(text_content).result(binding))
            # Create a Mail object with custom content
            # mail = Mail.new(from, subject, to, text_content)
            mail.add_content(html_content)     
            # sg = SendGrid::API.new(api_key: Figaro.env.SENDGRID_API_KEY)
            response = sg.client.mail._('send').post(request_body: mail.to_json)
            puts response.status_code
            puts response.body
            puts response.headers
        end
    end
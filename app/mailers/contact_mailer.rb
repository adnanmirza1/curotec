class ContactMailer < ApplicationMailer
    def send_contact_email(name, email, phone, website, description)
        @name = name
        @email = email
        @phone = phone
        @website = website
        @description = description

        mail(to: "farhanahmed2297@gmail.com", subject: "New Contact Form Submission")
    end
end

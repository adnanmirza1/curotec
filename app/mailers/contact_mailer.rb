class ContactMailer < ApplicationMailer
    def send_contact_email(name, email, phone, website, description)
        @name = name
        @email = email
        @phone = phone
        @website = website
        @description = description

        mail(to: "info@igknighttech.com", subject: "New Contact Form Submission")
    end
end

class ContactMailer < ApplicationMailer
    def send_contact_email(name, email, phone, website, description)
        @name = name
        @email = email
        @phone = phone
        @website = website
        @description = description

        mail(to: "info@igknighttech.com", subject: "New Contact Form Submission")
    end
    def recruiter_send_email(name, email, mobile, education_details, current_salary, expected_salary, skill_set, job_title, avatar)
        @name = name
        @email = email
        @mobile = mobile
        @education_details = education_details
        @current_salary = current_salary
        @expected_salary = expected_salary
        @skill_set = skill_set
        @job_title = job_title

        # Generate the PDF URL
        @pdf_url = rails_blob_url(avatar, disposition: "attachment")

        mail(to: "info@igknighttech.com", subject: "New Contact Form Submission")
    end
end

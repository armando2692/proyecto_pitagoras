class Datosubscripcioncorreo < ActiveRecord::Base
  has_no_table
  column :email, :string
  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe (cedula,email)

puts "aaaaaaaaaaaaaaa"
puts cedula
puts "corrreo"
puts email

    mailchimp = Gibbon::API.new
    result = mailchimp.lists.subscribe({
              :id => ENV['MAILCHIMP_LIST_ID'], :email => {
                    :email => self.email},
                    :double_optin => false,
                    :update_existing => true,
                    :send_welcome => true
             })

    Rails.logger.info("Subscrito  #{self.email} a MailChimp") if result end
end
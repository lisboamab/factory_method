require_relative 'notification'

class EmailNotification < Notification
  def self.create_notification(message)
    notification = new(message: message, type: 'EmailNotification')
    notification.save
    notification
  end

  def deliver
    "Email sent with message: #{message}"
  end

  def smtp
    
  end
end

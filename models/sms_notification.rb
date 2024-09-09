require_relative 'notification'

class SmsNotification < Notification
  def self.create_notification(message)
    notification = new(message: message, type: 'SmsNotification')
    notification.save
    notification
  end

  def deliver
    "SMS sent with message: #{message}"
  end
end

class PushNotification < Notification
  def self.create_notification(message)
    notification = new(message: message, type: 'PushNotification')
    notification.save
    notification
  end

  def deliver
    "Push notification sent with message: #{message}"
  end
end

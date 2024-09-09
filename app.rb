require 'sinatra'
require_relative 'db/notifications'
require_relative 'models/email_notification'
require_relative 'models/sms_notification'
require_relative 'models/push_notification'

get '/notification/:type' do
  message = params[:message] || "Default message"
  notification_type = params[:type].to_sym

  notification = case notification_type
                 when :email
                   EmailNotification.create_notification(message)
                 when :sms
                   SmsNotification.create_notification(message)
                 when :push
                   PushNotification.create_notification(message)
                 else
                   halt 400, "Unknown notification type: #{notification_type}"
                 end

  notification.deliver
end

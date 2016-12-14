# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ConversationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conversations-#{current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end

  def receive(data)
    # This is the generic fucntion that gets called whenever a "message" command
    # is received

    message_params = data['message'].each_with_object({}) do |el, hash|
      hash[el.values.first] = el.values.last
    end

    # Message.create! message_params
    # Moving to a proper implementation
    MessageBroadcastJob.perform_later message_params
  end

  def speak(data)
    message_params = data['message'].each_with_object({}) do |el, hash|
      hash[el.values.first] = el.values.last
    end

    # Message.create! message_params
    # Moving to a proper implementation
    MessageBroadcastJob.perform_later message_params
  end
end

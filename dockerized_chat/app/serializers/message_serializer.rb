class MessageSerializer < ActiveModel::Serializer
  attributes :body, :user_id, :id, :created_at

  #belongs_to :user_id

  # has_many :notifications, serializer: Api::V1::NotificationSerializer do
  #   object.notifications.all.where(show_status: true)
  # end
  # attribute :conversation do
  #   object.notifications.first.conversation
  # end
end

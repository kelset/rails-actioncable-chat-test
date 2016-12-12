class PagesController < ApplicationController
  def home
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)

    # We’re also including other models under the @conversations query to avoid N+1 queries.
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end
end

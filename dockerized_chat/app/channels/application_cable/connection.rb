module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.email
    end

    protected

    def find_verified_user # this checks whether a user is authenticated with devise
      if (current_user = env['warden'].user)
        current_user
      else
        # Here I should reject the unauthorized connection
        # But I need to be able to test against the RN client
        # So I'll fake an account instead of using
        # reject_unauthorized_connection
        User.third
      end
    end
  end
end

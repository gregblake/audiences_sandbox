class Room < ApplicationRecord
  def audience_context
    ::Audiences::Context.for(self)
  end

  def update_memberships
    Rails.logger.info("UPDATING CONTEXT FOR ROOM")
  end
end

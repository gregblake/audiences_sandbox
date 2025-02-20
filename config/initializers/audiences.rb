# frozen_string_literal: true

Audiences.configure do |config|
  Audiences::Scim.resource(:Users).attributes += [
    "addresses",
    "emails",
    "name",
    "phoneNumbers",
    "title",
    "department",
    "territory",
    "roles",
    "userName",
    "userType",
  ]

  config.exposed_user_attributes = %w[id externalId displayName userName photos]


  config.scim = {
    uri: ENV.fetch("SCIM_URI"),
    headers: { "Authorization" => "Bearer #{ENV.fetch('SCIM_SECRET')}" }
  }

  config.notifications do
    subscribe Room do |audience_context|
      audience_context.owner.update_memberships
    end
  end
end

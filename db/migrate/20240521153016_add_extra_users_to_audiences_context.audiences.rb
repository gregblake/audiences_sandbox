# frozen_string_literal: true

# This migration comes from audiences (originally 20231114210454)
class AddExtraUsersToAudiencesContext < ActiveRecord::Migration[6.0]
  def change
    add_column :audiences_contexts, :extra_users, :json
  end
end

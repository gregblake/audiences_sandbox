# frozen_string_literal: true

# This migration comes from audiences (originally 20231130172718)
class CreateAudiencesMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences_memberships do |t|
      t.references :external_user, null: false, foreign_key: false
      t.references :group, null: false, foreign_key: false, polymorphic: true

      t.timestamps precision: 0
    end
  end
end

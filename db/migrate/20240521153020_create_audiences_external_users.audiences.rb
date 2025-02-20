# frozen_string_literal: true

# This migration comes from audiences (originally 20231130165945)
class CreateAudiencesExternalUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences_external_users do |t|
      t.string :user_id, null: false
      t.json :data

      t.timestamps precision: 0
      t.index :user_id, unique: true
    end
  end
end

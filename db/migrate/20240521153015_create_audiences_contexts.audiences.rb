# frozen_string_literal: true

# This migration comes from audiences (originally 20230725194934)
class CreateAudiencesContexts < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences_contexts do |t|
      t.references :owner, polymorphic: true, null: false, index: { unique: true }
      t.boolean :match_all, default: false, null: false
      t.json :criteria

      t.timestamps precision: 0
    end
  end
end

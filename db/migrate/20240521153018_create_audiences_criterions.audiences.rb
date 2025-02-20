# frozen_string_literal: true

# This migration comes from audiences (originally 20231114215843)
class CreateAudiencesCriterions < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences_criterions do |t|
      t.json :groups
      t.references :context, null: false, foreign_key: false

      t.timestamps precision: 0
    end
  end
end

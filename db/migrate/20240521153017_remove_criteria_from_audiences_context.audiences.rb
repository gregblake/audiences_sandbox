# frozen_string_literal: true

# This migration comes from audiences (originally 20231114210633)
class RemoveCriteriaFromAudiencesContext < ActiveRecord::Migration[6.0]
  def change
    remove_column :audiences_contexts, :criteria, :json
  end
end

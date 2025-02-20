class AddRelationToAudiencesContexts < ActiveRecord::Migration[8.0]
  def change
    add_column :audiences_contexts, :relation, :string
  end
end

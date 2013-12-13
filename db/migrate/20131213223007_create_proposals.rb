class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :uuid

      # Identification
      t.string :name
      t.string :title
      t.string :organization
      t.text :bio
      t.string :residence

      # Contact
      t.string :email
      t.string :github_handler
      t.string :twitter_handler

      # Talk
      t.string :talk_title
      t.text :talk_description
      t.boolean :needs_travel_assistance
      t.text :notes

      t.timestamps
    end
  end
end

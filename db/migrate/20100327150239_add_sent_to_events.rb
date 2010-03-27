class AddSentToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :sent, :datetime
  end

  def self.down
    remove_column :events, :sent
  end
end

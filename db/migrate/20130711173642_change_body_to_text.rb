class ChangeBodyToText < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :posts do |p|
        dir.up { p.change :body, :text }
        dir.down { p.change :body, :string }
      end
    end
  end
end

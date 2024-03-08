# frozen_string_literal: true

class BemiMigration < ActiveRecord::Migration[7.2]
  def up
    execute(Bemi.migrate)
  end

  def down
    execute(Bemi.rollback)
  end
end

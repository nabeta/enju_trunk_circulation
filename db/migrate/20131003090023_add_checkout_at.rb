class AddCheckoutAt < ActiveRecord::Migration
  def up
    add_column :checked_items, :checked_at, :date
    add_column :checkouts, :checked_at, :date
  end

  def down
    remove_column :checked_items, :checked_at
    remove_column :checkouts, :checked_at
  end
end

class AddIntegertoContactGroup < ActiveRecord::Migration[6.0]
  def change
    remove_column :contact_groups, :contact_id, :integer
    change_column :contact_groups, :group_id, :integer
  end
end

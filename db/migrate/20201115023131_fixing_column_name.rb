class FixingColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :discription, :description
  end
end

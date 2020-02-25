class ChangePortionsToString < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :portions, :integer
    add_column :items, :portions, :string
  end
end

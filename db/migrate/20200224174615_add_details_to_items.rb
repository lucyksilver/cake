class AddDetailsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :cost, :float
    add_column :items, :flavour, :string
    add_column :items, :portions, :integer
    add_column :items, :occasion, :string
    add_column :items, :description, :text
  end
end

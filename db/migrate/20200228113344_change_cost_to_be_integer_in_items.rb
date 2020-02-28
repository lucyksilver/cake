class ChangeCostToBeIntegerInItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :cost, :integer
  end
end

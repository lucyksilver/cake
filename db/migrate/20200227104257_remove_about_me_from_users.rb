class RemoveAboutMeFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :about_me, :string
  end
end

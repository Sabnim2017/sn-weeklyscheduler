class AddUserToScheduler < ActiveRecord::Migration
  def change
    add_reference :schedulers, :user, index: true, foreign_key: true
  end
end

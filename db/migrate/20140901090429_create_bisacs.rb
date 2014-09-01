class CreateBisacs < ActiveRecord::Migration
  def change
    create_table :bisacs do |t|

      t.timestamps
    end
  end
end

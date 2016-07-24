class CreateParams < ActiveRecord::Migration[5.0]
  def change
    create_table :params do |t|

      t.timestamps
    end
  end
end

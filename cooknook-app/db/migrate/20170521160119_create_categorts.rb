class CreateCategorts < ActiveRecord::Migration[5.0]
  def change
    create_table :categorts do |t|
      t.string :name

      t.timestamps
    end
  end
end

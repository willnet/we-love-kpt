class CreateKpts < ActiveRecord::Migration
  def change
    create_table :kpts do |t|
      t.references :project, index: true
      t.string :name, null: false
      t.timestamps
    end
  end
end

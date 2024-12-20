class CreateCaluculators < ActiveRecord::Migration[7.2]
  def change
    create_table :caluculators do |t|
      t.timestamps
    end
  end
end

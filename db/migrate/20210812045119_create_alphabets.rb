class CreateAlphabets < ActiveRecord::Migration[6.1]
  def change
    create_table :alphabets do |t|
      t.string :letter
      t.string :keycode
      t.string :audio

      t.timestamps
    end
  end
end

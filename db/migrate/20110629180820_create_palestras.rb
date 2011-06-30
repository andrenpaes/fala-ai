class CreatePalestras < ActiveRecord::Migration
  def self.up
    create_table :palestras do |t|
      t.string :palestrante
      t.date :data
      t.time :horario

      t.timestamps
    end

    create_table :ratings do |t|
      t.integer :rate
      t.string :identificacao
      t.string :comentario
      t.belongs_to :palestra
      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
    drop_table :palestras
  end
end

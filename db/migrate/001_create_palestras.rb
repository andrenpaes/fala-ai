class CreatePalestras < ActiveRecord::Migration
  def self.up
    create_table :palestras do |t|
      t.string :nome
      t.string :palestrante
      t.date :data
      t.time :horario

      t.timestamps
    end

    create_table :avaliadors do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end

    create_table :avaliacaos do |t|
      t.integer :valor
      t.string :comentario
      t.belongs_to :palestra
      t.belongs_to :avaliador
      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
    drop_table :palestras
  end
end

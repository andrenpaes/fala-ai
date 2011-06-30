class CreatePalestras < ActiveRecord::Migration
  def self.up
    create_table :palestras do |t|
      t.string :nome, :null => false
      t.string :palestrante, :null => false
      t.date :data, :null => false
      t.time :horario, :null => false

      t.timestamps
    end

    create_table :avaliadors do |t|
      t.string :nome, :null => false
      t.string :email, :null => false

      t.timestamps
    end

    create_table :avaliacaos do |t|
      t.integer :valor, :null => false
      t.string :comentario
      t.belongs_to :palestra, :null => false
      t.belongs_to :avaliador
      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
    drop_table :palestras
  end
end

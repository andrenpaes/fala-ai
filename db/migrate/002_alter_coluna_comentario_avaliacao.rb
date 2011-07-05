class AlterColunaComentarioAvaliacao < ActiveRecord::Migration
  def self.up
    change_column(:avaliacaos, :comentario, :text)
  end
end
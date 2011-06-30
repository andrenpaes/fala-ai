class Avaliacao < ActiveRecord::Base
  belongs_to :palestra
  belongs_to :avaliador
end

require 'dragonfly'
class Documento < ActiveRecord::Base
	
	dragonfly_accessor :archivo

def self.search(search)
  if search
    where('nombre LIKE ?', "%#{search}%")
  else
    all
  end
end
end

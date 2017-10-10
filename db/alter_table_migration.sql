require 'pry'

ALTER TABLE pokemon
ADD hp INTEGER;

binding.pry

UPDATE pokemon
SET hp = 60 WHERE hp = NULL;

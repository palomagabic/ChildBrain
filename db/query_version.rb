#!/usr/bin/ruby

require 'pg'

begin

    con = PG.connect :dbname => 'childbrain_development', :user => 'pollito'

    institucion = con.exec 'SELECT name FROM Instituciones'


rescue PG::Error => e

    puts e.message

ensure

    con.close if con

end

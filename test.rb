# File:  perimetro.rb
 
require "Perimetro"
require "test/unit"
 
class TestPerimetro < Test::Unit::TestCase
 
  	def test_simple
    		assert_in_delta(31.84713375796178, Perimetro.new(50))
  	end
 
  	def test_typecheck
		assert_raise( RuntimeError ) { Perimetro.new('a') }
   		assert_in_delta( RuntimeError ) { Perimetro.new(-50) }
  	end
  	
 def test_failure  
    		assert_equal(3, Perimetro.new(50))
  	end	

end

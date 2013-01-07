require 'rspec'

require_relative '../../lib/ruby_interpreter'

b1 = ->() do 
  class Top ; end
  class Bottom < Top ; end
  return Bottom
end

b2 = ->() do
  class Top ; end
  return Top
end

c1 = ->() do
  class Unclassified ; end
  class Secret < Unclassified ; end
  class TopSecret < Secret ; end
  class Magenta < TopSecret ; end
  class Vermillion < TopSecret ; end
end

c2 = ->() do

end

describe RubyInterpreter do 

	context 'simple ontologies' do

		it 'should take two ontologies described in ruby and create a single, unified ontology' do
	    	unified = RubyInterpreter.new(b1, b2).unify
	    	unified.size.should eq 1
	    	unified[0].to_s.should eq 'Top'
		end

    it 'should take the same ontology and return an identical structure' do
        unified = RubyInterpreter.new(b1, b1).unify
        unified.size.should eq 2
        unified[0].to_s.should eq 'Top'
        unified[1].to_s.should eq 'Bottom'
    end

	end

  context 'non-trivial ontologies' do

    it 'should return the intersection of two distinct ontologies'
    it 'should return the intersection of the same ontology'

  end

end 
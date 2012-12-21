require 'rspec'

require_relative '../../lib/ruby_interpreter'

b_1 = Proc.new do 
  class Top ; end
  class Bottom < Top ; end
end

b_2 = Proc.new do
  class Top ; end
end

describe RubyInterpreter do 
	it 'should take two ontologies describe in ruby and create a single, unified ontology' do
    RubyInterpreter.new b_1, b_2
	end
end 
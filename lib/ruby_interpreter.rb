require 'set'

class RubyInterpreter

	def initialize ontology_1, ontology_2
    raise ArgumentError if ontology_1 == nil || ontology_2 == nil
    @factory_1, @factory_2 = ontology_1, ontology_2
	end

	def unify
    h1 = ontology_hierarchy @factory_1.call
    h2 = ontology_hierarchy @factory_2.call
    (h2 & h1).to_a
	end

  def ontology_hierarchy obj
    ((obj != nil && obj.superclass.to_s != 'Object') ? ontology_hierarchy(obj.superclass) : Set.new) << obj
  end

end
class Rectifier

	def initialize args
    @interpreter = args[:interpreter]
    @engine = args[:engine]
	end

  def rectify content
    rectified_policy = @interpreter.rectified_policy 
    
  end

end

def create_ruby_rectifier o1, o2
  Rectifier.new \
    :interpreter => RubyInterpreter.new(o1, o2), 
    :engine => StructureEngine.new
end
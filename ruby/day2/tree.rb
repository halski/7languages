class Tree
	attr_accessor :children, :node_name

	def initialize(hash)	
		@node_name = hash.keys[0]
		@children = []
	       	hash[@node_name].each do |key, value|
			children.push(Tree.new(key=>value))
		end
	end

	def visit_all(&block)
		visit &block
		children.each{ |child| child.visit_all &block }
	end

	def visit(&block)
		block.call self
	end
end

tree = Tree.new({ 'Vater' => {'KinderEinz'=>{}, 'KinderZwei'=>{}}})
tree.visit_all{|x| puts x.node_name}

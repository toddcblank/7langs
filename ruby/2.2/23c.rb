class Tree 
	attr_accessor :children, :node_name

	def initialize(tree={}) 
		@children = [] 
		@node_name = tree.keys[0] 

		if(tree.size() == 1)
			tree[@node_name].each { |key, value|
				@children.push(
					Tree.new({key => value})
				)
			}
		else
			tree.each{|key, value|
				@children.push(
					Tree.new( {key => value } )
				)
			}
		end

		
	end

	def visit_all(&block) 
		visit &block 
		children.each {|c| c.visit_all &block} 
	end

	def visit(&block) 
		block.call self 
	end 

end


t = Tree.new({'gp' => {'d' => {'c1' => {}, 'c2' => {}}, 'u' => {'c3' => {}, 'c4' => {}}}})

puts "Visiting a node"

t.visit {|node| puts node.node_name}
puts

t.visit_all {|node| puts node.node_name}

#flattening the tree turns out to be a little uglier than I expected
#and no longer necessary if only traversing the tree once
#might rewrite with the tree as a list of lists

def elems_in_level(index)
	return (Math.sqrt(2*(index+1)-1)-0.5).to_i + 1
end

def right_child( tree, index )
	child_index = index + elems_in_level(index) + 1
	return ( child_index < tree.count ? tree[child_index] : 0 )
end
	
def left_child( tree, index )
	child_index = index + elems_in_level(index)
	return ( child_index < tree.count ? tree[child_index] : 0 )
end

tree = []

File.open("prob018.txt"){ |f|
	f.each{ |line|
		tree.concat(line.strip().split(" ").map(&:to_i))
	}
}

p tree

index = tree.count - 1
while index >= 0 do
	tree[index] = tree[index] + [right_child( tree, index ), left_child( tree, index )].max
	index -= 1
end

p tree


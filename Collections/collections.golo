module org.k33g.collections

# wip ...

struct tmp = { value }

augment java.util.LinkedList {
	
	function sum = |this| {		
		let sum = tmp(0)
		this: each(|item| -> sum: value(sum: value() + item))
		return sum:value()
	}

	function product = |this| {		
		let product = tmp(1)
		this: each(|item| -> product: value(product: value() * item))
		return product:value()
	} 		
}

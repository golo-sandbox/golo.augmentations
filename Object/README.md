#Object augmentations

##Ternary conditions

- Library : `object.ternary.golo`
- Be careful : nested try/catch aren't probably a best practice
- Be careful : use it only with `String` and `Number`
- Try it : `golo golo --files object.ternary.golo sample.object.ternary.golo`

###Explanations

This augmentation "pimps" `Object` with 6 methods :

- `isEqualTo(value_to_compare, if_true, if_false)`
- `isntEqualTo(value_to_compare, if_true, if_false)`
- `isGreaterThan(value_to_compare, if_true, if_false)`
- `isGreaterOrEqualTo(value_to_compare, if_true, if_false)`
- `isLessThan(value_to_compare, if_true, if_false)`
- `isLessOrEqualTo(value_to_compare, if_true, if_false)`

and `if_true` or `if_false` could be anything (string, number, boolean, lambda, lambda with one or two parameters(*))

(*): in case of parameters : first parameter is the tested value and the second is the compared value :

```coffeescript
10:isGreaterThan(5
	, |tested, compared| -> println(tested + " is greater than " + compared)
	, |tested, compared| -> println(tested + " is less than " + compared)
)

let ten = 10:isGreaterThan(5
	, |tested| {
			println("Tested value = " + tested)
			return true
	  }
	, false
)

let tenAgain = 10

println(tenAgain:isEqualTo(10,true,false) is tenAgain:isEqualTo(10,->true,->false))
```

**sample :**

```coffeescript
module sample

import org.k33g.object.ternary

function main = |args| {

  println(5:isEqualTo(5
    ,|value|{ println("this is the value : "+value)}
    ,->false))

  let a = 34
  let v = a: isEqualTo(12
    ,|v, c|{
      println(v+" Equals "+c)
      return true
    }
    ,|v, c|{
      println(v+" Not Equals "+c)
      return false
    })

  println("v is " + v)

  let myString = "hello world!!!": isEqualTo("hello world!!!"
    ,|myString, b|-> println("you win : " + myString + " == " + b)
    ,|myString, b|-> println("FAILED! : " + myString + " != " + b)
  )

  #return n === 0 ? 1 : n * f(n-1);
  let fact = |n| -> n: isEqualTo(0
    ,|v, something|->1
    ,|v, something|-> v * fact(v - 1)
  )

  println(fact(10))

  println("hi": isntEqualTo("bob","that's true", "that's false"))

}
```






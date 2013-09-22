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

module org.k33g.iterable.augmentations

augment java.lang.Iterable  {

  function sum = |this| {
    let start = {
      case {
        when this: get(0) oftype java.lang.Number.class { return 0 }
        otherwise { 
          return "" 
        }
      }   
    }
    return this: reduce(start(), |initial, next| -> initial + next) 
  }

  function product = |this| {
    return this: reduce(1, |initial, next| -> initial * next) 
  }  
}
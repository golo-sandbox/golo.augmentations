module org.k33g.map.augmentations

augment java.util.Map  {

  function sum = |this| {
    let start = |what| {
      case {
        when what oftype java.lang.Number.class { return 0 }
        otherwise {
          return ""
        }
      }   
    }

    foreach (entry in this: entrySet()) {
      return this: reduce(start(entry: getValue()), |initial, key, value| -> initial + value) 
      break
    }
  }

  function product = |this| {
    return this: reduce(1, |initial, key, value| -> initial * value) 
  }

}
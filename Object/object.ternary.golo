module org.k33g.object.ternary

augment java.lang.Object {
  function isEqualTo = |this, value, return_value, else_return_value|{
    if this is value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }
  function isntEqualTo = |this, value, return_value, else_return_value|{
    if this isnt value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }
  function isGreaterThan = |this, value, return_value, else_return_value|{
    if this > value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }
  function isGreaterOrEqualTo = |this, value, return_value, else_return_value|{
    if this >= value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }
  function isLessThan = |this, value, return_value, else_return_value|{
    if this < value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }
  function isLessOrEqualTo = |this, value, return_value, else_return_value|{
    if this <= value {
      try { 
        return return_value(this, value) 
      } catch(e) { 
        try { 
          return return_value(this) 
        } catch(e) { 
          try { return return_value() } finally { return return_value }
        } 
      }
    } else {
      try { 
        return else_return_value(this, value) 
      } catch(e) { 
        try { 
          return else_return_value(this) 
        } catch(e) { 
          try { return else_return_value() } finally { return else_return_value }
        } 
      }
    }
  }  
}


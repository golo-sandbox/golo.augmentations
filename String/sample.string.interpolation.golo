module sample

import org.k33g.string.interpolation

# sample
function main = |args| {
  let humans = list[
      DynamicObject():id("001"):firstName("Bob"):lastName("Morane")
    , DynamicObject():id("002"):firstName("John"):lastName("Doe")
    , DynamicObject():id("003"):firstName("Jane"):lastName("Doe")
  ]

  println("""
      <b>Humans List</b>
      <hr>
      <% foreach human in humans { %>
        <p>
          <%= human:firstName() %> <%= human:lastName() %> <%= human:id() %>
        </p>
      <% } %>
  """:fitin("humans", humans))           
}

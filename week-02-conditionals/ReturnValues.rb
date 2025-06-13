# Define a method named make_greeting with parameters salutation and name
def make_greeting(salutation, name)
    # Convert salutation and name to uppercase
    salutation = salutation.upcase
    name = name.upcase
    
    # Return a greeting string using string interpolation
    return "#{salutation}, #{name}!"
end
  
  # Call make_greeting method with arguments "Hello".upcase and "Bob".upcase
  puts make_greeting("Hello".upcase, "Bob".upcase)
  
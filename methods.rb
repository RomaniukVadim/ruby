def hello_word(family_name = '',first_name = '')
  greeting = "hello word\n"
  if family_name !='' && first_name != ''
  greeting += 'my name is ' + first_name + ' ' + family_name
end
greeting
end

puts hello_word
puts hello_word('Malborn','John' )
hello_word('Bond','James')

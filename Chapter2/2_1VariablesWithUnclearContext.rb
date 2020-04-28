verb = '';
pluralModifier = '';
count = 4
if count == 0
    verb = 'are';
    pluralModifier = 's';
elsif count == 1
    verb = 'is';
    pluralModifier = '';
else 
    verb = 'are';
    pluralModifier = 's';
end
guessMessage = "There #{verb} #{count} #{pluralModifier}"
puts guessMessage;

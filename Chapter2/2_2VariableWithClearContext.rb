# In order to run the make function from command line do:
# ruby -r "./2_2VariableWithClearContext.rb" -e "GuessStatisticsMessage.make 'd','3'"

class GuessStatisticsMessage
$number = '';
$verb = '';
$pluralModifier = '';

def self.make(inputedCharacter, count)
createPluralDependentMessageParts(count);
puts "There #{$verb} #{$number} #{inputedCharacter} #{$pluralModifier}"
end

def self.createPluralDependentMessageParts(count)
    if count == 0
        thereAreNoLetters();
    elsif count == 1
        thereIsOneLetter();
    else
        thereAreManyLetters(count);
    end
end

def self.thereAreManyLetters(count)
    $number = count.to_s;
    $verb = "are";
    $pluralModifier = "s";
end

def self.thereIsOneLetter()
    $number = "1";
    $verb = "is";
    $pluralModifier = "";
end

def self.thereAreNoLetters()
    $number = "no";
    $verb = "are";
    $pluralModifier = "s";
end

endGuessStatisticsMessage
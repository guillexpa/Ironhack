require 'pry'

class Lexiconomitron

  def eat_t(sentence)
    # sentence.split("").delete_if{|x| x == "T" || x == "t"}.join
    sentence.gsub(/[Tt]/, '')
  end

  def shazam(sentence_array)
    sentence_array.each {|x| x.reverse!}
    return [sentence_array[0],sentence_array[sentence_array.length-1]]
  end

  def oompa_loompa(sentence_array)
    sentence_array.select!{|word| word.size <= 3}.sort_by{|word| word.size}.reverse!
  end
end

puts Lexiconomitron.new.eat_t("Mata la teta")
puts Lexiconomitron.new.shazam(["Hay","una","serpiente","en","mi","bota"])
puts Lexiconomitron.new.oompa_loompa(["Hay","una","serpiente","en","mi","bota"])

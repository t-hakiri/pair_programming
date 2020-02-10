class ShiritoriGame
  attr_accessor :player_name
  # attr_accessor :histories
  def self.rule
    rule_text = ''
    rule_text << "すべてカタカナで入力してください\n"
    rule_text << "最後に 'ン' がついたら負けです\n"
    rule_text << "同じ単語を使ったら負けです\n"
    rule_text
  end

  def self.all_words
    siritori =["リンゴ", "ゴリラ", "ラッパ", "パリ"]
    p siritori
  end

  def initialize(name)
    @player_name = name
    @histories = []
  end

  def start
    aisatu = "\\_o< Hi, #{@player_name[:player_name]}. Let's enjoy shiritori game\n"
  end

  def histories
    @histories
  end

  def histories=(value)
    @histories << value
  end  

  def computer_attack
    if @histories.last == 'リンゴ'
      @histories = 'ゴリラ'
    elsif @histories.last == 'ゴリラ'
      @histories = 'ラッパ'
    elsif @histories.last == 'ラッパ'
      @histories = 'パリ'
    elsif @histories.last == 'パリ'
      @histories = 'リンゴ'
    else
      @histories = nil
    end
    @histories
  end

  def validate_shiritori_rule(word)
    if word != nil
      last = word.chars.last
      if last != 'ん' || last != 'ン'
        if @histories.last.chars.last == word.chars.first && @histories.find { |n| n != word }
          @histories << word
          true
        else 
          false
        end
      else
        false
      end
    else
      false
    end
  end


#   def validate_shiritori_rule(word)
#     unless word == nil 
#       last = word.chars.last
#     end

#     if word == nil
#       false
#     elsif last =! 'ん' || last != 'ン' 
#       if @histories.last.chars.last == word.chars.first && @histories.find { |n| n != word }
#         true
#       elsif
#         false
#       end       
#     else
#       false
#     end
#   end
end

require './shiritori_game'
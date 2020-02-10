class ShiritoriGame
  attr_accessor :player_name
  attr_accessor :historiy
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
  end

  def start
    aisatu = "\\_o< Hi, #{@player_name[:player_name]}. Let's enjoy shiritori game\n"
  end

  def histories
    @historiy = []
  end

  def computer_attack
    if @historiy.last == 'リンゴ'
      @historiy = 'ゴリラ'
    elsif @historiy.last == 'ゴリラ'
      @historiy = 'ラッパ'
    elsif @historiy.last == 'ラッパ'
      @historiy = 'パリ'
    elsif @historiy.last == 'パリ'
      @historiy = 'リンゴ'
    else
      @historiy = nil
    end
    @historiy
  end
end

require './shiritori_game'
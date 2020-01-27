class ShiritoriGame
  attr_accessor :player_name
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

end
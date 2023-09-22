

# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（勝率）
  def calc_win_rate(win, lose)
    # return win / (win + lose)
    return win.to_f / (win + lose)
  end
  
  # インスタンスが持つメソッド（チームの成績）
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate(self.win, self.lose)}です。"
  end
end

# インスタンスの生成と、変数への代入
team1 = Team.new('Giants', 67, 45, 8)
team2 = Team.new('Tigers', 60, 53, 7)
team3 = Team.new('Dragons', 60, 55, 5)
team4 = Team.new('BayStars', 56, 58, 6)
team5 = Team.new('Carp', 52, 56, 12)
team6 = Team.new('Swallows', 41, 69, 10)

# インスタンスの使用
team1.show_team_result
team2.show_team_result
team3.show_team_result
team4.show_team_result
team5.show_team_result
team6.show_team_result



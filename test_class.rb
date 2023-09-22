
=begin

# クラス定義の雛形
# クラス定義
class Sample

  # インスタンスが持つ変数（値）
  attr_accessor :value1, :value2, :value3

  # インスタンスを初期化するための、特別なメソッド
  def initialize
    self.value1 = 'こんにちは'
    self.value2 = 123
    self.value3 = true
  end

  # インスタンスが持つメソッド（処理）
  def test(name)
    puts "#{self.value1}、#{name}さん！"
  end
end

# インスタンスの生成と、変数への代入
sample1 = Sample.new

# インスタンスの使用
sample1.test("太郎")

=end


# クラスの定義とインスタンス生成
class Slime
  # オブジェクトの変数
  # attr_accessor を用いることで、外部から直接インスタンス変数にアクセスすることが可能になる。
  attr_accessor :type, :hp, :power, :suffix
  
  # ↓イコール
=begin
   def type
     @type
   end
   
   def type=(val)
    @type = val
   end
=end
  
  def initialize(suffix)
    self.type = 'スライム'
    self.hp = 10
    self.power = 3
    self.suffix = suffix
  end
  
  # スライム個体の名前は、 'スライムA' など 'スライム' + 'A' (suffix) とする
  def name
    self.type + self.suffix
  end
  
  # self は 変数やメソッドを呼び出されたインスタンス自身（slime_A 等）を指す 。
  def attack(character_name)
    puts "#{self.name}が#{character_name}を攻撃して#{self.power}ポイントのダメージを与えた！"
  end
end

# インスタンス生成
slime_A = Slime.new("A")

slime_A.attack('主人公')

puts slime_A
# p slime_A

  


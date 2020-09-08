class Motorcycle < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 } 
  validates :displacement, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 50, less_than_or_equal_to: 2500 }
  validates :car_type, presence: true, inclusion:{ in: %w(ネイキッド アメリカン スーパースポーツ オフロード アドベンチャー ツアラー ビックスクーター 原付)} 
end

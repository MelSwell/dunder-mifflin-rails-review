class Dog < ApplicationRecord
  has_many :employees

  def self.sort
    Dog.all.sort do |dog_a, dog_b|
      dog_b.employees.count <=> dog_a.employees.count
    end
  end
end

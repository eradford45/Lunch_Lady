require 'pry'
require_relative 'wallet'
require_relative 'dish'
require_relative 'sdish'
dish1 = Dish.new('beef', 3)
dish2 = Dish.new('chicken', 3)
dish3 = Dish.new('lamb', 4)
dish4 = Dish.new('pork', 2)
sdish1 = Sdish.new('Carrots', 1)
sdish2 = Sdish.new('Peas', 1)
sdish3 = Sdish.new('Apple Sauce', 1)
sdish4 = Sdish.new('Cheese Curds', 1)
sdish5 = Sdish.new('Mayo', 1)
sdish6 = Sdish.new('Just cover it in gravy', 1)
tray = {}
@user1 = Wallet.new

def menu(dish1, dish2, dish3, dish4, tray, sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
  tray = {}
  p 'Here are your options today'
  p "1)#{dish1.name} #{dish1.price}"
  p "2)#{dish2.name} #{dish2.price}"
  p "3)#{dish3.name} #{dish3.price}"
  p "4)#{dish4.name} #{dish4.price}"
  user_input = gets.strip.to_i
  case user_input
  when 1       
    tray[dish1.name] = dish1.price
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 2
    tray[dish2.name] = dish2.price
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 3
    tray[dish3.name] = dish3.price
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 4
    tray[dish4.name] = dish4.price
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  else
    p 'Bad Input'
    menu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
    
  end
end

def smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
    
  p 'Here are your options today'
  p "1)#{sdish1.name} #{sdish1.price}"
  p "2)#{sdish2.name} #{sdish2.price}"
  p "3)#{sdish3.name} #{sdish3.price}"
  p "4)#{sdish4.name} #{sdish4.price}"
  p "5)#{sdish5.name} #{sdish5.price}"
  p "6)#{sdish6.name} #{sdish6.price}"
  user_input = gets.strip.to_i
  case user_input
  when 1
    tray[sdish1.name] = sdish1.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 2
    tray[sdish2.name] = sdish2.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 3
    tray[sdish3.name] = sdish3.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 4
    tray[sdish4.name] = sdish4.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 5
    tray[sdish5.name] = sdish5.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 6
    tray[sdish6.name] = sdish6.price
    another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6
        )
    
  else
    p 'Bad input'
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  end
end


def another(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  p 'Would you like to select another side?'
  p '1) For yes'
  p '2) To continue to checkout'
  user_input = gets.strip.to_i
  case user_input
  when 1
    smenu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  when 2
    checkout(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  end
end


def checkout(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  price_total = []
  sum = 0
  p 'You bought'
  p '----------'
tray.each do |key, value|
  puts "#{key}:#{value}"
  end
price_total = tray.values
total = 0
price_total = price_total.map(&:to_i)
  p "-----------"
  p "  Total: $#{price_total.inject {|sum, i|  sum + i }}"
  @user1.money = (@user1.money) - price_total.inject {|sum, i|  sum + i }
  p "That will leave you with $#{@user1.money}"
  menu3(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
end


def menu3(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
  p '1) To go again'
  p '2) To exit'
  user_input = gets.strip.to_i
  case user_input
  when 1
    menu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  else
    exit
  end
end
    




menu(dish1, dish2, dish3, dish4, tray,
           sdish1, sdish2, sdish3, sdish4, sdish5, sdish6)
        
    
  


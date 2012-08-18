# -*- encoding: utf-8 -*-
User.create!(nickname: 'Zernel', email: 'itzernel@gmail.com', password: '123456', password_confirmation: '123456')

CATEGORIES = ['饮食', '租房', '娱乐', '交通', '保险', '工资', '其他']

CATEGORIES.each do |category|
  Category.create!(name: category)
end

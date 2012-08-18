# -*- encoding: utf-8 -*-

CATEGORIES = ['饮食', '租房', '娱乐', '交通', '保险']

CATEGORIES.each do |category|
  Category.create!(name: category)
end

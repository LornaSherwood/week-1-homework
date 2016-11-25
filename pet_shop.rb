def pet_shop_name(shop_info)
  return shop_info.fetch(:name)
end

def total_cash(shop_info)
  return shop_info[:admin][:total_cash]
end

def add_or_remove_cash(shop_info, cash_to_add)
  return shop_info[:admin][:total_cash] += cash_to_add
end


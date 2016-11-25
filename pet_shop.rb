def pet_shop_name(shop_info)
return shop_info.fetch(:name)
end

def total_cash(shop_info)

return shop_info[:admin][:total_cash]

end
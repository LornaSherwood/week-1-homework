def pet_shop_name(shop_info)
  return shop_info.fetch(:name)
end

def total_cash(shop_info)
  return shop_info[:admin][:total_cash]
end

def add_or_remove_cash(shop_info, cash_to_add)
  return shop_info[:admin][:total_cash] += cash_to_add
end

def pets_sold(shop_info)
  return shop_info[:admin][:pets_sold]
end

def increase_pets_sold(shop_info, num_pets_sold)
  return shop_info[:admin][:pets_sold] += num_pets_sold
end

def stock_count(shop_info)
  return shop_info[:pets].count
end

def pets_by_breed(pet_shop, breed_wanted)
  new_array = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_wanted
      new_array.push(breed_wanted)
    end
  end
    return new_array
end

def find_pet_by_name(pet_shop, name)
  new_hash = Hash.new()
  for pet in pet_shop[:pets]
    if pet[:name] == name
    new_hash = {name: name}
    end
  end 
  if new_hash == {}  #possible to do shorter?
    return nil
  else
    return new_hash
  end
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end



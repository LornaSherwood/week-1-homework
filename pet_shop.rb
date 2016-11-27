def pet_shop_name(pet_shop)
  return pet_shop.fetch(:name)
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_to_add)
  return pet_shop[:admin][:total_cash] += cash_to_add
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num_pets_sold)
  return pet_shop[:admin][:pets_sold] += num_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed_wanted)
  new_array = []
  for pet in pet_shop[:pets]
    new_array.push(breed_wanted) if pet[:breed] == breed_wanted
  end
    return new_array
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == name  
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

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet) == true
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1) 
    add_or_remove_cash(pet_shop, pet[:price]) 
  end
end

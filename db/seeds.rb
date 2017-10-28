my_dear = Store.find_or_create_by!(name: 'My Dear Kebab')

StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный классический', price: 6.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный экстра', price: 8.50)
StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный сырный', price: 6.50)
StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный спайси', price: 6.50)
StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный дабл', price: 11.00)

StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной классический', price: 8.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной экстра', price: 11.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной сырный', price: 8.50)
StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной спайси', price: 8.50)
StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной дабл', price: 15.00)

StoreItem.find_or_create_by!(store: my_dear, name: 'Мясной сэндвич', price: 8.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Куриный сэндвич', price: 6.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Стрит сэндвич', price: 7.00)

StoreItem.find_or_create_by!(store: my_dear, name: 'Фалафель', price: 6.00)

StoreItem.find_or_create_by!(store: my_dear, name: 'Блин с мягким сыром и шпинатом', price: 4.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Блин с сыром и салями', price: 4.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Блин с моцареллой, ркколлой и томатами', price: 4.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Блин с нутеллой, бананом и орешками', price: 4.00)
StoreItem.find_or_create_by!(store: my_dear, name: 'Блин с маскарпоне и клубникой', price: 4.00)

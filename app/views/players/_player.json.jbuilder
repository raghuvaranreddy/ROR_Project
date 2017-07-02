json.extract! player, :id, :name, :game, :age, :created_at, :updated_at
json.url player_url(player, format: :json)

json.extract! player, :id, :first_name, :last_name, :dob, :nationality, :created_at, :updated_at
json.url player_url(player, format: :json)

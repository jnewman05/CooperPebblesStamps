json.array!(@stamps) do |stamp|
  json.extract! stamp, :id, :id, :type_id, :location_id, :grouping_id, :scott_number, :num_in_block, :face, :year_issued, :description, :location_type_name, :location_type_num, :number_of_booklets, :num_used, :scotts_used_value, :total_used_value, :num_mint, :scotts_mint_value, :total_mint_value, :total_all, :date_lastr_viewed, :comments
  json.url stamp_url(stamp, format: :json)
end

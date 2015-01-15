module ApplicationHelper

  def get_stamp_type(id)
      types= Type.find(id)
      type_name = types.abrev
  end

  def get_stamp_location(id)
      locationsw= Location.find(id)
      location_name = locations.abrev
  end

  def get_stamp_grouping(id)
    groupings = Grouping.find(id)
    grouping_name = groupings.abrev
  end

end

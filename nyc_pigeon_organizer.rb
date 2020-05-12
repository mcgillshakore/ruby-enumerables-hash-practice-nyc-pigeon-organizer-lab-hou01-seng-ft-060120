require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characteristics, value|
    value.each do |info, pigeon_names|
      pigeon_names.each do |name|
        if pigeon_list[name] == nil 
          pigeon_list[name] = {}
        end 
        if pigeon_list[name][characteristics] == nil
          pigeon_list[name][characteristics] = []
        end
        pigeon_list[name][characteristics].push(info.to_s)
      end
    end
  end
  pigeon_list
end
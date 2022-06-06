module Patronable

 def add_item(object)
   @patrons << object
 end

 def remove_item(object)
   @patrons.delete(object)
 end

 def count_items
   @patrons.count
 end

 def average_age
 end

 def find_by_occupation(occupation)
 end

 def find_by_name(name)
 end
end

module Findable
def find_by_name(name)
    $Artist.detect {|item| item.name == name}
end
end
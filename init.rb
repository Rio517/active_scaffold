require 'active_scaffold'


#we can't copy assets on heroku
unless ['production','staging'].include?(Rails.env)
  #begin
    ActiveScaffoldAssets.copy_to_public(ActiveScaffold.root, {:clean_up_destination => true})
  #rescue
  #  raise $! unless ['production','staging'].include?(Rails.env)
  #end
end
class Welcome < ActiveRecord::Base

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    
  end
end

end


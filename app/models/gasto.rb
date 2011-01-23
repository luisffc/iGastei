class Gasto < ActiveRecord::Base
validates_presence_of :meio_id
belongs_to :meio

end

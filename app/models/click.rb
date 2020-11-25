class Click < ApplicationRecord
  belongs_to :we
  belongs_to :you, class_name: 'We'
end

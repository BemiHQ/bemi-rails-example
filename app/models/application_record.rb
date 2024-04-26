class ApplicationRecord < ActiveRecord::Base
  include Bemi::RecordQueryHelpers
  bemi_change_class 'BemiChange'

  primary_abstract_class
end

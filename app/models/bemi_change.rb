# frozen_string_literal: true

class BemiChange < BemiRecord
  include Bemi::ChangeQueryHelpers
  self.table_name = 'changes'
end

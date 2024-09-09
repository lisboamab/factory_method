require 'active_record'

class Notification < ActiveRecord::Base
  self.inheritance_column = :type

  def deliver
    raise NotImplementedError, 'Subclasses must implement the deliver method'
  end
end

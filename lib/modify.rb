module Modify  
  def self.included(base)  
    base.extend ClassMethods  
  end  

  module ClassMethods  

    def modify(*fields, &block)  
      before_validation do |record|
        fields.each do |field|
          old_value = record.send(field)
          new_value = block.call old_value

          record.send( "#{field}=", new_value )
        end  
      end
    end  

  end  
end  

class ActiveRecord::Base  
  include Modify  
end  

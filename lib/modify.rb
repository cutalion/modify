module Modify  
  def self.included(base)  
    base.extend ClassMethods  
  end  

  module ClassMethods  

    def modify(*fields, &block)  
      options = fields.extract_options!

      if options.any? 
        modify_with_options options
      else
        modificator = block_given? ? block : fields.pop
        modify_with_proc fields, modificator 
      end
    end



    protected

    def modify_with_options(options)
      before_validation do |record|
        options.each do |field, modificator|
          old_value = record.send(field)
          new_value = record.send(modificator, old_value)

          record.send( "#{field}=", new_value )
        end  
      end
    end

    def modify_with_proc(fields, modificator)
      before_validation do |record|
        fields.each do |field|
          old_value = record.send(field)
          new_value = modificator.call old_value

          record.send( "#{field}=", new_value )
        end  
      end
    end


  end  
end  

class ActiveRecord::Base  
  include Modify  
end  

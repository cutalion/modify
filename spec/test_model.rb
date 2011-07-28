require 'active_record'

class TestModel < ActiveRecord::Base
  def self.columns() @columns ||= []; end  
   
  def self.column(name, sql_type = nil, default = nil, null = true)  
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)  
  end 

  column :field1, :string
  column :field2, :string
  column :field3, :string

  modify :field1, :field2 do |old_value|
    old_value.upcase
  end
end


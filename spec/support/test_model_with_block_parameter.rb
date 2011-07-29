class TestModelWithBlockParameter < ActiveRecord::Base
  extend Tableless

  column :field1, :string
  column :field2, :string
  column :field3, :string


  modify :field1, :field2 do |old_value|
    old_value.upcase
  end
end

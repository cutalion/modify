class TestModelWithHashOptions < ActiveRecord::Base
  extend Tableless

  column :field1, :string
  column :field2, :string
  column :field3, :string


  modify :field1 => :upcase, :field2 => :downcase

  def upcase(value)
    value.to_s.upcase
  end

  def downcase(value)
    value.to_s.downcase
  end
end

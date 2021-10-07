#Person class
  #accepts a hash on init
   #each key should become a property of the Person instance
     #also each attribute should be assigned a getter/setter

class Person
  def initialize(**args)
    args.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

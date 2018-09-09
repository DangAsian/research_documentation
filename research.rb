#Read the docs
# Try out the method in irb using a few different values

# Once you feel like you understand how it works, write down

# its arguments (name, data type, optional/required, default value if any)
# its return type

# Write an example (in code) of how to use the method
# run your code to make sure your example is valid!



String

1. length : No arguments mentioned, but will return the number of characters within the string. The return type is a integer.

puts "hello".length
#output => 5

2. strip: No arguments mentioned within rubydoc.
      *lstrip
      *rstrip
      *strip
    In the following list, each method contains no arguments. Both the lstrip and rstrip removes whitespace respective to either the left or right respectively. The strip function removes strip from both sides and each element will return a str.
    Additionally, you can add a ! (bang) to the end of this method inwhich it will alter the variable you stored the string in to a strip induced element.

puts " hello ".strip
#output => "hello"

3. split: The split method works by locating delimiter, which can also be seen as a que, that will cut the string based on the argument you call. By default, the string is called to cut the string based on the spaces between the words within the space. If pattern is a regexp then it is cut based on where the pattern is mentioned as per the argument.

  The arguments are pattern=nil and limit. The default is (' ') which indicates that the string will be divided at every space. The optional argument "limit" will return the number of splits as specified.

  The return type is an array

  puts "hello it's me Daniel".split
  #This will return ["hello", "it's", "me", "Daniel"]
  puts "hello it's me Daniel".split.(/ /, 1)
  #This will return [hello it's me Daniel"]

****** look into scan
4. start_with:([prefixes]+) -> true or false. The start_with method works on strings with a prefix given. The arguments that you put in is a prefix. This is optional it seems, but also necessary.

The return is either true or false

puts "hello".start_with?("he")
#This will return true
puts "hello".start_with?("eh")
#This will return false

This method affects objects of the string data tybe ~
and i can see this being used when you are required to check through the letters of a word.

######################################################

#array

first: The first method can either return a object, nil  || new_ary, depending if you pass through a argument.
        first -> obj or nil
        first(n) -> new_ary

This method will return the first number of the object within the array when you do not pass a argument. If you pass through a "integer" argument, then you can specify the number of indexes to be returned to you. Important => when you pass through a integer (required argument) then it will return to you a new array

  ["h", "e", "l", "l", "o"].first
  #returns "h"
  ["h", "e", "l", "l", "o"].first(2)
  #returns ["h", "e"]
  ["h", "e", "l", "l", "o"].first(1)
  #returns ["h"]
  ["h", "e", "l", "l", "o"].first(0)
  #returns []

  delete_at: This method can delete any element within a array object. It requires that you put in a index as the argument and will delete the element corresponding to the index within the array. If you do not specify a actual index then it will return nil
          delete_at(index) -> obj || nil

  This will return either a object or nil and can only be applied to arrays.

  ["h", "e", "l", "l", "o"].delete_at(1)
  #This will return ["h", "l", "l", "o"]
  ["h", "e", "l", "l", "o"].delete_at(10)
  #this will return nil

  delete: This method is applied to arrays to delete a object (argument) specified if present within the array.
          delete(obj) -> item or nil
          delete(obj) {block} -> item or result of block
  This method requires a object and has a optional argument block. This block can be specified as any object and will be returned if the array returns nil.

  ["h", "e", "l", "l", "o"].delete("e")
  #This will return ["h", "l", "l", "o"]
  #If you specify a object that is repeated within the array, it will then remove both of those objects

  ["h", "e", "l", "l", "o"].delete("z") { "What i can't find anything?"}
  #This will return a nil but since i specified a optional argument, which is a block, then this will return the string in response to the nil that would've been returned.

  pop: The pop method is used to delete the last index/element within an array.
            pop -> obj || nil
            pop(n) -> new_ary
  if the "n" argument is given then it will remove the number specified from the end, in which it will return a new array.

  puts [1,2,3,4].pop
  # this will return [1,2,3]
  puts [1,2,3,4].pop(3)
  #This will return [1]


  ##########################################
  #Hash
  to_a: Oh wow this one is really intereting.
  This method is applied to hashes and will convert the hash along with its key and value into seperate arrays.

              to_a -> arrays
  This method will return a array, the only argument that you wil need is a hash.

  {:a => 1, :b => 2}.to_a
  #This will return [[a,1][b,2]]

  has_key?: This is a method applied to hashes that will return a true or false statment on whether or not the hash has a specific key. This key is a mandatory argument that you must feed in.

    has_key?(key) -> true || false

  You will need to put in the mandatory argument and it will output either a true or false. NOTE: This is a case sensitive thing.

    {:a => 1, :b => 2}.has_key?(:b)
    #This will return true
    {:a => 1, :b => 2}.has_key?(:G)
    #This will return false

has_value?: This is a similar method to has_key? where instead of returning a true or false for the key, it will rather check the value in relation to the mandatory argument.

      has_value?(value) -> true || false

This will return a boolean and the mandatory argument is the value of the hash we are looking for. This will be important if we were looking for a specific value within a hash where we can return if its true or not.
    {:a => 1, :b => 2}.has_value?(:1)
    #This will return true
    {:a => 1, :b => 2}.has_value?(:3)
    #This will return false

#####################################
#Time
now: is a method that is used on "Time". This will allow you to display the current time. This can be down with:

    now --> Time
    ::new --> time

Both of these methods return time but both of these methods will need to be used along with the "Time" data-type/object.

    Time.now || Time::new
    #This will return the current time 09-09-18

######################
#File

exist?: looks like it is deprecated

extname: This method is applied to the File and a path is the mandatory argument. This will return a string that identifies the portion after the last period. It will return a empty string if it ends with a period or has no period or if it starts with a period.

        extname(path) -> string

    File.extname("research.rb")
# this will return ".rb"

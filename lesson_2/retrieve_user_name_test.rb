def alphabet?(char)
  (("A".."Z").to_a + ("a".."z").to_a + [" "]).include?(char)
end

def non_alpha_chars?(user_name)
  user_name.chars.each do |char|
    return true unless alphabet?(char)
  end
  false
end

def invalid_user_name?(user_name)
  user_name.empty? || /^ +$/.match(user_name) || non_alpha_chars?(user_name)
end

def retrieve_user_name
  p "=> Enter your name:"
  loop do
    user_name = Kernel.gets().chomp()

    return user_name unless invalid_user_name?(user_name)
    p("Make sure to enter a valid user_name!")
  end
end

user_name = retrieve_user_name

p user_name
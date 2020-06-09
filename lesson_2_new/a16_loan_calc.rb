require 'yaml'

MESSAGES = YAML.load_file('loan_calc_msgs.yml')

def prompt(str)
  Kernel.puts("=> #{str}")
end

def invalid_name?(user_name)
  user_name.empty?() || /^ +$/.match(user_name)
end

def valid_integer?(number_str)
  number_str.to_i().to_s() == number_str
end

def valid_float?(number_str)
  number_str.to_f().to_s() == number_str
end

def valid_number?(number_str)
  valid_integer?(number_str) || valid_float?(number_str)
end

def valid_loan_amount?(principal_loan_amount)
  valid_number?(principal_loan_amount) && (principal_loan_amount.to_f() > 0)
end

def valid_apr?(annual_percent_rate)
  valid_number?(annual_percent_rate) && (annual_percent_rate.to_f().between?(0.1, 15))
end

def valid_loan_duration?(loan_duration_years)
  valid_integer?(loan_duration_years) && (loan_duration_years.to_i() > 0)
end

def valid_input?(input, input_type)
  case input_type
  when "principal_loan_amount"
    valid_loan_amount?(input)
  when "apr"
    valid_apr?(input)
  when "loan_duration_years"
    valid_loan_duration?(input)
  end 
end

def retrieve_input(input_type)
  prompt(MESSAGES[input_type])
  loop do
    input = Kernel.gets().chomp()
    return input if valid_input?(input, input_type)
    prompt(MESSAGES["invalid_#{input_type}"])
  end
end

def retrieve_name
  prompt(MESSAGES["user_name"])
  loop do
    user_name = Kernel.gets().chomp()
    return user_name unless invalid_name?(user_name)
    prompt(MESSAGES["invalid_name"])
  end
end

def display_greeting(user_name)
  prompt("Hi, #{user_name}")
end

def calc_monthly_int_rate(apr)
  apr / 12
end

def calc_loan_duration_months(loan_duration_years)
  loan_duration_years * 12
end

def calc_monthly_payment(p, j, n)
  p * (j / (1 - (1 + j)**(-n)))
end

def display(value_type, value)
  case value_type
  when "principal_loan_amount"
    prompt("Total Loan Amount: $ #{value}")
  when "monthly_interest_rate"
    prompt("Monthly Interest Rate: #{format('%.2f', (value * 100))}%")
  when "monthly_payment"
    prompt("Payment Every Month: $ #{format('%.2f', value)}")
  when "total_number_payments"
    prompt("Total number of payments: #{value}")
  when "total_amount_paid"
    prompt("Total amount to be paid: $ #{format('%.2f', value)}")
  when "total_interest"
    prompt("Total Interest to be paid: $ #{format('%.2f', value)}")
  end
end

def valid_ans?(answer)
  %w(y yes n no).include?(answer)
end

def retrieve_play_again
  prompt(MESSAGES["play_again"])
  loop do
    answer = Kernel.gets().chomp().downcase
    return answer if valid_ans?(answer)
    prompt(MESSAGES["invalid_ans"])
  end
end

def play_again?(user_answer)
  %w(y yes).include?(user_answer)
end

prompt(MESSAGES["welcome"])

user_name = retrieve_name()

display_greeting(user_name)

loop do
  principal_loan_amount = retrieve_loan_amount()

  annual_percent_rate = retrieve_apr()

  loan_duration_years = retrieve_loan_duration_years()

  monthly_interest_rate = calc_monthly_int_rate(annual_percent_rate)

  loan_duration_months = calc_loan_duration_months(loan_duration_years)

  monthly_payment = calc_monthly_payment(principal_loan_amount,
                                         monthly_interest_rate,
                                         loan_duration_months)

  total_amount_to_be_paid = monthly_payment * loan_duration_months

  total_interest = total_amount_to_be_paid - principal_loan_amount

  system('clear')

  display_total_loan_amount(principal_loan_amount)

  display_monthly_interest_rate(monthly_interest_rate)

  display_monthly_payment(monthly_payment)

  display_loan_duration_months(loan_duration_months)

  display_total_amount_paid(total_amount_to_be_paid)

  display_total_interest(total_interest)

  user_answer = retrieve_play_again()

  break unless play_again?(user_answer)
  system('clear')
end

prompt(MESSAGES["goodbye"])

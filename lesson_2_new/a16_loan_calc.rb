require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('loan_calc_msgs.yml')

def prompt(str)
  Kernel.puts("=> #{str}")
end

def invalid_name?(user_name)
  user_name.empty?()
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

def retrieve_loan_amount
  prompt(MESSAGES["loan_amount"])
  loop do
    principal_loan_amount = Kernel.gets().chomp()
    return (principal_loan_amount.to_f) if valid_loan_amount?(principal_loan_amount)
    prompt(MESSAGES["invalid_loan_amount"])
  end
end

def valid_apr?(annual_percent_rate)
  valid_number?(annual_percent_rate) && (annual_percent_rate.to_f() > 0)
end

def retrieve_apr
  prompt(MESSAGES["annual_percent_rate"])
  loop do
    annual_percent_rate = Kernel.gets().chomp()
    return ((annual_percent_rate.to_f()) / 100) if valid_apr?(annual_percent_rate)
    prompt(MESSAGES["invalid_apr"])
  end
end

def valid_loan_duration?(loan_duration_years)
  valid_number?(loan_duration_years) && (loan_duration_years.to_f() > 0)
end

def retrieve_loan_duration_years
  prompt(MESSAGES["loan_duration_years"])
  loop do
    loan_duration_years = Kernel.gets().chomp()
    return (loan_duration_years.to_f) if valid_loan_duration?(loan_duration_years)
    prompt(MESSAGES["invalid_loan_duration"])
  end
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

def display_total_loan_amount(principal_loan_amount)
  prompt("Total Loan Amount: $ #{principal_loan_amount}")
end

def display_monthly_interest_rate(monthly_interest_rate)
  prompt("Monthly Interest Rate: #{monthly_interest_rate * 100}%")
end

def display_monthly_payment(monthly_payment)
  prompt("Payment Every Month: $ #{monthly_payment}")
end

def display_loan_duration_months(loan_duration_months)
  prompt("Total number of payments: #{loan_duration_months}")
end

def display_total_amount_paid(total_amount_to_be_paid)
  prompt("Total amount to be paid: $ #{total_amount_to_be_paid}")
end

def display_total_interest(total_interest)
  prompt("Total Interest to be paid: $ #{total_interest}")
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

  display_total_loan_amount(principal_loan_amount)

  display_monthly_interest_rate(monthly_interest_rate)

  display_monthly_payment(monthly_payment)

  display_loan_duration_months(loan_duration_months)

  display_total_amount_paid(total_amount_to_be_paid)

  display_total_interest(total_interest)

  user_answer = retrieve_play_again()

  break unless play_again?(user_answer)
end

prompt(MESSAGES["goodbye"])

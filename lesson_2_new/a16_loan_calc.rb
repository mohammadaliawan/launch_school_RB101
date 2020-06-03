START

PRINT "Greeting"
SET user_name = SUBPROCESS "retrieve user_name."

WHILE keep_going == true

  SET total_loan_amount = SUBPROCESS "retrieve total_loan_amount in USD"

  SET annual_percent_rate = SUBPROCESS "retrieve annual_percent_rate"

  SET loan_duration_years = SUBPROCESS "retrieve loan_duration_years"

  SET  monthly_interest_rate = SUBPROCESS "calculate monthly_interest_rate"

  SET loan_duration_months = SUBPROCESS "calculate loan_duration_months"

  SET montly_payment = SUBPROCESS "calculate monthly payments"

  PRINT montly_payment
  PRINT loan_duration_months
  PRINT monthly_interest_rate
END

MESSAGES = YAML.load_file('loan_calc_msgs.yml')

def prompt(str)
  Kernel.puts("=> #{str}")
end

def retrieve_name
  prompt(MESSAGES["user_name"])
  loop do
    user_name = Kernel.gets().chomp()
    return user_name if valid_name?(user_name)
    prompt(MESSAGES["invalid_name"])
  end
end


prompt(MESSAGES["welcome"])

user_name = retrieve_name()

loop do
  





end




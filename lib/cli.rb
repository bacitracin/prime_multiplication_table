class CLI

  def call
    choice = nil

    until choice == 'N'
      puts "Let's Multiply!!!"
      @multiplication_table = MultiplicationTable.new
      puts "Enter an integer for table size"
      table_size = gets.strip.to_i    
      @multiplication_table.print_table(table_size)
      puts "Run again? Y or N?"
    end

    puts "Now exiting. Thanks!"
  end


ends
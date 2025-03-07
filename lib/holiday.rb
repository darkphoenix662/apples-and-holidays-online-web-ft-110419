require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = "Balloons"
  holiday_hash[:winter][:new_years] = "Balloons"
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  new_supplies = []
  holiday_hash[:winter].each do |holiday, supply|
    new_supplies << supply
 
  # new_supplies = []
  #   holiday_hash[:winter].map do |holiday, supply|
  #     supply                                          #return an array of all the 
                                                        #supplies needed for winter 
    end
  new_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holiday|
    puts "#{season}".to_s.capitalize + ":" 
    holiday.each do |actual_holiday, value|
      relax_time = actual_holiday.to_s.split("_")
      relax_time.each do |it|
        it.capitalize!
        if relax_time.length > 1
          relax_time.join
        end
      end
      puts "  #{relax_time.join(" ")}: #{value.join(", ")}"
    end
  end
end
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  holiday_supply = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      holiday_supply << holiday if supplies.include?("BBQ")
    end
  end
  holiday_supply.flatten
end








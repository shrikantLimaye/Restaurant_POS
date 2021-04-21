module ApplicationHelper
    def current_order
      #use find by id to avoid potential errors
      if Order.find_by_id(session[:order_id]).nil?
        Order.new
      else
        Order.find_by_id(session[:order_id])
      end
    end



    def number_to_indian_currency(number)
        if number
          string = number.to_s.split('.')
          number = string[0].gsub(/(\d+)(\d{3})$/){ p = $2;"#{$1.reverse.gsub(/(\d{2})/,'\1,').reverse},#{p}"}
          number = number.gsub(/^,/, '') + '.' + string[1] if string[1]
          # remove leading comma
          number = number[1..-1] if number[0] == 44
        end
        "Rs. #{number}"
      end
end

  require "pry" 

 class CashRegister
    attr_accessor :total, :discount , :item , :last_transaction
    def initialize(discount= 0)
        @total = 0
        @discount = discount
        @item = []
      @last_transaction = 0
     end
     def add_item(  title, price , quantity=1)
     quantity.times do 
      @item << title
     end
    self.total += price* quantity
   @last_transaction = price * quantity
      end
   
      def apply_discount
      
          if   self.discount == 0
            "There is no discount to apply."
          else
            self.total -= (self.total * (self.discount / 100.0))
            "After the discount, the total comes to $#{self.total.to_i}."
           end
      end
      def items
     
            return self.item
         
      end
      def void_last_transaction
   
       self.total -= self.last_transaction
       
      end

      
      
   
end



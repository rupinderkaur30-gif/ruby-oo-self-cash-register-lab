  

 class CashRegister
    attr_accessor :total, :discount , :item , :last_transaction
    def initialize(discount= 0)
        @total = 0
        @discount = discount
        @item = item
      @last_transaction
     end
     def add_item(  title, price , quantity=1)

    self.total += price* quantity
   
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
      @item = ["eggs", "tomato", "tomato", "tomato"]
          self.item
            return self.item
         
      end
      def void_last_transaction
      if self.item = 0.0
         self.total = 0.0
      else
         self.total -= self.last_transaction
      end

      
      
   end
end



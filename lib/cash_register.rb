class CashRegister
    def initialize(discount = 0.0)
        @total = 0.0
        @discount = discount
        @items = []
    end
    
    def discount
        @discount = 20
    end

    def total
        @total
    end

    def total=(total)
        @total = total
    end

    def add_item(item, price, quanitity = 1)
        @previous_transaction = price * quanitity
        @total += price * quanitity
        quanitity.times do
            @items << item
        end
    end

    def apply_discount
        @total = @total * (0.01) * (100-@discount)
        if @discount == 0.0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
       self.total -= @previous_transaction
    end
end
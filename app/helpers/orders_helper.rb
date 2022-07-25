module OrdersHelper
    def statusOrders
        Order.statusOrders.keys.map do |statusOrder|
          [t("activerecord.attributes.order.statusOrders.#{statusOrder}"), statusOrder]
        end
    end
end

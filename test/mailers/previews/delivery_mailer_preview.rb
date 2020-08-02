# Preview all emails at http://localhost:3000/rails/mailers/delivery_mailer
class DeliveryMailerPreview < ActionMailer::Preview

    def delivery_scheduled
        DeliveryMailer.delivery_scheduled(delivery: Delivery.first, user: User.first)
    end
end

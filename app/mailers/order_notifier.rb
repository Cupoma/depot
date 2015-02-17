class OrderNotifier < ApplicationMailer

  default from: 'taras.sirota@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Заказ из Pragmatic Store отправлен'
  end

  def received(order)
    @order = order

    mail to: order.email, subject: 'Подтверждение заказа в Pragmatic Store'
  end
end

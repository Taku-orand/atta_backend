class NotificationMailer < ApplicationMailer
  default from: ENV['EMAIL']

  def send_confirm_to_user(lost_item)
    @lost_item = lost_item
    mail(
      subject: @lost_item[:item_name]+"の落とし物 - AttA 落とし物発見サービス", #メールのタイトル
      to: @lost_item[:email] #宛先
    ) do |format|
      format.text
    end
  end
end
# foundLocation,
#       itemDestination,
#       email,
#       user_name,
#       item_name,

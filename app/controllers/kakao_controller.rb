class KakaoController < ApplicationController
  def keyboard
    home_keyboard = {
      :type => "buttons",
      :buttons => ["꽃다발", "화분", "꽃바구니", "조화"]
    }

    render json: home_keyboard
  end

  def message
    user_message = params[:content]
    return_text = "임시텍스트"
    image = false

    if user_message == "꽃다발"
      image = true
      img_url = ["http://www.cultwo-flower.com/shopimages/c2c2/0240020000503.jpg?1423883270"].sample(1)
    elsif user_message == "화분"
    elsif user_message == "꽃바구니"
    elsif user_message == "조화"
    else
      return_text = "위의 버튼 중에서 눌러주세요^^"
    end
    home_keyboard = {
      :type => "buttons",
      :buttons => ["꽃다발", "화분", "꽃바구니", "조화"]
    }

    return_message_with_img = {
      :message => {
        :text => return_text,
        :photo => {
          :url => img_url,
          :width => 640,
          :height => 480
        }
      },
      :keyboard => home_keyboard
    }

    # return_message = {
    #   :message => {
    #     :text => return_text,
    #   },
    #   :keyboard => home_keyboard
    # }

    # if image
      render json: return_message_with_img
    # else
    #   render json: return_message
    # end
  end
end

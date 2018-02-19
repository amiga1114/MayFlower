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
    return_text = "이걸 추천해드립니다."
    image = false

    if user_message == "꽃다발"
      image = true
      return_text = "꽃다발을 추천해드립니다:)"
      img_url = ["http://www.cultwo-flower.com/shopimages/c2c2/0240020000503.jpg?1423883270",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi4J36cM3wRtCuFhHQepO1rMYUPpx10P9xF0gK2kr4ulIxW2F_",
        "https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/12747656_1572931359698816_1377885648_n.jpg?ig_cache_key=MTE5MDQ4NDkzMzc0NDExOTQ5NQ%3D%3D.2",
        "http://homesalaska.co/wp-content/uploads/2017/07/2017-flower-bouquet-arrangement-pictures-best-20-flower-bouquets-ideas-on-pinterest.jpg",
        "https://i.pinimg.com/736x/e4/d3/55/e4d355bdc262b9093badd0589fe707e3--bouquet-packaging-fresh-flowers.jpg"].sample
        link_url = "https://project-flower-yjchoi1114.c9users.io"
    elsif user_message == "화분"
      return_text = "화분을 추천해드립니다:)"
      img_url = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN3VcqX4VlbxKARY3V2LbTwFtAPvAssPfZ76eg1RuSunXB8pVqRw",
        "http://cdn3a.funshop.co.kr/abroad/005/2677/pizz_0.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Y4gkffxosNu8K9-wIB-4ILZD6-cQ3ZeEXv-ZVu106PJAdPWD",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR62CpJysVgjTxGfgKH78q72-CTYoAeL-buLZ4PSntbXH7PSwpldg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa_Ic4iqB8oN2pp5XwKEweqFV3okrEWC0Vp3jm7tZcM4wdX2F5"].sample
        link_url = "https://project-flower-yjchoi1114.c9users.io"
    elsif user_message == "꽃바구니"
      return_text = "꽃다구니를 추천해드립니다:)"
      img_url = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5TI4HE-7YSbqJNieBGZ1xtgD2ARFUGnG_Dnng6OYK9CguMs42",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyFF0U7GXqco9uNoH-EJTq_jbPF161GUY1Rvp7pgnRlaaLOiiI2Q",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb4u4e5LRAVwZI--Dl3OOuKtE78vYU_EW082zmxON2zYyKfdWFtQ",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkwYdEGknPHWjHyuLwHIDWbHXhBOHwLEwelFtVhlF2s5E8eQRo",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBXWNBKnV8qFBR3SMVUSGEpQnVAFmTrCrtzVhaFz92OD9QlV9qA"].sample
        link_url = "https://project-flower-yjchoi1114.c9users.io"
    elsif user_message == "조화"
      return_text = "조화를 추천해드립니다:)"
      img_url = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwhzuCGEbvCBVEtchUFm9JX1qE5_N49shE__qA0jR6BZdnFqek",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUNXMl-hPYWd9XXV2H6TD9mgnLfme6ah0oE5GfEZNu4sfaR1eW5A",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgMh5Bac0_rfzAR2lSIGjpWyNhovIhQpPzdXHkHJofltUTj0qU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSji5XoSti0yc5_sY9N5xlqlMcblDBLxXWcUnrNb6appjQwH_MbZg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7h60rOKRXuhoCKAPxHXDh-z1_incQdLgRS_OD1Kp-hMKXVMfE"].sample
        link_url = "https://project-flower-yjchoi1114.c9users.io"
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
        },
        :message_button => {
          :label => "상품 더보기",
          :url => link_url
        }
      },
      :keyboard => home_keyboard
    }

      render json: return_message_with_img
  end
end

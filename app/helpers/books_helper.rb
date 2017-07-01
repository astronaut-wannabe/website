module BooksHelper
  def thumbnail_link_to_large_image(small_url, large_url=nil)
    if large_url.nil?
      large_url = small_url.sub("small.", "large.")
    end

    link_to(image_tag(small_url), large_url)
  end

  def button_to_buy_now(price: price, url: url)
    link_to [t("views.products.buy_now_button_text"), (number_to_currency(price / 100.0))].join(" : "), url, class: "buy-now button"
  end
end

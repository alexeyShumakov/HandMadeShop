$ ->
  line_item = '#line_item_' + '<%= @line_item.id %>'

  $(line_item).find('.total-price').html('<%= custom_currency(@line_item.total_price) %>')
  $('#product-qty').html('<%= @cart.total_quantity %>')
  $('.cart-total-price').children('i').html('<%= custom_currency(@cart.total_price) %>')

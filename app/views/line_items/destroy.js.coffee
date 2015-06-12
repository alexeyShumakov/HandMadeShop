$ ->
  line_item = '#line_item_' + '<%= @line_item.id %>'
  $(line_item).remove()
  $('#product-qty').html('<%= @cart.total_quantity %>')
  $('.cart-total-price').children('i').html('<%= custom_currency(@cart.total_price) %>')

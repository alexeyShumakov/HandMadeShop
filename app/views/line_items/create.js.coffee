$ ->
  $('#product-qty').html('<%= @cart.total_quantity %>')
  $('.modal-body').html '<%= render('carts/modal_cart', cart: @cart)  %>'

  $('.plus').click ->
    quantity_node = $(this).siblings('.line_item_quantity').children('.quantity')
    count = parseInt(quantity_node.val(), 10)
    if count < 1
      quantity_node.val(1)
    else
      quantity_node.val(count + 1)

  $('.minus').click ->
    quantity_node = $(this).siblings('.line_item_quantity').children('.quantity')
    count = parseInt(quantity_node.val(), 10)
    if count <= 2
      quantity_node.val(1)
    else
      quantity_node.val(count - 1)

  $('input').blur ->
    $(this).closest('form').submit()




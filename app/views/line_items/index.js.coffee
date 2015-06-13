$ ->
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

  $('#qty_form').blur ->
    $(this).closest('form').submit()

$('#cart-modal').on 'hide.bs.modal', ->
  $.ajax(url: '<%= order_rerender_cart_path %>', dataType: 'script')
  $('#cart-modal').unbind()



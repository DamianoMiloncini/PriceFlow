<button style="font-size: 18px;" type="text" id="checkoutButton"><i class="bi bi-cart-check-fill"></i> <?= __('Checkout:') ?> $<?php echo isset($data[0]['cart_price']) ? $data[0]['cart_price'] : '0'; ?>

</button>
$(document).ready(function($) {
	$(".num-order").change(function(event) {
		slm = $(this).val();
		idproduct = $(this).attr('data-idproduct');
		$.ajax({
			url: 'http://localhost:3408/huytuan/?page=cart_perform',
			type: 'POST',
			data: "slm="+slm+"&idproduct="+idproduct,
			async: true,
			succes: function(kq){
				location.reload();
			}
		});
	});
});


$(function () {


	$("#state_select")
		.change(function () {
			var data = $('#state_select').val();
			console.log('data: ', data);
			$("select option:selected").each(function () {
				data = $(this).text() + " ";
			});
			$("#result").text(data);
		})
		.trigger("change");

})
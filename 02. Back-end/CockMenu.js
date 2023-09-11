$(document).ready(function() {
	$('.baseAlcohol').click(function(event) {
		event.stopPropagation();
		$(".menubox1").slideToggle("slow");
	});
	$(".menubox1").on("click", function(event) {
		event.stopPropagation();
	});
});
$(document).on("click", function() {
	$(".menubox1").hide();
});

$(document).ready(function() {
	$('.ingredient').click(function(event) {
		event.stopPropagation();
		$(".menubox2").slideToggle("slow");
	});
	$(".menubox2").on("click", function(event) {
		event.stopPropagation();
	});
});
$(document).on("click", function() {
	$(".menubox2").hide();
});

$(document).ready(function() {
	$('.dangdo').click(function(event) {
		event.stopPropagation();
		$(".menubox3").slideToggle("slow");
	});
	$(".menubox3").on("click", function(event) {
		event.stopPropagation();
	});
});
$(document).on("click", function() {
	$(".menubox3").hide();
});

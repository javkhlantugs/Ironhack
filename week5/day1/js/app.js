console.log("Console log");

$(document).ready(function (){

$(".js-fade").on("click", function(){
	$(".body").fadeToggle(900);
});

$(".js-unicorn").on("click", unicornMode);

$(".js-pizza").on("click", function (){
	console.log("console")


$(".js-sth").after("PIZZA PIZZA")
});
$(".js-empanadas").click(function (){
	$(".js-heading").append(`
		<span> EMAPANADA TIME</span>
<a href="#">See MORE EMPANADAS</a>`
		);
})

$("#hmmm").on("click", cookiesMessage);

$(".js-tacos").on("click", deleteAll);
});
function cookiesMessage () {
	var cookieContent = `
	<div>
		<h2>Have a cookie</h2>
		<p>Cookies are good for u. Here's why:</p>
	</div>`;
	$("body").before(cookieContent);
}

function deleteAll () {
	$("body").remove();
}

function unicornMode () {
	var randomColor = Math.floor(Math.random()*16777215).toString(16);
	console.log(randomColor)
	if $(".body").css('background-color', `#${randomColor}`);
}
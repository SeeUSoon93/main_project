
	/* h1 태그에만 애니메이션 속성 */
	let mainText = document.querySelector("h1"); 
	
	/* 스크롤 시 애니메이션 */
	window.addEventListener('scroll', function () {
		let value = window.scrollY;
		console.log("scrollY", value);
		
		if(value > 200) {
			mainText.style.animation = "disappear 1s ease-out forwards";
		}
		else {
			mainText.style.animation = 'slide 1s ease-out';
		}
	})
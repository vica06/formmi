var slideCount = document.querySelectorAll(".slider").length - 1;
var slideIndex = 1;
var direction;
var sliderSpeed = 700;
var sliderAutoplayTime = 3000;
var sliderHeight = 600;
var sliderWidth = $(".slider-wrapper").width();

if ($(window).width() > 767) {
	desktopSlider();
} else {
	mobileSlider();
}

function desktopSlider() {
	direction = "left";

	$(".slider.first").css("left", 0);

	var timer = setInterval(() => {
		playAnimation("left", "left", ".slider", "right");
	});

	$(".slider").click(function () {
		let elem = $(this);
		let index = parseInt(elem.data("index"));
		let position;

		clearInterval(timer);

		slideIndex = index;

		if ($(`.slider:nth-of-type(${index + 2})`).hasClass("slide")) {
			if (index == 3) {
				return false;
			} else {
				$(".slider").each(function (pos, el) {
					if ($(`.slider:nth-of-type(${pos + 2})`).hasClass("slide") && pos >= index) {
						position = (sliderWidth-50) - (slideCount - (pos + 1)) * 50 + "px";
						$(`.slider:nth-of-type(${pos + 2})`)
							.stop()
							.animate({ left: position }, sliderSpeed);
						$(`.slider:nth-of-type(${pos + 2})`).toggleClass("active slide");
					}
				});
			}
		} else {
			if (index == 1) {
				position = index * 50 + "px";
				elem.stop().animate({ left: position }, 500);
				elem.toggleClass("slide");
			} else {
				$(".slider").each(function (pos, el) {
					if (pos != 0 && !$(el).hasClass("slide") && pos <= index) {
						position = pos * 50 + "px";
						$(el).stop().animate({ left: position }, sliderSpeed);
						$(el).toggleClass("slide");
					}
				});
			}
		}

	// 	checkIndex("left", "right");
	// 	timer = setInterval(() => {
	// 		playAnimation("left", "left", ".slider", "right");
	// 	}, sliderAutoplayTime);
	// });
});

function mobileSlider() {
	direction = "top";

	$(".m-slider.first").css("top", 0);

	var timer = setInterval(() => {
		playAnimation("top", "top", ".m-slider", "bottom");
	}, sliderAutoplayTime);

	$(".m-slider").click(function () {
		let elem = $(this);
		let index = parseInt(elem.data("index"));
		let position;

		clearInterval(timer);

		slideIndex = index;

		if (index == 0) return false;

		if (elem.hasClass("slide")) {
			$(".m-slider").each(function (pos, el) {
				if ($(el).hasClass("slide") && pos >= index) {
					position = sliderHeight - (slideCount - pos + 1) * 50 + "px";
					$(el).stop().animate({ top: position }, sliderSpeed);
					$(el).toggleClass("slide");
				}
			});
		} else {
			$(".m-slider").each(function (pos, el) {
				if (pos != 0 && !$(el).hasClass("slide") && pos <= index) {
					position = pos * 50 + "px";
					$(el).stop().animate({ top: position }, sliderSpeed);
					$(el).toggleClass("slide");
				}
			});
		}

		checkIndex("top", "bottom");
		timer = setInterval(() => {
			playAnimation("top", "top", ".m-slider", "bottom");
		}, sliderAutoplayTime);
	});
}

/**
 * Play animation
 * @param {string} sliderDirection it is direction of slider (left-right, top-bottom)
 * @param {string} animateDirection it is a direction of animation (left, top)
 * @param {string} sliderClass the class of slider, in case of desktop ".slider" and mobile ".m-slider"
 * @param {string} secondaryDirection it is a second parameter of checkIndex function
 * @function
 * return void
 */
function playAnimation(sliderDirection, animateDirection, sliderClass, secondaryDirection) {
	var position;
	if (direction === sliderDirection) {
		position = slideIndex * 50 + "px";
		$(`${sliderClass}:nth(${slideIndex})`).addClass("slide");
	} else {
		if (sliderDirection == "left") {
			position = sliderWidth - (slideCount - slideIndex) * 50 + "px";
		} else {
			position = sliderHeight - (slideCount - (slideIndex - 1)) * 50 + "px";
		}
		$(`${sliderClass}:nth(${slideIndex})`).removeClass("slide");
	}

	let animationParams = {};
	animationParams[animateDirection] = position;

	$(`${sliderClass}:nth(${slideIndex})`)
		.stop()
		.animate(animationParams, sliderSpeed, function () {
			checkIndex(animateDirection, secondaryDirection);
		});
}

/**
 * It is check the slider direction and increase or decreases
 * the sliderIndex variable.
 * @param {string} direction1 primary slider direction
 * @param {string} direction2 secondary slider direction
 * @function
 * return void
 */
function checkIndex(direction1, direction2) {
	if (slideIndex == 1 && direction == direction2) {
		direction = direction1;
	} else if (slideIndex >= 1 && direction == direction1 && slideIndex < slideCount) {
		slideIndex++;
	} else if ((slideIndex == slideCount || slideIndex < slideCount) && direction == direction2) {
		slideIndex--;
	} else if (slideIndex == slideCount) {
		direction = direction2;
	}
}
};

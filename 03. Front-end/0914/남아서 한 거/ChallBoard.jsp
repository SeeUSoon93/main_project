<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 도전레시피등록</title>
<link rel="stylesheet" href="ChellBoard/css" />

<%@ include file="MainHeader.jsp"%>

<style data-styled="" data-styled-version="5.3.11">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, menu, ol, ul, li, fieldset, form, label,
	legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside,
	canvas, details, embed, figure, figcaption, footer, header, hgroup,
	main, menu, nav, output, ruby, section, summary, time, mark, audio,
	video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
} /*!sc*/
article, aside, details, figcaption, figure, footer, header, hgroup,
	main, menu, nav, section {
	display: block;
} /*!sc*/
*[hidden] {
	display: none;
} /*!sc*/
body {
	line-height: 1;
} /*!sc*/
menu, ol, ul {
	list-style: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
} /*!sc*/
html {
	overflow-y: scroll;
} /*!sc*/
html, body {
	min-width: 320px;
	max-width: 2220px;
	padding: 0;
	margin: 0 auto;
	font-family: 'NanumGothic', -apple-system, BlinkMacSystemFont, Segoe UI,
		Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans,
		Helvetica Neue, sans-serif;
	font-style: normal;
	font-weight: normal;
	color: #303030;
	line-height: 1.2;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	-webkit-tap-highlight-color: transparent;
} /*!sc*/
a {
	color: inherit;
	-webkit-text-decoration: none;
	text-decoration: none;
} /*!sc*/
button {
	background-color: transparent;
	border: none;
	padding: 0;
} /*!sc*/
* {
	box-sizing: border-box;
	font-family: inherit;
} /*!sc*/
*::before, *::after {
	box-sizing: inherit;
}

@media ( max-width :726px) {
	.GlcgT {
		display: none;
	}
} /*!sc*/
data-styled.g26[id="global-navigation-bar__Right-sc-o1u7kx-5"] {
	content: "GlcgT,"
} /*!sc*/
.ljiJyq {
	display: none;
} /*!sc*/
@media ( max-width :726px) {
	.ljiJyq {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-pack: center;
		-webkit-justify-content: center;
		-ms-flex-pack: center;
		justify-content: center;
		-webkit-align-items: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
		position: relative;
		left: 6px;
		background-color: transparent;
		width: 36px;
		height: 36px;
	}
	.ljiJyq::after {
		background-image: url('/test/search-small.svg');
		background-size: 24px 24px;
		width: 24px;
		height: 24px;
		content: '';
	}
} /*!sc*/
data-styled.g30[id="global-navigation-bar__SearchButton-sc-o1u7kx-9"] {
	content: "ljiJyq,"
} /*!sc*/
.kkDqWk {
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	background: white;
	z-index: 30;
	box-shadow: 0px -2px 6px rgba(0, 0, 0, 0.2);
	box-shadow: none;
} /*!sc*/
@media ( max-width :726px) {
	.kkDqWk {
		box-shadow: none;
		border-bottom: 1px solid #f3f3f3;
	}
} /*!sc*/
data-styled.g42[id="layout__HeaderContainer-sc-pm8go9-0"] {
	content: "kkDqWk,"
} /*!sc*/
@media ( max-width :726px) {
	.kZzujy {
		width: 100%;
		height: 56px;
		border-bottom: 1px solid #f3f3f3;
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-align-items: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}
} /*!sc*/
data-styled.g43[id="layout__Header-sc-pm8go9-1"] {
	content: "kZzujy,"
} /*!sc*/
.jCmyTf {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
@media ( max-width :1080px) {
	.jCmyTf {
		width: 100%;
	}
} /*!sc*/
@media ( max-width :726px) {
	.jCmyTf {
		display: none;
	}
} /*!sc*/
data-styled.g44[id="layout__TempHeader-sc-pm8go9-2"] {
	content: "jCmyTf,"
} /*!sc*/
.dwQUSO {
	margin-top: 56px;
	margin-bottom: 64px;
	padding-left: 24px;
	padding-right: 24px;
}

/* 
-------------------------
남겨놓기!!
---------------------------
*/
data-styled.g202[id="new-form-input__Container-sc-v9nf54-0"] {
	content: "bBprBw,"
} /*!sc*/
.fHOltn {
	width: 100%;
	margin-top: 22px;
	padding: 12.5px 15px;
	line-height: 19px;
	font-size: 16px;
	color: #6e6e6e;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	-webkit-transition: all .2s;
	transition: all .2s;
	height: 46px;
	color: #303030;
	font-weight: 600;
} /*!sc*/
.fHOltn::-webkit-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.fHOltn::-moz-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.fHOltn:-ms-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.fHOltn::placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.fHOltn:focus {
	-webkit-transition: all .2s;
	transition: all .2s;
	border: 1.4px solid #838383;
	box-shadow: 1.5px 1.5px 4.5px rgba(29, 12, 23, 0.18);
} /*!sc*/
.juhbCZ {
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
} /*!sc*/
data-styled.g211[id="new-form-textarea__Container-sc-ctv4m3-0"] {
	content: "juhbCZ,"
} /*!sc*/
.cVpYEC {
	width: 100%;
	min-height: 150px;
	margin-top: 22px;
	padding: 12.5px 15px;
	line-height: 19px;
	font-size: 16px;
	color: #6e6e6e;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	resize: none;
	overflow: visible;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
	height: 46px;
	color: #303030;
	font-weight: 600;
} /*!sc*/

/* 
이미지 올리는 css
*/
data-styled.g217[id="photo__Container-sc-eicnkd-0"] {
	content: "ldzabe,"
} /*!sc*/
.dXdptU {
	margin-top: 22px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	gap: 10px;
} /*!sc*/
data-styled.g218[id="photo__PhotoContainer-sc-eicnkd-1"] {
	content: "dXdptU,"
} /*!sc*/
.fjgLFw {
	width: 150px;
	height: 150px;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	font-size: 12.8px;
	color: #c1c1c1;
	cursor: pointer;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 10px;
	border: 2px solid #303030;
	color: #4f4f4f;
	font-weight: 600;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
} /*!sc*/
.fjgLFw:hover {
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
	border: 2px solid #f25c5c;
	color: #f25c5c;
} /*!sc*/
@media ( max-width :726px) {
	.fjgLFw {
		width: 100%;
	}
} /*!sc*/

/* 
이미지 올리고 사진 보여주는
*/
data-styled.g219[id="photo__UploadButton-sc-eicnkd-2"] {
	content: "fjgLFw,"
} /*!sc*/
.bzsTXQ {
	position: relative;
	height: 150px;
	background-color: #f3f3f3;
	border: 1px solid #e2e2e2;
	border-radius: 10px;
	-webkit-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
.bzsTXQ .header {
	font-size: 12px;
	font-weight: bold;
	color: #c1c1c1;
} /*!sc*/
.bzsTXQ .description {
	margin-top: 10px;
	line-height: 17px;
	font-size: 12px;
	color: #c1c1c1;
	white-space: pre-wrap;
	text-align: center;
} /*!sc*/
@media ( max-width :726px) {
	.bzsTXQ {
		-webkit-flex: 0;
		-ms-flex: 0;
		flex: 0;
	}
}

data-styled.g257[id="mood__CheckBox-sc-ami6xb-8"] {
	content: "eLVdFc,"
} /*!sc*/
.kwpUTs {
	width: 100%;
	padding-top: 50px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	gap: 30px;
} /*!sc*/
@media ( max-width :726px) {
	.kfYrhv {
		height: auto;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		padding-top: 15px;
		padding-bottom: 40px;
	}
} /*!sc*/
data-styled.g260[id="new__HeaderContainer-sc-13p2wqv-2"] {
	content: "kfYrhv,"
} /*!sc*/
.dXeLHv {
	padding: 72px 24px 70px;
	background: #ffffff;
	box-shadow: 1.5px 1.5px 4.5px rgba(29, 12, 23, 0.18);
	border-radius: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 20px;
} /*!sc*/
data-styled.g267[id="new__UploadButton-sc-13p2wqv-9"] {
	content: "MKMJM,"
} /*!sc*/
</style>
</head>
<body>
	<div id="__next" data-reactroot="">

		<div class="bubbling-limit">

			<div class="box1">

				<div class="box2"></div>
				<div id="temp-header" class="box3"></div>
			</div>

			<main class="box4">

				<div
					class="new__Container-sc-13p2wqv-0 kwpUTs style_custom-new__3zoW6">

					<div
						class="new__Left-sc-13p2wqv-1 kWbWSw style_custom-new__left__OkDY1">

						<div
							class="new__FormContainer-sc-13p2wqv-3 dXeLHv style_new-box__L5a6J">

							<div class="photo__Container-sc-eicnkd-0 ldzabe">

								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">칵테일 사진</h3>

								<div class="photo__PhotoContainer-sc-eicnkd-1 dXdptU">

									<button type="button"
										class="photo__UploadButton-sc-eicnkd-2 fjgLFw">

										<img src="/test/upload-photo.png" alt="이미지 업로드 버튼" />사진 업로드

									</button>

									<div class="photo__PhotoItemContainer-sc-eicnkd-3 bzsTXQ">

										<div class="header">추천사진 1</div>

										<div class="description">깔끔하게 흰 배경에 찍어보세요!</div>

									</div>

									<div class="photo__PhotoItemContainer-sc-eicnkd-3 bzsTXQ">

										<div class="header">추천사진 2</div>
										<div class="description">부가재료를 주위에 깔고 먹음직스럽게 찍어보세요!</div>

									</div>

									<div class="photo__PhotoItemContainer-sc-eicnkd-3 bzsTXQ">

										<div class="header">추천사진 3</div>
										<div class="description">어두운 배경에 분위기 끝판왕 조명과 함께 찍어보세요!</div>

									</div>

									<input type="file" accept="image/*" style="display: none"
										multiple="" />
								</div>
							</div>

							<div class="name__Container-sc-e426r3-0 iTCkb">

								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">칵테일 이름</h3>

								<div class="new-form-input__Container-sc-v9nf54-0 bBprBw">

									<input placeholder="이름을 지어주세요."
										class="new-form-input__Input-sc-v9nf54-1 fHOltn" />

									<div
										class="new-form-input__TextLengthCounter-sc-v9nf54-2 jvlAJM">
										0
										<!-- -->
										/
										<!-- -->
										50
									</div>

								</div>

							</div>

							<div class="english-name__Container-sc-5i9h6x-0 fBGIoP">

								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">칵테일 영문
									이름</h3>

								<div class="new-form-input__Container-sc-v9nf54-0 bBprBw">

									<input placeholder="이름을 지어주세요."
										class="new-form-input__Input-sc-v9nf54-1 fHOltn" />

									<div
										class="new-form-input__TextLengthCounter-sc-v9nf54-2 jvlAJM">
										0
										<!-- -->
										/
										<!-- -->
										50
									</div>

								</div>

							</div>

							<div class="description__Container-sc-12p2a4r-0 eAFTkI">

								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">칵테일 설명</h3>

								<div class="new-form-textarea__Container-sc-ctv4m3-0 juhbCZ">

									<textarea placeholder="칵테일 소개를 적어주세요."
										class="new-form-textarea__TextArea-sc-ctv4m3-1 cVpYEC"></textarea>

									<div
										class="new-form-textarea__TextLengthCounter-sc-ctv4m3-2 ebdefp">
										0
										<!-- -->
										/
										<!-- -->
										200
									</div>

								</div>

							</div>


							<div class="recipe__Container-sc-1fnf93e-0 dgEsuY">

								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">레시피 정보</h3>

								<div class="new-form-textarea__Container-sc-ctv4m3-0 juhbCZ">

									<textarea placeholder="레시피에 대한 설명을 적어주세요."
										class="new-form-textarea__TextArea-sc-ctv4m3-1 cVpYEC"></textarea>

									<div
										class="new-form-textarea__TextLengthCounter-sc-ctv4m3-2 ebdefp">
										0
										<!-- -->
										/
										<!-- -->
										200
									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</main>


		</div>

	</div>
	
</body>

</html>
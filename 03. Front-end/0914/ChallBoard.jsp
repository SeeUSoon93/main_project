<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
} /*!sc*/
blockquote, q {
	quotes: none;
} /*!sc*/
blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
} /*!sc*/
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
input:focus, textarea:focus {
	outline: none;
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
} /*!sc*/
data-styled.g2[id="sc-global-fSXThQ1"] {
	content: "sc-global-fSXThQ1,"
} /*!sc*/
.grNpHS {
	position: relative;
	height: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
data-styled.g3[id="nav-link__Container-sc-16e4rdc-0"] {
	content: "grNpHS,"
} /*!sc*/
.cXvTZo {
	height: 100%;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
data-styled.g4[id="nav-link__StyledLink-sc-16e4rdc-1"] {
	content: "cXvTZo,"
} /*!sc*/
.caukHq {
	position: relative;
	height: 39px;
	border: 1px solid #e2e2e2;
	border-radius: 10px;
	padding: 0 18px;
	font-size: 12px;
	-webkit-letter-spacing: -1px;
	-moz-letter-spacing: -1px;
	-ms-letter-spacing: -1px;
	letter-spacing: -1px;
	font-weight: 800;
	background-color: black;
	color: #ffffff;
	cursor: pointer;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	gap: 5px;
} /*!sc*/
data-styled.g6[id="app-link__Button-sc-1et05zg-0"] {
	content: "caukHq,"
} /*!sc*/
.dQTgVz {
	position: relative;
	height: 56px;
	padding: 0 24px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
} /*!sc*/
@media ( max-width :1080px) {
} /*!sc*/
@media ( max-width :726px) {
	.dQTgVz {
		width: 100%;
		height: 44px;
		padding: 0 15px;
		-webkit-align-items: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}
} /*!sc*/
data-styled.g21[id="global-navigation-bar__Container-sc-o1u7kx-0"] {
	content: "dQTgVz,"
} /*!sc*/
.lgMQTN {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
data-styled.g22[id="global-navigation-bar__Left-sc-o1u7kx-1"] {
	content: "lgMQTN,"
} /*!sc*/
.kTNDHV {
	height: 100%;
	margin-left: 65px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 30px;
} /*!sc*/
@media ( max-width :726px) {
	.kTNDHV {
		display: none;
	}
} /*!sc*/
data-styled.g23[id="global-navigation-bar__NavItemsContainer-sc-o1u7kx-2"]
	{
	content: "kTNDHV,"
} /*!sc*/
.gdWoYD {
	display: none;
} /*!sc*/
@media ( max-width :726px) {
	.gdWoYD {
		margin-right: 10px;
		background-color: transparent;
		border: none;
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
		cursor: pointer;
	}
	.gdWoYD::after {
		background-image: url('/test/menu.png');
		background-size: 24px 24px;
		width: 24px;
		height: 24px;
		content: '';
	}
} /*!sc*/
data-styled.g24[id="global-navigation-bar__DrawerButton-sc-o1u7kx-3"] {
	content: "gdWoYD,"
} /*!sc*/
.cyXbru {
	height: 28px;
	cursor: pointer;
} /*!sc*/
@media ( max-width :726px) {
	.cyXbru {
		height: 24px;
	}
} /*!sc*/
data-styled.g25[id="global-navigation-bar__LogoImage-sc-o1u7kx-4"] {
	content: "cyXbru,"
} /*!sc*/
.GlcgT {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 20px;
} /*!sc*/
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
} /*!sc*/
@media ( max-width :726px) {
	.dwQUSO {
		margin-top: 56px;
		padding-left: 15px;
		padding-right: 15px;
	}
} /*!sc*/
data-styled.g45[id="layout__MainContainer-sc-pm8go9-3"] {
	content: "dwQUSO,"
} /*!sc*/
.kwiwzg {
	position: fixed;
	width: 100%;
	bottom: 0;
	left: 0;
	right: 0;
	height: 42px;
	background-color: white;
	z-index: 30;
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding-left: 20px;
	padding-right: 20px;
	height: 32px;
} /*!sc*/
@media ( max-width :726px) {
	.kwiwzg {
		display: none;
	}
} /*!sc*/
data-styled.g46[id="layout__Footer-sc-pm8go9-4"] {
	content: "kwiwzg,"
} /*!sc*/
.cpucpc {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 12px;
} /*!sc*/
data-styled.g47[id="layout__Flex-sc-pm8go9-5"] {
	content: "cpucpc,"
} /*!sc*/
.fonNCX {
	margin-right: 8px;
	font-size: 12px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	font-weight: 800;
	color: #6e6e6e;
} /*!sc*/
data-styled.g48[id="layout__Team-sc-pm8go9-6"] {
	content: "fonNCX,"
} /*!sc*/
.cEAvLC {
	font-size: 12px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #a2a2a2;
} /*!sc*/
.hJmogf {
	font-size: 12px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #a2a2a2;
	font-weight: 600;
	cursor: pointer;
} /*!sc*/
data-styled.g49[id="layout__Member-sc-pm8go9-7"] {
	content: "cEAvLC,hJmogf,"
} /*!sc*/
.hEAgET .toast {
	min-height: auto;
	max-height: auto;
	height: auto;
	background-color: #303030;
	border-radius: 10px;
} /*!sc*/
.hEAgET .body {
	color: white;
	font-size: 16px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
} /*!sc*/
@media ( max-width :726px) {
	.hEAgET {
		width: calc(100% - 30px);
	}
} /*!sc*/
@media ( max-width :480px) {
	.hEAgET {
		bottom: 1rem;
		left: 50%;
		-webkit-transform: translateX(-50%);
		-ms-transform: translateX(-50%);
		transform: translateX(-50%);
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		gap: 12px;
	}
} /*!sc*/
data-styled.g56[id="_app__Toast-sc-1s5dnr6-0"] {
	content: "hEAgET,"
} /*!sc*/
.kLXGPE {
	font-size: 16px;
	line-height: 16px;
	font-weight: 800;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #4f4f4f;
} /*!sc*/
.kLXGPE::after {
	content: '';
	background-image: url('/test/ic_arrow_bottom.png');
	background-size: 10px 6px;
	width: 10px;
	height: 6px;
	display: inline-block;
	margin-left: 5px;
	text-align: center;
	vertical-align: middle;
} /*!sc*/
data-styled.g121[id="section-header__Text-sc-gvhorm-0"] {
	content: "kLXGPE,"
} /*!sc*/
.bBprBw {
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
} /*!sc*/
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
data-styled.g203[id="new-form-input__Input-sc-v9nf54-1"] {
	content: "fHOltn,"
} /*!sc*/
.jvlAJM {
	margin-top: 5px;
	line-height: 14px;
	font-size: 12px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #a2a2a2;
	-webkit-align-self: flex-end;
	-ms-flex-item-align: end;
	align-self: flex-end;
} /*!sc*/
data-styled.g204[id="new-form-input__TextLengthCounter-sc-v9nf54-2"] {
	content: "jvlAJM,"
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
.cVpYEC::-webkit-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.cVpYEC::-moz-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.cVpYEC:-ms-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.cVpYEC::placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.cVpYEC:focus {
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
	border: 1.4px solid #838383;
	box-shadow: 1.5px 1.5px 4.5px rgba(29, 12, 23, 0.18);
} /*!sc*/
data-styled.g212[id="new-form-textarea__TextArea-sc-ctv4m3-1"] {
	content: "cVpYEC,"
} /*!sc*/
.ebdefp {
	margin-top: 5px;
	line-height: 14px;
	font-size: 12px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #a2a2a2;
	-webkit-align-self: flex-end;
	-ms-flex-item-align: end;
	align-self: flex-end;
} /*!sc*/
data-styled.g213[id="new-form-textarea__TextLengthCounter-sc-ctv4m3-2"]
	{
	content: "ebdefp,"
} /*!sc*/
.eAFTkI {
	margin-bottom: 60px;
} /*!sc*/
data-styled.g214[id="description__Container-sc-12p2a4r-0"] {
	content: "eAFTkI,"
} /*!sc*/
.iTCkb {
	margin-bottom: 42px;
} /*!sc*/
data-styled.g215[id="name__Container-sc-e426r3-0"] {
	content: "iTCkb,"
} /*!sc*/
.dgEsuY {
	margin-bottom: 60px;
} /*!sc*/
data-styled.g216[id="recipe__Container-sc-1fnf93e-0"] {
	content: "dgEsuY,"
} /*!sc*/
.ldzabe {
	margin-bottom: 42px;
} /*!sc*/
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
@media ( max-width :726px) {
	.dXdptU {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
	}
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
} /*!sc*/
data-styled.g220[id="photo__PhotoItemContainer-sc-eicnkd-3"] {
	content: "bzsTXQ,"
} /*!sc*/
.gDMuAR {
	width: 100%;
	padding: 24px;
	border-radius: 10px;
	background-color: #f3f3f3;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 10px;
} /*!sc*/
data-styled.g234[id="item__Container-sc-105fylu-0"] {
	content: "gDMuAR,"
} /*!sc*/
.fxZlDy {
	margin-bottom: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
data-styled.g235[id="item__HeaderContainer-sc-105fylu-1"] {
	content: "fxZlDy,"
} /*!sc*/
.bZuRNy {
	height: 16px;
	line-height: 16px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	font-weight: 800;
	color: #4f4f4f;
} /*!sc*/
data-styled.g236[id="item__Header-sc-105fylu-2"] {
	content: "bZuRNy,"
} /*!sc*/
.fbwzcB {
	position: relative;
	width: 100%;
	height: 44px;
	padding-left: 15px;
	padding-right: 15px;
	background-color: white;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
} /*!sc*/
data-styled.g238[id="item__IngredientSearchTrigger-sc-105fylu-4"] {
	content: "fbwzcB,"
} /*!sc*/
.gcRoZg {
	padding-top: 2px;
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
data-styled.g240[id="item__PlaceHolder-sc-105fylu-6"] {
	content: "gcRoZg,"
} /*!sc*/
.fayPxB {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	gap: 10px;
} /*!sc*/
data-styled.g241[id="item__AmountContainer-sc-105fylu-7"] {
	content: "fayPxB,"
} /*!sc*/
.NRbTn {
	width: 100%;
	height: 44px;
	padding-left: 15px;
	padding-right: 15px;
	background-color: white;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	line-height: 19px;
	font-size: 16px;
	color: #6e6e6e;
} /*!sc*/
.NRbTn::-webkit-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.NRbTn::-moz-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.NRbTn:-ms-input-placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.NRbTn::placeholder {
	font-size: 12.8px;
	color: #c1c1c1;
} /*!sc*/
.NRbTn:focus {
	border: 1px solid #434245;
} /*!sc*/
.NRbTn:disabled {
	background-color: rgba(255, 255, 255, 0.3);
} /*!sc*/
data-styled.g242[id="item__AmountInput-sc-105fylu-8"] {
	content: "NRbTn,"
} /*!sc*/
.dzjlqU {
	position: relative;
	width: 100%;
	height: 44px;
	padding-left: 15px;
	padding-right: 15px;
	background-color: white;
	border: 1.4px solid #e6e4e8;
	border-radius: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
	background-color: rgba(255, 255, 255, 0.3);
	cursor: auto;
} /*!sc*/
data-styled.g243[id="item__UnitSelectBox-sc-105fylu-9"] {
	content: "dzjlqU,"
} /*!sc*/
.fVQhKd {
	margin-bottom: 42px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 20px;
} /*!sc*/
data-styled.g246[id="ingredients__Container-sc-1u9s98y-0"] {
	content: "fVQhKd,"
} /*!sc*/
.gZGmds {
	width: 115px;
	height: 52px;
	border: 2px solid #303030;
	border-radius: 10px;
	font-size: 14px;
	box-shadow: 3px 8px 20px rgba(0, 0, 0, 0.08);
	cursor: pointer;
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
	-webkit-align-self: flex-end;
	-ms-flex-item-align: end;
	align-self: flex-end;
} /*!sc*/
.gZGmds:hover {
	border: 2px solid #f25c5c;
	color: #f25c5c;
	cursor: pointer;
} /*!sc*/
.gZGmds:disabled {
	border: 2px solid #838383;
	background-color: rgba(0, 0, 0, 0.1);
	color: #6e6e6e;
	cursor: auto;
} /*!sc*/
data-styled.g247[id="ingredients__AddButton-sc-1u9s98y-1"] {
	content: "gZGmds,"
} /*!sc*/
.fBGIoP {
	margin-bottom: 42px;
} /*!sc*/
data-styled.g248[id="english-name__Container-sc-5i9h6x-0"] {
	content: "fBGIoP,"
} /*!sc*/
@media ( max-width :1340px) {
	.iqeEoo {
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
	}
} /*!sc*/
data-styled.g249[id="mood__Container-sc-ami6xb-0"] {
	content: "iqeEoo,"
} /*!sc*/
.dyqWgq {
	margin-top: 4px;
	font-size: 14px;
	line-height: 26px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #6e6e6e;
} /*!sc*/
data-styled.g250[id="mood__Description-sc-ami6xb-1"] {
	content: "dyqWgq,"
} /*!sc*/
.kZLWiX {
	margin-top: 30px;
	display: grid;
	grid-template-columns: repeat(auto-fill, 84px);
	-webkit-column-gap: 11px;
	column-gap: 11px;
	row-gap: 32px;
} /*!sc*/
data-styled.g251[id="mood__MoodContainer-sc-ami6xb-2"] {
	content: "kZLWiX,"
} /*!sc*/
.bILELW {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 4px;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
} /*!sc*/
data-styled.g252[id="mood__MoodItemWrap-sc-ami6xb-3"] {
	content: "bILELW,"
} /*!sc*/
.cdjZIq {
	position: relative;
	width: 84px;
	height: 84px;
	border: 1px solid transparent;
	border-radius: 10px;
	cursor: pointer;
} /*!sc*/
data-styled.g253[id="mood__MoodImageWrap-sc-ami6xb-4"] {
	content: "cdjZIq,"
} /*!sc*/
.EgSQh {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#dcfff4, #90bdff);
} /*!sc*/
.ewKfsv {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#ebff95, #fff173);
} /*!sc*/
.ksCPhc {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#ffebb8, #ff522c);
} /*!sc*/
.hfFFNU {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#0c2355, #49a5e1);
} /*!sc*/
.MXyZH {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#ffe1cc, #aa9cbd);
} /*!sc*/
.jhIGZa {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#e84e4b, #be121f);
} /*!sc*/
.bKpbMI {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#ffe1cc, #e87fbe);
} /*!sc*/
.kifmYd {
	position: relative;
	width: 84px;
	height: 84px;
	left: -1px;
	top: -1px;
	border-radius: 10px;
	border: 1px solid white;
	object-fit: cover;
	background: linear-gradient(#002727, #398c78);
} /*!sc*/
data-styled.g254[id="mood__MoodImage-sc-ami6xb-5"] {
	content: "EgSQh,ewKfsv,ksCPhc,hfFFNU,MXyZH,jhIGZa,bKpbMI,kifmYd,"
} /*!sc*/
.RwiaM {
	font-size: 14px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	font-weight: 600;
} /*!sc*/
data-styled.g255[id="mood__MoodTitle-sc-ami6xb-6"] {
	content: "RwiaM,"
} /*!sc*/
.eLgzix {
	font-size: 10px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #6e6e6e;
} /*!sc*/
data-styled.g256[id="mood__MoodDescription-sc-ami6xb-7"] {
	content: "eLgzix,"
} /*!sc*/
.eLVdFc {
	width: 20px;
	height: 20px;
	position: absolute;
	top: 4px;
	right: 4px;
	border-radius: 10px;
	border: 1px solid white;
	background-color: rgba(0, 0, 0, 0.1);
} /*!sc*/
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
@media ( max-width :1340px) {
	.kwpUTs {
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		-webkit-align-items: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}
} /*!sc*/
@media ( max-width :726px) {
	.kwpUTs {
		padding-top: 15px;
	}
} /*!sc*/
data-styled.g258[id="new__Container-sc-13p2wqv-0"] {
	content: "kwpUTs,"
} /*!sc*/
.kWbWSw {
	width: 930px;
	min-width: 930px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	gap: 20px;
} /*!sc*/
@media ( max-width :1080px) {
	.kWbWSw {
		width: 100%;
		min-width: 100%;
	}
} /*!sc*/
data-styled.g259[id="new__Left-sc-13p2wqv-1"] {
	content: "kWbWSw,"
} /*!sc*/
.kfYrhv {
	height: 260px;
	padding: 0 50px;
	background: #ffffff;
	box-shadow: 1.5px 1.5px 4.5px rgba(29, 12, 23, 0.18);
	border-radius: 10px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	gap: 36px;
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
@media ( max-width :726px) {
	.dXeLHv {
		padding: 37px 15px 35px;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		-webkit-box-pack: center;
		-webkit-justify-content: center;
		-ms-flex-pack: center;
		justify-content: center;
		gap: 32px;
	}
} /*!sc*/
data-styled.g261[id="new__FormContainer-sc-13p2wqv-3"] {
	content: "dXeLHv,"
} /*!sc*/
@media ( max-width :1340px) {
	.kqYLik {
		width: 930px;
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		gap: 10px;
	}
} /*!sc*/
@media ( max-width :1080px) {
	.kqYLik {
		width: 100%;
	}
} /*!sc*/
@media ( max-width :726px) {
	.kqYLik {
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
	}
} /*!sc*/
data-styled.g262[id="new__RightOrBottom-sc-13p2wqv-4"] {
	content: "kqYLik,"
} /*!sc*/
.gRcbud {
	width: 314px;
	height: -webkit-fit-content;
	height: -moz-fit-content;
	height: fit-content;
	max-height: 1000px;
	padding: 42px 20px 20px 20px;
	background: #ffffff;
	box-shadow: 0rem 0.47rem 2.19rem rgba(8, 10, 37, 0.03), 0rem 0.94rem
		1.41rem rgba(8, 10, 37, 0.03), 0rem 0.25rem 0.53rem
		rgba(8, 10, 37, 0.05), 0rem 0.13rem 0.19rem rgba(8, 10, 37, 0.03);
	border-radius: 10px;
} /*!sc*/
@media ( max-width :1340px) {
	.gRcbud {
		position: relative;
		top: 0;
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
	}
	.gRcbud button {
		display: none;
	}
} /*!sc*/
@media ( max-width :726px) {
	.gRcbud {
		width: 100%;
	}
} /*!sc*/
data-styled.g263[id="new__MoodContainer-sc-13p2wqv-5"] {
	content: "gRcbud,"
} /*!sc*/
.kOkuSj {
	display: none;
} /*!sc*/
@media ( max-width :1340px) {
	.kOkuSj {
		width: 314px;
		padding: 20px;
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		background: #ffffff;
		box-shadow: 1.5px 1.5px 4.5px rgba(29, 12, 23, 0.18);
		border-radius: 10px;
	}
	.kOkuSj button {
		margin: 0;
		-webkit-align-self: center;
		-ms-flex-item-align: center;
		align-self: center;
	}
} /*!sc*/
@media ( max-width :726px) {
	.kOkuSj {
		width: 100%;
	}
} /*!sc*/
data-styled.g264[id="new__SeperateButtonContainer-sc-13p2wqv-6"] {
	content: "kOkuSj,"
} /*!sc*/
.ffSagV {
	width: 200px;
	height: 200px;
	border-radius: 100px;
	box-shadow: 0rem 0.47rem 2.19rem rgba(8, 10, 37, 0.03), 0rem 0.94rem
		1.41rem rgba(8, 10, 37, 0.03), 0rem 0.25rem 0.53rem
		rgba(8, 10, 37, 0.05), 0rem 0.13rem 0.19rem rgba(8, 10, 37, 0.03);
} /*!sc*/
@media ( max-width :726px) {
	.ffSagV {
		width: 138px;
		height: 138px;
	}
} /*!sc*/
data-styled.g265[id="new__HeaderImage-sc-13p2wqv-7"] {
	content: "ffSagV,"
} /*!sc*/
.gigYpF {
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
} /*!sc*/
.gigYpF .label {
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #4f4f4f;
} /*!sc*/
.gigYpF .title {
	margin-top: 10px;
	font-size: 24px;
	font-weight: bold;
	-webkit-letter-spacing: -1px;
	-moz-letter-spacing: -1px;
	-ms-letter-spacing: -1px;
	letter-spacing: -1px;
	color: #4f4f4f;
} /*!sc*/
.gigYpF .description {
	margin-top: 25px;
	line-height: 26px;
	-webkit-letter-spacing: -0.5px;
	-moz-letter-spacing: -0.5px;
	-ms-letter-spacing: -0.5px;
	letter-spacing: -0.5px;
	color: #838383;
	white-space: pre;
} /*!sc*/
@media ( max-width :726px) {
	.gigYpF {
		-webkit-align-items: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}
	.gigYpF .description {
		font-size: 12px;
		margin-top: 25px;
		text-align: center;
	}
} /*!sc*/
data-styled.g266[id="new__HeaderDescriptionContainer-sc-13p2wqv-8"] {
	content: "gigYpF,"
} /*!sc*/
.MKMJM {
	width: 100%;
	height: 52px;
	padding-left: 10px;
	margin-top: 65px;
	border-radius: 10px;
	box-shadow: 3px 6px 20px rgba(228, 32, 32, 0.2);
	background-color: #f25c5c;
	color: rgba(255, 255, 255, 0.85);
	font-weight: bold;
	font-size: 18px;
	-webkit-letter-spacing: -1px;
	-moz-letter-spacing: -1px;
	-ms-letter-spacing: -1px;
	letter-spacing: -1px;
	cursor: pointer;
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
	-webkit-align-self: flex-end;
	-ms-flex-item-align: end;
	align-self: flex-end;
	gap: 5px;
} /*!sc*/
data-styled.g267[id="new__UploadButton-sc-13p2wqv-9"] {
	content: "MKMJM,"
} /*!sc*/
</style>
</head>
<body>
	<div id="__next" data-reactroot="">
		<link rel="stylesheet" type="text/css"
			href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" />
		<link rel="stylesheet" type="text/css"
			href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" />
		<div class="bubbling-limit">
			<div class="layout__HeaderContainer-sc-pm8go9-0 kkDqWk custom-header">
				<div class="layout__Header-sc-pm8go9-1 kZzujy">

				</div>
				<div id="temp-header" class="layout__TempHeader-sc-pm8go9-2 jCmyTf"></div>
			</div>
			<main class="layout__MainContainer-sc-pm8go9-3 dwQUSO">
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
							<div class="ingredients__Container-sc-1u9s98y-0 fVQhKd">
								<h3 class="section-header__Text-sc-gvhorm-0 kLXGPE">재료 정보</h3>
								<div class="item__Container-sc-105fylu-0 gDMuAR">
									<div class="item__HeaderContainer-sc-105fylu-1 fxZlDy">
										<div class="item__Header-sc-105fylu-2 bZuRNy">재료1</div>
									</div>
									<div class="item__IngredientSearchTrigger-sc-105fylu-4 fbwzcB">
										<span class="item__PlaceHolder-sc-105fylu-6 gcRoZg">재료
											이름을 검색해주세요</span>
									</div>
									<div class="item__AmountContainer-sc-105fylu-7 fayPxB">
										<input placeholder="용량" disabled=""
											class="item__AmountInput-sc-105fylu-8 NRbTn" />
										<div disabled=""
											class="item__UnitSelectBox-sc-105fylu-9 dzjlqU">
											<span class="item__PlaceHolder-sc-105fylu-6 gcRoZg">단위를
												선택해주세요</span>
										</div>
									</div>
								</div>
								<button
									class="ingredients__AddButton-sc-1u9s98y-1 gZGmds style_custom-btn__JIY70"
									type="button" disabled="">재료 추가</button>
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
			<div class="layout__Footer-sc-pm8go9-4 kwiwzg">
				<div class="layout__Flex-sc-pm8go9-5 cpucpc">
					<span class="layout__Team-sc-pm8go9-6 fonNCX">Fun.D 7기</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">곽태정</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">김경환</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">김유진</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">박선주</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">신영주</span><span
						class="layout__Member-sc-pm8go9-7 hJmogf">이동현</span><span
						class="layout__Member-sc-pm8go9-7 cEAvLC">황재성</span>
				</div>
				<img style="height: 20px" src="/test/logo.png" />
			</div>
		</div>
		<div class="Toastify"></div>
	</div>
	<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"isLoggedIn":true,"allIngredientList":[{"RNUM":1,"NAME_KOR":"갈리아노","NAME_ENG":"Galliano","ABV":30,"ITEM_ID":69,"COMMENTS":"감초, 아니스, 바닐라 향을 함유한 달콤한 이탈리아 허브 리큐르로 도수는 약 30~42%이고 길쭉한 병에 담겨있다. 이탈리아 전쟁 영웅 Giuseppe Galliano의 이름에서 유래되었다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/022.갈리아노.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":2,"NAME_KOR":"계란","NAME_ENG":"Egg","ABV":0,"ITEM_ID":12,"COMMENTS":"칵테일에 사용할 때 크림같고 부드러운 질감을 제공합니다. 노른자와 흰자를 구분하여 사용되기도 합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/012.계란.png","CATE_2":"other","CATE_1":"material"},{"RNUM":3,"NAME_KOR":"계란 리큐르","NAME_ENG":"Egg liqueur","ABV":17,"ITEM_ID":129,"COMMENTS":"브랜디를 베이스로 계란 노른자와 여러종류의 허브, 설탕을 배합하여 만든 리큐르. 바닐라향이 가미된 커스터드 향과 에그노그처럼 부드럽고 크림같은 질감이 특징으로 마시기전에 병을 잘 흔들어서 따른다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/055.계란리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":4,"NAME_KOR":"계피 스틱","NAME_ENG":"Cinnamon sticks","ABV":0,"ITEM_ID":102,"COMMENTS":"갈포과의 식물로서 나무의 껍질로 만들어 약간 매운 맛과 단맛을 동시에 갖는 향료. 칵테일 장식으로 계피 스틱이 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/057.계피스틱80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":5,"NAME_KOR":"골드 럼","NAME_ENG":"Gold rum","ABV":40,"ITEM_ID":131,"COMMENTS":"사탕수수에서 설탕을 만들고 난 찌꺼지인 당밀(Molasses)를 이용하여 증류시켜 만든 증류주로 골드 럼은 앰버 럼으로도 불리며 연한 갈색에 깊은 맛이 특징이다. 2년간 태운 오크통에서 숙성되며 카라멜향과 바닐라, 너츠 등의 향미를 냅니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/057.골드럼.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":6,"NAME_KOR":"골드슐라거","NAME_ENG":"Goldschlager","ABV":43,"ITEM_ID":132,"COMMENTS":"금박기술자라는 뜻으로 금박이 들어있는 높은 도수의 스위스 계피 리큐르","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/058.골드슐라거.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":7,"NAME_KOR":"그랑 마니에르","NAME_ENG":"Grand marnier","ABV":40,"ITEM_ID":73,"COMMENTS":"꼬냑 베이스에 열대 오렌지 에센스의 독특한 조화를 이룬 오렌지 맛 브랜디 리큐르. 짙은 황금색과 갈색톤을 띄며 오렌지와 꽃의 섬세한 향기로 은은한 뒷 맛을 즐길 수 있다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/026.그랑마니에르90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":8,"NAME_KOR":"그레나딘 시럽","NAME_ENG":"Grenadine","ABV":0,"ITEM_ID":15,"COMMENTS":"석류와 붉은 건포도로 만든 붉은 시럽으로 달콤한 풍미와 색 때문에 칵테일에 많이 사용됩니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/015.그레나딘시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":9,"NAME_KOR":"꼬냑","NAME_ENG":"Cognac","ABV":40,"ITEM_ID":60,"COMMENTS":"프랑스 꼬냑 지방에서 생산되는 브랜디로 2번 증류하고 오크통에서 최소 2년 동안 숙성됩니다. 꼬냑 지방의 포도주가 맛이 빨리 변하기 때문에 오랬동안 저장할 수가 없어 증류했던 것이 오늘날 브랜디를 만들게되었습니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/013.꼬냑90.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":10,"NAME_KOR":"꿀","NAME_ENG":"Honey","ABV":0,"ITEM_ID":16,"COMMENTS":"꽃과 과일 향을 가진 달콤한 점성있는 액체 감미료","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/016.꿀90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":11,"NAME_KOR":"꿀 시럽","NAME_ENG":"Honey syrup","ABV":0,"ITEM_ID":17,"COMMENTS":"설탕대신 꿀을 따뜻한 물에 섞어 만든 시럽","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/017.꿀시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":12,"NAME_KOR":"넛맥","NAME_ENG":"Grated Nutmeg","ABV":0,"ITEM_ID":45,"COMMENTS":"타원형 모양으로 육두구라고 불리는 넛맥은 음료에 풍미를 더해주는데, 칵테일에는 주로 갈아서 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/045.넛맥80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":13,"NAME_KOR":"다크 럼","NAME_ENG":"Dark rum","ABV":40,"ITEM_ID":65,"COMMENTS":"사탕수수에서 설탕을 만들고 난 찌꺼기인 당밀(Molasses)를 이용하여 발효, 증류시켜 만든 증류주. 다크럼은 스모키한 풍미를 위해 그을린 오크통에서 숙성되어 짙은 갈색에 맛과 향이 매우 강하게 느껴진다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/018.다크럼.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":14,"NAME_KOR":"데킬라 골드","NAME_ENG":"Tequila gold","ABV":40,"ITEM_ID":144,"COMMENTS":"데킬라는 용설란의 일종으로 멕시코 데킬라 지방에서만 재배되는 아가베로 만든 술로 골드 데킬라는 이중 증류와 오크통에서 숙성시키는 특징이 있다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/070.데킬라골드.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":15,"NAME_KOR":"데킬라 레포사도","NAME_ENG":"Tequila Reposado","ABV":40,"ITEM_ID":255,"COMMENTS":"데킬라는 용설란의 일종인 멕시코 데킬라 지방에서만 재배되는 아가베로 만든 술이다. 레포사도는 오크통에 2개월 이상 숙성하여 약간 갈색을 띄고있다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/e95b74ef-e75b-47f9-85c2-0e9ccc959e46b76f44b6b4e35ff1e9668e919.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":16,"NAME_KOR":"데킬라 블랑코","NAME_ENG":"Tequila blanco","ABV":40,"ITEM_ID":84,"COMMENTS":"데킬라는 용설란의 일종으로 멕시코 데킬라 지방에서만 재배되는 아가베로 만든 술로 데킬라 블랑코는 화이트 데킬라로 불리며 무색, 투명하여 칵테일에 주로 사용됩니다. 가볍고 샤프한 맛으로 용설란을 발효시킨 후 단식증류기로 두 번 증류하여 스테인레스 통에 단기간 저장한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/037.데킬라블랑코.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":17,"NAME_KOR":"데킬라 아네호","NAME_ENG":"Tequila Anejo","ABV":40,"ITEM_ID":256,"COMMENTS":"데킬라는 용설란의 일종인 멕시코 데킬라 지방에서만 재배되는 아가베로 만든 술이다. 아네호는 오크통에서 1년 이상 숙성되어 향과 맛이 더 부드럽고 풍부한 고급 데킬라이다. \r\n","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/0da0b8dc-0b47-4a53-a3db-3f590dafc46eb76f44b6b4e35ff1e9668e91a.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":18,"NAME_KOR":"드라이 베르무트","NAME_ENG":"Dry vermouth","ABV":18,"ITEM_ID":68,"COMMENTS":"베르뭇, 버무스라 불리며 와인에 40여종의 약재가 포함된 혼성 포도주로 원래 식전주로 만들었찌만 칵테일용으로 많이 이용된다. 드라이 베르무트는 화이트와인을 베이스로 초근목피향 첨가로 씁쓸한 맛이 난다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/021.드라이베르무트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":19,"NAME_KOR":"드라이 셰리","NAME_ENG":"Dry sherry","ABV":16,"ITEM_ID":67,"COMMENTS":"선택된 포도 품종의 완전한 발효로 생산되는 15-17%도수의 와인","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/020.드라이셰리.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":20,"NAME_KOR":"드람부이","NAME_ENG":"Drambuie","ABV":40,"ITEM_ID":66,"COMMENTS":"몰트 위스키, 허브, 향신료 및 꿀로 만든 달콤한 스코트랜드 리큐르. 스코틀랜드의 고대 게릭어인 Dram Buid Heach로 사람을 만족시키는 음료라는 뜻이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/019.드람부이90.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":21,"NAME_KOR":"딸기","NAME_ENG":"Strawberry","ABV":0,"ITEM_ID":108,"COMMENTS":"달콤하고 새콤한 빨간색 과일로 칵테일 장식에 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/063.딸기80.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":22,"NAME_KOR":"딸기 시럽","NAME_ENG":"Strawberry syrup","ABV":0,"ITEM_ID":109,"COMMENTS":"딸기로 만든 달콤한 시럽.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/064.딸기시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":23,"NAME_KOR":"라이 위스키","NAME_ENG":"Rye whiskey","ABV":40,"ITEM_ID":82,"COMMENTS":"라이(호밀) 51% 이상을 주재료로 곡물로 만든 위스키로, 발아시키지 않은 호밀과 맥아 또는 발아 호밀을 혼합해 만든 증류주입니다. 버번위스키와 색이 비슷하지만 맛과 향이 다릅니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/035.라이위스키.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":24,"NAME_KOR":"라임","NAME_ENG":"Lime","ABV":0,"ITEM_ID":21,"COMMENTS":"칵테일 장식으로 많이사용되는 강한 신맛의 녹색 과일로 레몬보다 조금 작습니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/021.라임90.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":25,"NAME_KOR":"라임 주스","NAME_ENG":"Lime juice","ABV":0,"ITEM_ID":111,"COMMENTS":"라임을 착즙하여 만든 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/066.라임주스90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":26,"NAME_KOR":"라즈베리 시럽","NAME_ENG":"Raspberry syrup","ABV":0,"ITEM_ID":107,"COMMENTS":"당밀에 나무딸기 라즈베리의 풍미를 가한 달콤하고 붉은색의 시럽","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/062.라즈베리시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":27,"NAME_KOR":"레드 와인","NAME_ENG":"Red wine","ABV":14,"ITEM_ID":81,"COMMENTS":"적포도주로 적포도의 포도 알맹이, 껍질, 씨까지 포함하여 즙을 낸 후 발효시켜 만든 발효주. 붉은 빛을 띄고 탄닌성분이 적다. 레드 와인의 대표 종류는 멜로, 피노누아, 까베르네 쇼비뇽 및 쉬라즈입니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/034.레드와인.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":28,"NAME_KOR":"레드불","NAME_ENG":"Red bull","ABV":0,"ITEM_ID":33,"COMMENTS":"레드불은 에너지 음료로 예거밤 칵테일에 예거 마이스터와 함께 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/033.레드불80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":29,"NAME_KOR":"레몬","NAME_ENG":"lemon","ABV":0,"ITEM_ID":19,"COMMENTS":"신맛이 나는 노란색 과일로 칵테일의 쓴맛을 완화시키면서 산뜻한 맛을 내주며 장식으로 많이 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/019.레몬80.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":30,"NAME_KOR":"레몬 리큐르","NAME_ENG":"Lemon liqueur","ABV":26,"ITEM_ID":146,"COMMENTS":"이탈리아 아말피 해안의 스푸사토 품종의 레몬을 사용하여 만든 레몬리큐르로 리몬첼로라 불린다. 스푸사토는 껍질이 두꺼워 산도가 낮고 향이 풍부한 것이 특징이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/072.레몬리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":31,"NAME_KOR":"레몬 주스","NAME_ENG":"Lemon juice","ABV":0,"ITEM_ID":110,"COMMENTS":"레몬을 착즙하여 만든 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/065.레몬주스90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":32,"NAME_KOR":"레몬에이드","NAME_ENG":"lemonade","ABV":0,"ITEM_ID":20,"COMMENTS":"레몬 주스, 물 및 설탕으로 구성된 달콤한 레몬 맛의 음료","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/020.레몬에이드90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":33,"NAME_KOR":"레몬티","NAME_ENG":"Lemon Tea","ABV":0,"ITEM_ID":253,"COMMENTS":"레몬조각과 레몬향을 균형있게 블렌딩하여 상큼한 맛과 향을 즐길수 있는 홍차로 따뜻하게 혹은 아이스티로 마신다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/114a10bb-4826-4f90-9a79-59077fb2f298b76f44b6b4e35ff1e9668e918.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":34,"NAME_KOR":"로즈마리","NAME_ENG":"Rosemary","ABV":0,"ITEM_ID":278,"COMMENTS":"특유의 향이 강한 허브의 일종으로 요리 뿐만 아니라 칵테일에도 종종 쓰인다. 로즈마리 특유의 향을 좋아하는 사람들은 하이볼에 종종 넣기도 한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/bd3531c4-5577-4080-980a-b8da5b577bb05e7e641ee43d14e631bfa2c17.png","CATE_2":"other","CATE_1":"material"},{"RNUM":35,"NAME_KOR":"릴레블랑","NAME_ENG":"Lillet Blanc","ABV":17,"ITEM_ID":136,"COMMENTS":"릴레브론드로 불리는 프랑스 식전주. 와인과 과일 향이 절묘하게 섞여있어 은은한 꽃향기와 달콤한 오렌지향이 난다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/062.릴레블랑.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":36,"NAME_KOR":"마라스키노 리큐르","NAME_ENG":"Maraschino liqueur","ABV":32,"ITEM_ID":137,"COMMENTS":"마라스카종의 체리를 사용하여 발효시키고 세번을 증류하여 숙성시킨 후 시럽 등을 첨가하여 만든 체리맛의 리큐르","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/063.마라스키노리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":37,"NAME_KOR":"마라스키노 체리","NAME_ENG":"Maraschino cherry","ABV":0,"ITEM_ID":22,"COMMENTS":"칵테일 체리라고 불리며, 설탕 시럽으로 코팅된 붉은색 체리입니다. 칵테일 장식으로 많이 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/022.마라스키노체리80.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":38,"NAME_KOR":"막걸리","NAME_ENG":"Makgeolli","ABV":6,"ITEM_ID":150,"COMMENTS":"우리나라 고유한 술의 하나. 맑은 술을 떠내지않고 그대로 걸러 짠 술로 빛깔이 흐리고 맛이 텁텁하다. 과음을 하고 나면 다음날 숙취가 심합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/076.막걸리.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":39,"NAME_KOR":"말리부 코코넛 럼","NAME_ENG":"Malibu","ABV":21,"ITEM_ID":77,"COMMENTS":"자메이카산 라이트 럼에 카리브해 지역에서 생산되는 코코넛과 당분을 첨가하여 만든 무색 투명하고 달콤한 코코넛 맛의 화이트 럼","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/030.말리부.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":40,"NAME_KOR":"망고 주스","NAME_ENG":"Mango Juice","ABV":0,"ITEM_ID":203,"COMMENTS":"망고를 착즙하여 만든 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/ebff265e-6a9a-426d-83b1-41fee3274735b76f44b6b4e35ff1e9668e915.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":41,"NAME_KOR":"맥주","NAME_ENG":"Beer","ABV":5,"ITEM_ID":52,"COMMENTS":"보리나 기타 곡물을 발효시켜 만든 4~6% 도수의 술로 맥주의 역사는 약 9500년으로 거슬러 올라갑니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/005.맥주.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":42,"NAME_KOR":"메이플 시럽","NAME_ENG":"Maple syrup","ABV":0,"ITEM_ID":106,"COMMENTS":"사탕 단풍나무의 수액을 짜서 만든 달콤하고 어두운색의 시럽","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/061.메이플시럽90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":43,"NAME_KOR":"물","NAME_ENG":"Water","ABV":0,"ITEM_ID":42,"COMMENTS":"물은 칵테일 믹서로 자주 사용되지 않지만 때로는 스카치 또는 버번과 혼합되어 도수를 약하게하고 더 복잡한 맛을 냅니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/042.물.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":44,"NAME_KOR":"미도리","NAME_ENG":"Midori","ABV":20,"ITEM_ID":78,"COMMENTS":"달콤하고 밝은 녹색의 멜론맛 리큐르로 1978년 일본에서 만들어졌고 일본어로 초록색을 의미합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/031.미도리.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":45,"NAME_KOR":"민트","NAME_ENG":"Mint","ABV":0,"ITEM_ID":24,"COMMENTS":"청량감있는 녹색 허브로 민트 잎은 신선하고 상쾌한 맛을 첨가하기 위해 다양한 칵테일에 사용되는데 새로 나온 잎이 3~4장 달린 끝부분을 사용합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/024.민트90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":46,"NAME_KOR":"밀키스","NAME_ENG":"Milkis","ABV":0,"ITEM_ID":287,"COMMENTS":"우유가 첨가된 밀크소다 탄산음료","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/71775508-2323-431e-bbd0-50501522f2455e7e641ee43d14e631bfa2c12.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":47,"NAME_KOR":"바나나","NAME_ENG":"Banana","ABV":0,"ITEM_ID":117,"COMMENTS":"길쭉하고 부드러운 달콤한 노란색 과일","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/072.바나나90.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":48,"NAME_KOR":"바나나 리큐르","NAME_ENG":"Banana liqueur","ABV":25,"ITEM_ID":123,"COMMENTS":"럼주 또는 기타 중성 증류주를 기본으로 하며 신선한 바나나와 설탕을 첨가하여 바나나맛이 나도록 만든 리큐르","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/049.바나나리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":49,"NAME_KOR":"바나나 시럽","NAME_ENG":"Banana Syrup","ABV":0,"ITEM_ID":252,"COMMENTS":"과일 시럽의 한 종류로 과일을 함유하여 깊은 풍미를 더하며 칵테일 뿐 아니라 다양한 용도로 활용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/a0b1187f-1e92-4021-91dc-47ae4667ed4eb76f44b6b4e35ff1e9668e90f.png","CATE_2":"other","CATE_1":"material"},{"RNUM":50,"NAME_KOR":"바닐라 추출액","NAME_ENG":"Vanilla Extract","ABV":0,"ITEM_ID":41,"COMMENTS":"바닐라 빈을 알코올에 담가 만든 향료로 칵테일에 단맛과 바닐라 향을 더할 때 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/041.바닐라추출액80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":51,"NAME_KOR":"바질","NAME_ENG":"Basil","ABV":0,"ITEM_ID":95,"COMMENTS":"허브의 왕이라고 알려진 향신료로 진 및 보드카 기반 칵테일에 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/050.바질90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":52,"NAME_KOR":"방울양파","NAME_ENG":"Silverskin Onion","ABV":0,"ITEM_ID":46,"COMMENTS":"일반 양파보다 매운맛이 덜한 작은 크기의 방울양파를 소금과 식초로 혼합하여 절여 칵테일 어니언으로 불리며, 칵테일 장식으로 사용되거나 칵테일에 풍미를 더합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/046.방울양파80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":53,"NAME_KOR":"백세주","NAME_ENG":"Baekseju","ABV":13,"ITEM_ID":151,"COMMENTS":"찹쌀로 만든 한국의 발효술로 전통적인 방식으로 양조하며 다양한 허브, 미량의 인삼을 넣어 감미로운 맛을 낸다. 백세주라는 이름은 이 술을 마시면 백세까지도 살 수 있다해서 붙여졌다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/077.백세주90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":54,"NAME_KOR":"버번 위스키","NAME_ENG":"Bourbon whiskey","ABV":45,"ITEM_ID":55,"COMMENTS":"옥수수와 호밀로 만든 아메리칸 위스키의 한 종류로, 미국 켄터키주의 버번지방을 중심으로 생산된 옥수수를 51% 이상 사용하여 만든 증류주다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/008.버번위스키.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":55,"NAME_KOR":"버터","NAME_ENG":"Butter","ABV":0,"ITEM_ID":98,"COMMENTS":"발효유나 생우유 또는 생크림을 유지방과 버터밀크가 분리될 때까지 휘저어 만든 유제품.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/053.버터90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":56,"NAME_KOR":"버터스카치 리큐르","NAME_ENG":"Butterscotch liqueur","ABV":15,"ITEM_ID":122,"COMMENTS":"버터와 흑설탕으로 만든 달콤하고 순한 리큐르로 보통 15~20% 정도의 알코올 도수입니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/048.버터스카치.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":57,"NAME_KOR":"베네딕틴 D.O.M","NAME_ENG":"Benedictine D.O.M","ABV":40,"ITEM_ID":53,"COMMENTS":"다양한 약초와 허브, 과일 껍질 등으로 만들어진 달콤한 허브 향의 꼬냑 기반 프랑스 리큐르. D.O.M은 라틴어로 Deo Optimo Maximo(데오 옵티모 맥시모)의 약어로 최대 최선의 신에게라는 뜻으로 카라멜과 꿀이 첨가된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/006.베네딕틴.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":58,"NAME_KOR":"베일리스","NAME_ENG":"Baileys","ABV":17,"ITEM_ID":51,"COMMENTS":"아이리쉬 위스키와 크림, 벨기에 초콜릿으로 만든 크림 리큐르로 달콤하면서도 부드러운 맛이 특징입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/004.베일리스.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":59,"NAME_KOR":"보드카","NAME_ENG":"Vodka","ABV":40,"ITEM_ID":85,"COMMENTS":"주로 곡물과 감자의 증류로 만들어지는 보드카는 무색, 무미, 무취의 특징을 갖고있다. 러시아어로 Voda Boa, 생명의 물에서 유래 되었다. 12세기경 러시아의 농민에 의해 창안된 술로서 증류주로서 오랜 역사를 가지고 있다. 어떠한 음료나 부재료와 잘 조화되기 때문에 칵테일의 기주로 많이 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/038.보드카.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":60,"NAME_KOR":"보드카 시트론","NAME_ENG":"Vodka citron","ABV":40,"ITEM_ID":86,"COMMENTS":"보드카에 여러 가지 과실을 첨가하여 향과 맛을 더해 일반 보드카보다 약간 낮은 도수를 가진 보드카로 오렌지, 레몬, 라임 등의 감귤류가 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/039.보드카시트론.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":61,"NAME_KOR":"복분자주","NAME_ENG":"Bokbunjajoo","ABV":15,"ITEM_ID":326,"COMMENTS":"복분자딸기 열매와 설탕을 이용하여 담근 과일주이다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/46ebc74b-22bf-48c1-a663-ec10e52e47eaea053c866a14f685269d74509.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":62,"NAME_KOR":"복숭아 리큐르","NAME_ENG":"Peach liqueur","ABV":20,"ITEM_ID":92,"COMMENTS":"복숭아 추출물과 신선한 향을 보존하기 위한 감미로운 브랜디를 결합하여 만든 리큐르로 설탕이 추가되었다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/045.복숭아리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":63,"NAME_KOR":"복숭아 보드카","NAME_ENG":"Peach Vodka","ABV":40,"ITEM_ID":288,"COMMENTS":"달콤한 복숭아향이 두드러지는 보드카","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/aeaf7f7f-f981-4fdb-b4a2-67c70eb465795e7e641ee43d14e631bfa2c13.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":64,"NAME_KOR":"복숭아 퓨레","NAME_ENG":"Peach puree","ABV":0,"ITEM_ID":116,"COMMENTS":"복숭아를 갈아서 부드럽게 만들어 칵테일에 걸죽한 질감과 복숭아 맛을 더해준다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/071.복숭아퓨레90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":65,"NAME_KOR":"봄베이 브램블","NAME_ENG":"Bombay Bramble","ABV":38,"ITEM_ID":204,"COMMENTS":"블랙베리와 라즈베리를 인퓨징한 진으로 브램블은 나무에서 열리는 베리류를 뜻한다. 베리 특유의 풍미와 신맛을 가지고있고 단맛이 없어 달달한 음료와 섞어마시면 좋다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/d45fb8dc-c460-453c-81af-0adb3123cb25b76f44b6b4e35ff1e9668e908.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":66,"NAME_KOR":"봄베이 사파이어","NAME_ENG":"Bombay Sapphire","ABV":47,"ITEM_ID":277,"COMMENTS":"유명한 진 중 하나. 47도라는 높은 도수와 일반적인 진에 비해 쥬니퍼베리와 감초 레몬 아몬드 등 10가지 재료 특유의 향이 강해 몇몇 진 베이스 칵테일에 쓰기에는 호불호가 갈린다. 물론 봄베이 특유의 향미를 응용한 봄베이 전용 칵테일도 존재한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/55c6992b-556f-464f-9bcc-f56317e362605e7e641ee43d14e631bfa2c0e.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":67,"NAME_KOR":"브랜디","NAME_ENG":"Brandy","ABV":40,"ITEM_ID":56,"COMMENTS":"와인을 증류하여 만든 술로 브랜디는 꽃 향미를 가지고 있으며 증류주에 독특한 향과 색상을 주기 위해 일반적으로 나무 통에서 숙성됩니다. 숙성시간이 길수록 품질이 향상됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/009.브랜디.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":68,"NAME_KOR":"블랙 베리","NAME_ENG":"blackberry","ABV":0,"ITEM_ID":97,"COMMENTS":"약간 쓴 뒷맛이 있는 작고 달콤한 과일. 블랙베리는 블랙베리 모히또에 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/052.블랙베리80.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":69,"NAME_KOR":"블루 큐라소","NAME_ENG":"Blue curacao","ABV":20,"ITEM_ID":54,"COMMENTS":"오렌지 향이 나는 달콤한 맛의 파란색 리큐어로 라라하 귤 열매의 껍질로 만든 큐라소 리큐르에 식용 색소로 색을 냈다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/007.블루큐라소.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":70,"NAME_KOR":"사과","NAME_ENG":"Apple","ABV":0,"ITEM_ID":3,"COMMENTS":"사과나무의 열매로, 세계적으로 널리 재배되는 열매 가운데 하나","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/003.사과60.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":71,"NAME_KOR":"사과 리큐르","NAME_ENG":"Apple liqueur","ABV":15,"ITEM_ID":49,"COMMENTS":"사과를 증류하여 만든 리큐르로 병에 담기 전에 설탕을 첨가한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/002.사과리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":72,"NAME_KOR":"사과 주스","NAME_ENG":"Apple juice","ABV":0,"ITEM_ID":94,"COMMENTS":"사과를 착즙한 과즙주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/049.사과주스70.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":73,"NAME_KOR":"사이다","NAME_ENG":"Sprite","ABV":0,"ITEM_ID":93,"COMMENTS":"액상과당, 설탕, 레몬향, 라임향, 구연산 등을 원료로 만든 무색 투명한 카페인이 없는 탄산음료로 7Up과 스프라이트와 같이 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/048.사이다80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":74,"NAME_KOR":"산사춘","NAME_ENG":"Sansachun","ABV":13,"ITEM_ID":152,"COMMENTS":"쌀을 주원료로 하여 산사나무와 산수유 열매로 향과 맛의 깊이를 더했다. 은은한 과실향에 새콤한 맛이 미각을 살려준다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/078.산산춘90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":75,"NAME_KOR":"살구 브랜디","NAME_ENG":"Apricot brandy","ABV":24,"ITEM_ID":50,"COMMENTS":"브랜디에 살구와 여러 가지 향료를 첨가하여 당분과 함께 침지법을 사용하여 만든 리큐르로 살구향과 살구씨에서 우러난 아몬드향이 특징입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/003.살구브랜디.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":76,"NAME_KOR":"삼부카","NAME_ENG":"Sambuca","ABV":38,"ITEM_ID":140,"COMMENTS":"아니스(Anis) 및 여러 가지 부재료가 사용되었으며 스텐레스통에서 숙성시켜 만든 무색 투명한 리큐르. 이탈리아에서는 엘더베리를 삼부카 니그라(Sambuca Nigra)라고 불러 이름을 따왔습니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/066.삼부카.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":77,"NAME_KOR":"샐러리","NAME_ENG":"Celery","ABV":0,"ITEM_ID":5,"COMMENTS":"특유의 향을 가진 녹색 채소로 칵테일 장식으로 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/005.샐러리.png","CATE_2":"other","CATE_1":"material"},{"RNUM":78,"NAME_KOR":"생 제르망","NAME_ENG":"St Germain","ABV":20,"ITEM_ID":199,"COMMENTS":"국내에서는 인지도가 상대적으로 낮은 향신료이자 꽃인 엘더 플라워로 만든 프랑스 산 프리미엄 리큐르","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/b287efa3-c119-406a-ab07-d88ad588db33b76f44b6b4e35ff1e9668e904.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":79,"NAME_KOR":"샤르트뢰즈 그린","NAME_ENG":"Chartreuse green","ABV":55,"ITEM_ID":125,"COMMENTS":"130가지 허브와 식물, 꽃으로 숙성시킨 증류주로 만든 프랑스 리큐르. 샤르트뢰즈는 프랑스 그르노블 지역에 위치한 그랑 샤르트뢰즈 수도원의 이름을 따서 명명되었습니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/051.샤르트뢰즈그린.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":80,"NAME_KOR":"샤르트뢰즈 옐로우","NAME_ENG":"Chartreuse yellow","ABV":40,"ITEM_ID":148,"COMMENTS":"130가지 허브와 식물, 꽃으로 숙성시킨 증류주로 만든 프랑스 리큐르. 샤르트뢰즈는 프랑스 그르노블 지역에 위치한 그랑 샤르트뢰즈 수도원의 이름을 따서 명명되었습니다. 옐로우 샤르트뢰즈는 그린 샤르트뢰즈보다 더 순하며 달콤합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/074.샤르트뢰즈옐로우.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":81,"NAME_KOR":"샴보드","NAME_ENG":"Chambord","ABV":17,"ITEM_ID":244,"COMMENTS":"블랙라즈베리 리큐르로 독특한 모양의 병에 담겨있다. 프랑스 국왕 루이 14세가 샴보드 성을 방문하였을 때 산딸기로 만든 리큐르를 즐긴 것에 유래한다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/62cb5237-a079-47b8-bfa6-c67d1e1b9dd51b084acdc75744f121af76605.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":82,"NAME_KOR":"서던 컴포트","NAME_ENG":"Southern comfort","ABV":35,"ITEM_ID":142,"COMMENTS":"버번위스키에 복숭아 향미를 첨가한 리큐르로 미국을 대표한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/068.서던컴포트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":83,"NAME_KOR":"석류 주스","NAME_ENG":"Pomegranate juice","ABV":0,"ITEM_ID":119,"COMMENTS":"석류의 즙을 내어 만든 붉은 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/074.석류주스.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":84,"NAME_KOR":"설탕","NAME_ENG":"Sugar","ABV":0,"ITEM_ID":36,"COMMENTS":"사탕수수에서 생산 된 설탕은 칵테일에 단맛을 더하는데 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/036.설탕70.png","CATE_2":"other","CATE_1":"material"},{"RNUM":85,"NAME_KOR":"설탕 시럽","NAME_ENG":"Sugar syrup","ABV":0,"ITEM_ID":37,"COMMENTS":"설탕에 물을 넣고 끓인 시럽으로 칵테일에 쉽게 단맛을 더할 수 있습니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/037.설탕시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":86,"NAME_KOR":"소금","NAME_ENG":"Salt","ABV":0,"ITEM_ID":34,"COMMENTS":"음식이나 칵테일에 짠맛을 첨가하는 소금은 마가리타 잔의 림을 코팅하는데 사용된다. 입자가 부드러운 소금을 사용하는 것이 좋다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/034.소금80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":87,"NAME_KOR":"소주","NAME_ENG":"Soju","ABV":17,"ITEM_ID":149,"COMMENTS":"곡류를 발효시켜 증류하거나, 알코올을 물로 희석하여 만든 한국의 전통주 중 하나. 국내에서는 저렴한 술이지만 해외에서는 고가로 판매되며 제조 방법에 따라 희석식 소주, 증류식 소주로 구분됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/075.soju90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":88,"NAME_KOR":"솔의눈","NAME_ENG":"Pine Bud Drink","ABV":0,"ITEM_ID":257,"COMMENTS":"솔싹추출물을 함유한 음료로 솔잎향과 함께 시원하고 상쾌한 느낌이 든다. 호불호가 있는 음료지만 술과 섞으면 잘 어울려 칵테일 재료로 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/30360845-22d6-4d94-b074-f2c075b1f05cb76f44b6b4e35ff1e9668e91b.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":89,"NAME_KOR":"스위트 베르무트","NAME_ENG":"Sweet Vermouth","ABV":18,"ITEM_ID":91,"COMMENTS":"베르뭇, 버무스라 불리며 와인에 40여종의 약재가 포함된 혼성 포도주로 원래 식전주로 만들었지만 칵테일용으로 많이 이용된다. 스위트 베르무트는 레드 베르무트로 불리며, 레드와인을 베이스로 설탕이 첨가되어 단맛이 난다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/044.스위트베르무트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":90,"NAME_KOR":"스윗 앤 사워 믹스","NAME_ENG":"Sweet sour mix","ABV":0,"ITEM_ID":112,"COMMENTS":"레몬주스, 라임주스 설탕으로 만들어 새콤달콤한 칵테일에 사용되는데 가루분말이거나 액상으로 되어있다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/067.스윗사워.png","CATE_2":"other","CATE_1":"material"},{"RNUM":91,"NAME_KOR":"스카치 위스키","NAME_ENG":"Scotch whiskey","ABV":40,"ITEM_ID":83,"COMMENTS":"스코틀랜드에서 생산된 위스키의 총칭이며 위스키 생산량의 양 60%를 생산하고 있다. 보리 몰트(Malt) 60%와 기타 곡류 40%를 혼합하여 엿기름에 의해 당화, 발효시켜 스코틀랜드에서 단식 증류기로 증류하여 최소한 3년간 오크통에 넣어 저장 숙성시킨다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/036.스카치위스키.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":92,"NAME_KOR":"스파이스드 럼","NAME_ENG":"Spiced Rum","ABV":35,"ITEM_ID":307,"COMMENTS":"향신료를 가미한 럼으로 캡틴 모건 스파이스드 럼이 유명하다. 주로 콜라나 진저 에일등 각종 음료와 함께 섞어 마신다. \r\n","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/ffedd30e-15ba-476c-ae9c-3e5cdccdfeb25e7e641ee43d14e631bfa2c0f.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":93,"NAME_KOR":"스파클링 와인","NAME_ENG":"Sparkling wine","ABV":12,"ITEM_ID":143,"COMMENTS":"발포성와인으로 발효 도중에 생기는 탄산가스를 함유한 와인이다. 샴페인은 가장 잘 알려진 스파클링 와인이며 프랑스 샴페인 지역에서만 만들어집니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/069.스파클링와인.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":94,"NAME_KOR":"슬로 진","NAME_ENG":"Sloe gin","ABV":25,"ITEM_ID":141,"COMMENTS":"유럽에서 많이 자라는 야생자두(Sloe berry, 오얏나무의 열매)를 진에 침지하여 주니퍼베리의 향을 첨가하고 설탕을 더해 만든 리큐르","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/067.슬로진.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":95,"NAME_KOR":"식용장미수","NAME_ENG":"RABEE Rose water","ABV":0,"ITEM_ID":286,"COMMENTS":"다마스크 장미의 꽃을 증류하여 얻는 증류액인 Rosewater는 천년 이상의 오랜 역사를 이어오고 있는 중동지역의 특산품입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/aa798194-3ae1-4754-8324-e8e35cd32a8d5e7e641ee43d14e631bfa2c0b.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":96,"NAME_KOR":"아그와","NAME_ENG":"AGWA","ABV":30,"ITEM_ID":251,"COMMENTS":"정식 명칭은 Agwa de Bolivia 네덜란드에서 생산되는 허브 리큐르. 코카나무잎을 원료로 사용하며 녹차, 라벤더, 오이 등을 재료로 사용하여 가볍고 상쾌한 풀내음이 난다. 호리병 모양의 독특한 전용 잔이 있다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/f17ed246-3853-432e-999c-9393cf369a14b76f44b6b4e35ff1e9668e90e.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":97,"NAME_KOR":"아마레토","NAME_ENG":"Amaretto","ABV":28,"ITEM_ID":48,"COMMENTS":"살구씨를 물에 침지, 증류하여 아몬드향과 비슷한 향을 만들어 향초 성분과 혼합하고 시럽을 첨가해서 만든 이탈리아 리큐르로 아몬드 향이 강합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/001.아마레토90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":98,"NAME_KOR":"아메리칸 허니","NAME_ENG":"American Honey","ABV":36,"ITEM_ID":246,"COMMENTS":"버번 위스키에 꿀이 첨가된 리큐르로 다른 위스키에 비해 단맛이 강하다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/980aa490-b9de-4afe-93fd-3fc9ee37e32b1b084acdc75744f121af76606.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":99,"NAME_KOR":"아몬드 시럽","NAME_ENG":"Almond syrup","ABV":0,"ITEM_ID":1,"COMMENTS":"아몬드로 만들어 달콤하고 우디하며 아몬드 맛이 나는 믹싱 시럽. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/001.아몬드시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":100,"NAME_KOR":"아이리쉬 위스키","NAME_ENG":"Irish whiskey","ABV":40,"ITEM_ID":147,"COMMENTS":"아일랜드에서 만들어지는 위스키의 총칭으로 세 번 증류하고 맥아 건조 과정에서 피트를 쓰지 않음으로써 전통적인 스카치 위스키나 버번 위스키보다 마시기 쉽고 익숙해지기 쉬운 맛을 구현했다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/073.아이리쉬위스키.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":101,"NAME_KOR":"아이스크림","NAME_ENG":"Ice cream","ABV":0,"ITEM_ID":105,"COMMENTS":"우유, 설탕, 감미료로 만든 차가운 디저트. 칵테일에는 달콤하고 차가운 크림 질감을 더합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/060.아이스크림80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":102,"NAME_KOR":"아페롤","NAME_ENG":"Aperol","ABV":11,"ITEM_ID":121,"COMMENTS":"붉은 오렌지색의 이탈리아 감귤 리큐르로 식전주로 만들어진 술이다. 아페롤 스프리츠가 유명하다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/047.아페롤.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":103,"NAME_KOR":"압생트","NAME_ENG":"Absinthe","ABV":45,"ITEM_ID":120,"COMMENTS":"아니스(Anis)씨와 감초 그리고 향쑥 약초와 향료를 원료로 배합하여 만든 리큐르로 일명 ‘녹색요정, 녹색의 마주’라고 한다. 감초 비슷한 맛과 오팔색을 띈다. 1700년대에 처음 만들어졌으며 1800년대 후반의 위대한 예술가와 작가들 사이에서 인기와 명성을 얻었습니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/046.압생트.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":104,"NAME_KOR":"앙고스투라 비터","NAME_ENG":"Angostura bitter","ABV":45,"ITEM_ID":2,"COMMENTS":"럼에 40~80여종의 약초와 향초를 사용해서 만든 유명한 비터로 몇방울만 사용하여 칵테일에 향을 더한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/002.앙고스투라비터90.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":105,"NAME_KOR":"얼그레이 시럽","NAME_ENG":"Earl Gray Syrup","ABV":0,"ITEM_ID":192,"COMMENTS":"홍차맛 시럽입니다. 하이볼에 넣으면 홍차맛을 더해줘 특별한 느낌을 줍니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/e84b5b44-ccf5-4671-9325-4e7f0bbf6135b76f44b6b4e35ff1e9668e903.png","CATE_2":"other","CATE_1":"material"},{"RNUM":106,"NAME_KOR":"얼음","NAME_ENG":"Ice","ABV":0,"ITEM_ID":18,"COMMENTS":"거의 모든 칵테일에 사용되어 음료를 차게 만들거나 복잡한 풍미를 더해줍니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/018.얼음80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":107,"NAME_KOR":"엑스레이티드","NAME_ENG":"X-Rated","ABV":17,"ITEM_ID":243,"COMMENTS":"슈퍼 프리미엄 보드카에 블러드 오렌지, 망고, 패션 푸르츠 등의 열대과일을 배합하여 만든 리큐르. 최고 수위의 영화등급을 의미하는 단어로 여성의 몸을 형상화한 병 디자인과 핫핑크 음료 색상으로 시각적인 면을 강조했다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/7b709329-f0c7-4293-ab21-07673771b03e1b084acdc75744f121af76604.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":108,"NAME_KOR":"예거 마이스터","NAME_ENG":"Jagermeister","ABV":35,"ITEM_ID":75,"COMMENTS":"56가지 허브, 열매, 향료 등으로 만들어 특유의 허브향과 강한 단맛이 나는 짙은 갈색의 리큐르. 1934년 독일의 마스트-예거마이스트사에서 개발되었고 예거마이스트는 독일의 산림 관리인 또는 사냥터 관리인을 부르는 말이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/028.예거마이스터.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":109,"NAME_KOR":"오렌지","NAME_ENG":"Orange","ABV":0,"ITEM_ID":27,"COMMENTS":"주황색의 달콤한 감귤류 과일로 칵테일 장식에 사용됩니다. 슬라이스하거나 웨지로 사용한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/027.오렌지.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":110,"NAME_KOR":"오렌지 비터","NAME_ENG":"Orange bitter","ABV":28,"ITEM_ID":28,"COMMENTS":"씁쓸한 오렌지 껍질의 엑기스를 사용한 비터로 칵테일에 몇 방울만 넣어 오렌지 향을 더한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/028.오렌지비터90.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":111,"NAME_KOR":"오렌지 주스","NAME_ENG":"Orange juice","ABV":0,"ITEM_ID":30,"COMMENTS":"오렌지의 과즙 주스로 다양한 칵테일에 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/030.오렌지주스90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":112,"NAME_KOR":"오렌지 큐라소","NAME_ENG":"Orange curacao","ABV":39,"ITEM_ID":79,"COMMENTS":"남미 베네주엘라 큐라소섬에서 생산되는 쓴맛의 강한 오렌지 껍질을 브랜디나 그 밖의 화주에 첨가하여 감미를 곁들인 30% 도수의 오렌지 리큐르입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/032.오렌지큐라소.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":113,"NAME_KOR":"오렌지 플라워 워터","NAME_ENG":"Orange flower water","ABV":0,"ITEM_ID":29,"COMMENTS":"신선한 비터 오렌지 꽃을 맑고 향기롭게 증류한 것으로, 오렌지 맛과 강한 향으로 인해 칵테일의 재료로 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/029.오렌지플라워워터80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":114,"NAME_KOR":"오버프루프 럼","NAME_ENG":"Over-proof rum ","ABV":70,"ITEM_ID":80,"COMMENTS":"일반 럼주 도수 2배인 매우 높은 60~75.5%를 가지고있다. 높은 알코올 함량으로 인화성이 매우 강하므로 불과 열로부터 멀리 떨어진 곳에 보관해야하고 불타는 샷으로 서빙할 때 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/033.오버프루프럼.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":115,"NAME_KOR":"오이","NAME_ENG":"Cucumber","ABV":0,"ITEM_ID":263,"COMMENTS":"95%가 수분으로 구성되어 있어 시원한 맛이 특징인 야채","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/8d205304-b9ae-4917-ad66-c25b44cfa6681b084acdc75744f121af76603.png","CATE_2":"other","CATE_1":"material"},{"RNUM":116,"NAME_KOR":"올드 톰 진","NAME_ENG":"Old Tom Gin","ABV":40,"ITEM_ID":138,"COMMENTS":"18세기 영국에서 인기를 얻은 올드 톰 진은 약간의 설탕 덕분에 드라이 진보다 조금 더 달콤합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/064.올드톰진.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":117,"NAME_KOR":"올리브","NAME_ENG":"Olive","ABV":0,"ITEM_ID":25,"COMMENTS":"짠맛의 과일로 주로 드라이한 맛이 나는 칵테일에 장식으로 사용됩니다. 마티니가 가장 유명합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/025.올리브90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":118,"NAME_KOR":"올리브 주스","NAME_ENG":"Olive juice","ABV":0,"ITEM_ID":26,"COMMENTS":"올리브를 보존하는데 사용되는 짠 염수로 씁쓸하고 짠맛을 칵테일에 더할 수 있습니다. 더티마티니가 유명합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/026.올리브주스90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":119,"NAME_KOR":"우스터 소스","NAME_ENG":"Worcestershire sauce","ABV":0,"ITEM_ID":44,"COMMENTS":"마늘, 간장, 양파 등이 들어간 어두운 색의 소스로 1840년대 고기를 위한 조미료 소스로 인기가 있었습니다. 블러드 메리에 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/044.우스터소스90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":120,"NAME_KOR":"우유","NAME_ENG":"Milk","ABV":0,"ITEM_ID":23,"COMMENTS":"흰색 유제품으로 칵테일에 부드러운 질감을 더해주는 믹서로 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/023.우유.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":121,"NAME_KOR":"위스키","NAME_ENG":"Whiskey","ABV":40,"ITEM_ID":87,"COMMENTS":"위스키는 12세기경 처음으로 아일랜드에서 보리를 발효하여 증류시킨 술로 그 이후 스코틀랜드에도 유입되어 품질개발과 함께 전세계로 많이 알려지게 되었다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/040.위스키.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":122,"NAME_KOR":"자몽","NAME_ENG":"Grapefruit","ABV":0,"ITEM_ID":13,"COMMENTS":"단맛이 적고 쓴맛과 신맛이 나는 감귤류 과일","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/013.자몽90.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":123,"NAME_KOR":"자몽 주스","NAME_ENG":"Grapefruit juice","ABV":0,"ITEM_ID":14,"COMMENTS":"자몽 과즙주스로 칵테일에 흔히 사용됩니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/014.자몽주스.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":124,"NAME_KOR":"장미 시럽","NAME_ENG":"Rose Syrup","ABV":0,"ITEM_ID":225,"COMMENTS":"장미꽃 향기와 아로마 향이 나는 시럽으로 칵테일을 만들거나 마카롱을 만들 때 많이 사용된다. 로즈시럽 이라고도 많이 불린다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/9a80f31d-004b-4a5d-b443-d76a652d6acab76f44b6b4e35ff1e9668e90d.png","CATE_2":"other","CATE_1":"material"},{"RNUM":125,"NAME_KOR":"잭 다니엘","NAME_ENG":"Jack daniels","ABV":40,"ITEM_ID":74,"COMMENTS":"잭 다니엘은 아메리칸 위스키 중에 테네시 위스키에 속하는 브랜드이다. 1866년 미국 테네시주의 린치버그에 재스퍼 뉴튼 잭 다니엘이 설립한 양조장에서 처음 탄생했다. 주로 잭콕이라는 칵테일의 형태로 콜라 등의 음료수와 함께 마시는 게 일반적이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/027.잭다니엘.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":126,"NAME_KOR":"잭다니엘 허니","NAME_ENG":"Jack Daniels Honey","ABV":35,"ITEM_ID":254,"COMMENTS":"테네시 위스키인 잭 다니엘의 풍미를 유지하면서 천연 꿀에서 오는 달콤한 부드러움을 선사한다. 도수가 낮아짐에 따라 위스키로 분류되지않고 리큐르로 분류된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/163c89da-760a-420d-bdd4-a28404fbd733b76f44b6b4e35ff1e9668e910.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":127,"NAME_KOR":"정향","NAME_ENG":"Clove","ABV":0,"ITEM_ID":103,"COMMENTS":"클로브라고 불리는 정향나무의 꽃봉오리를 압착 건조한 정향은 맵고 향긋한 맛이 난다. 알코올의 강한 냄새를 억제한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/058.정향80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":128,"NAME_KOR":"지룩스 라임 주스","NAME_ENG":"Giroux Lime Juice","ABV":0,"ITEM_ID":247,"COMMENTS":"코디얼처럼 달콤한 라임주스로 새콤달콤한 맛을 더해줍니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/32012301-b057-414a-b021-cf8fe3b66756b76f44b6b4e35ff1e9668e909.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":129,"NAME_KOR":"진","NAME_ENG":"Gin","ABV":40,"ITEM_ID":70,"COMMENTS":"보리 또는 옥수수와 같은 곡물을 증류하여 만든 술. 특유의 향을 지닌 주니퍼 베리로인해 소나무향이 나는 증류주이다. 주니퍼(Juniper)의 불어 주니에브르(Genievre)가 네덜란드로 전해져 제네바(Geneva)가 되고 영국으로 건너가 진(Gin)이 되었다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/023.진.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":130,"NAME_KOR":"진저 비어","NAME_ENG":"Ginger beer","ABV":0,"ITEM_ID":72,"COMMENTS":"강한 생강향이 나고 진저 에일과 비슷한 맛의 탄산 음료. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/025.진저비어80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":131,"NAME_KOR":"진저 에일","NAME_ENG":"Ginger ale","ABV":0,"ITEM_ID":71,"COMMENTS":"소다수에 생강의 풍미를 곁들인 탄산음료로 위스키, 브랜디, 진과 함께 자주 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/024.진저에일70.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":132,"NAME_KOR":"체리 브랜디","NAME_ENG":"Cherry brandy","ABV":24,"ITEM_ID":58,"COMMENTS":"레드 체리 주스로 만들어 달콤하고 진한 체리향이 나는 리큐르로 16세기부터 프랑스에서 만들어졌다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/011.체리브랜디.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":133,"NAME_KOR":"초콜릿","NAME_ENG":"Chocolate","ABV":0,"ITEM_ID":100,"COMMENTS":"카카오 나무의 씨로 만든 풍부하고 어둡고 단맛이 나는 식재료. 초콜릿은 달콤하고 부드러우며 다양한 디저트 칵테일에 사용할 수 있습니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/055.초콜릿90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":134,"NAME_KOR":"초콜릿 시럽","NAME_ENG":"Chocolate syrup","ABV":0,"ITEM_ID":101,"COMMENTS":"초콜릿과 같은 맛이 나는 시럽. 초콜릿 시럽으로 만든 인기 있는 칵테일은 초콜릿 에스프레소 마티니입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/056.초콜릿시럽90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":135,"NAME_KOR":"치나","NAME_ENG":"Cynar","ABV":17,"ITEM_ID":245,"COMMENTS":"아티초크를 비롯한 13가지 식물로 만들어진 어두운 갈색의 허브 리큐르. 각종 허브를 이용해 달콤쌉싸름한 풍미를 내는 이탈리아 전통 리큐르를 일컫는 아마로 중 유명하다. 아티초크의 학명인 Cynar Scolymus에서 이름을 따왔다. 허브의 쌉싸름한 맛과 약한 단맛이 느껴진다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/400f9b1c-9b68-4e6e-b8bb-4617d845420f1b084acdc75744f121af76601.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":136,"NAME_KOR":"칠리 고추","NAME_ENG":"Chili","ABV":0,"ITEM_ID":99,"COMMENTS":"칠리는 맛과 향을 위해 음식과 칵테일에 사용되는 달콤하고 매운 고추입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/054.고추.png","CATE_2":"other","CATE_1":"material"},{"RNUM":137,"NAME_KOR":"칼루아","NAME_ENG":"kahlua","ABV":20,"ITEM_ID":76,"COMMENTS":"럼 기반의 멕시코의 커피 리큐르이며 Acolhua(사람들의 집)을 의미합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/029.칼루아.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":138,"NAME_KOR":"칼바도스","NAME_ENG":"Calvados","ABV":40,"ITEM_ID":124,"COMMENTS":"프랑스의 칼바도스 지역에서 생산되는 전통 증류주로 사과로 만드는 브랜디. 오크통에서 숙성되며 스모키한 뒷맛과 함께 매우 달콤한 사과 맛이 난다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/050.칼바도스.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":139,"NAME_KOR":"캄파리","NAME_ENG":"Campari","ABV":25,"ITEM_ID":57,"COMMENTS":"과일과 허브에 알코올과 물을 주입하여 만든 캄파리는 쓴 허브 향이 나는 20~28% 도수의 이탈리아 리큐르다. 비터이지만 식전주로 많이 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/010.캄파리.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":140,"NAME_KOR":"커피","NAME_ENG":"Coffee","ABV":0,"ITEM_ID":8,"COMMENTS":"로스팅한 커피콩과 물로 만든 음료로 아이리쉬 위스키와 혼합하여 아이리쉬 커피를 만드는 것이 유명합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/008.커피80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":141,"NAME_KOR":"커피 리큐르","NAME_ENG":"Coffee liqueur","ABV":16,"ITEM_ID":59,"COMMENTS":"커피맛이 나는 리큐르로 칼루아와 티아 마리아가 유명하다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/012.커피리큐르.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":142,"NAME_KOR":"커피 콩","NAME_ENG":"Coffee beans","ABV":0,"ITEM_ID":104,"COMMENTS":"커피나무의 씨앗으로 음용 커피의 재료. 에스프레소 마티니와 같은 음료의 장식을 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/059.커피콩80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":143,"NAME_KOR":"코코넛 밀크","NAME_ENG":"Coconut milk","ABV":0,"ITEM_ID":7,"COMMENTS":"코코넛 과육에 따뜻한 물을 섞어 만든 달콤한 주스로 열대 음료에 많이 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/007.코코넛밀크80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":144,"NAME_KOR":"코코넛 시럽","NAME_ENG":"Coconut syrup ","ABV":0,"ITEM_ID":118,"COMMENTS":"코코넛 주스, 코코넛 플레이크 및 설탕의 혼합물을 끓여서 만든 달콤한 코코넛 맛 시럽. 칵테일에 달콤함과 코코넛 향을 더합니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/073.코코넛시럽.png","CATE_2":"other","CATE_1":"material"},{"RNUM":145,"NAME_KOR":"코코넛 크림","NAME_ENG":"Coconut cream","ABV":0,"ITEM_ID":6,"COMMENTS":"잘게 썬 코코넛을 물과 함께 끓여서 만들어 코코넛 밀크보다 더 진하고 풍부한 맛입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/006.코코넛크림80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":146,"NAME_KOR":"콜라","NAME_ENG":"Cola","ABV":0,"ITEM_ID":9,"COMMENTS":"카페인과 미묘한 바닐라 향이 가미된 달콤한 탄산 음료","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/009.콜라90.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":147,"NAME_KOR":"콰이페","NAME_ENG":"Kwai Feh","ABV":20,"ITEM_ID":198,"COMMENTS":"달콤한 리치 리큐르로 리치를 가장 좋아했다는 중국 3대 미녀 양귀비를 모티브로 탄생했다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/8a3a9738-d77c-4f7b-a1d9-7b60e1aaa3ee1b084acdc75744f121af76609.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":148,"NAME_KOR":"쿠앵트로","NAME_ENG":"Cointreau","ABV":40,"ITEM_ID":61,"COMMENTS":"쿠앵트로는 1849년 제과업자인 아돌프 쿠앵트로와 그의 형제 에두아르 장 쿠앵트로가 처음 만든 달콤한 오렌지 맛 리큐르로 오렌지 계열의 리큐르 중 최고급이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/014.쿠앵트로90.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":149,"NAME_KOR":"크랜베리 주스","NAME_ENG":"Cranberry juice ","ABV":0,"ITEM_ID":10,"COMMENTS":"크랜베리를 착즙하여 만든 붉은색의 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/010.크랜베리주스.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":150,"NAME_KOR":"크렘 드 민트 그린","NAME_ENG":"Creme de menthe green","ABV":24,"ITEM_ID":64,"COMMENTS":"시원하고 부드러운 맛을 지닌 박하잎에서 추출한 농축액으로 만들어진 페퍼민트 리큐르로 그린은 색을 내는데 주로 사용한다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/017.민트그린.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":151,"NAME_KOR":"크렘 드 민트 화이트","NAME_ENG":"Creme de menthe white","ABV":24,"ITEM_ID":127,"COMMENTS":"시원하고 부드러운 맛을 지닌 박하잎에서 추출한 농축액으로 만들어진 페퍼민트 리큐르로 화이트는 그린과 맛에서 구별되지않고 투명한 특성으로 칵테일의 색깔에 영향을 주지않고 상큼한 민트 맛을 내는데 사용한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/053.민트화이트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":152,"NAME_KOR":"크림","NAME_ENG":"Cream","ABV":0,"ITEM_ID":11,"COMMENTS":"우유의 고지방 성분으로 구성된 유제품으로 풍부하고 부드러운 질감을 가지고 있으며 우유보다 훨씬 진하다. 칵테일을 걸쭉하게 만드는 데 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/011.크림80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":153,"NAME_KOR":"크림 드 카시스","NAME_ENG":"Creme de cassis","ABV":20,"ITEM_ID":63,"COMMENTS":"블랙커런트 추출액과 증류주를 혼합하여 만든 리큐르로 달콤하고 약간 산미가 있고 매우 진하며 시럽처럼 고농축이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/016.크림드카시스.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":154,"NAME_KOR":"크림 드 카카오 브라운","NAME_ENG":"Creme de cacao brown","ABV":25,"ITEM_ID":126,"COMMENTS":"카카오 열매와 바닐라 추출물을 증류하여 만든 달콤한 초콜릿 리큐르. 브라운은 화이트에 비해 더 다크하고 씁쓸하며 갈색의 시럽같은 질감이다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/052.카카오브라운.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":155,"NAME_KOR":"크림 드 카카오 화이트","NAME_ENG":"Creme de cacao white","ABV":24,"ITEM_ID":62,"COMMENTS":"카카오 열매와 바닐라 추출물을 증류하여 만든 달콤한 초콜릿 리큐르. 화이트는 달콤한 카카오의 향과 맛을 가지면서 칵테일 색상에 영향을 주지않는다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/015.카카오화이트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":156,"NAME_KOR":"타바스코","NAME_ENG":"Tabasco","ABV":0,"ITEM_ID":38,"COMMENTS":"매운 맛과 향이 나는 소스로 타바스코 페퍼와 식초 및 소금으로 만들어집니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/038.타바스코90.png","CATE_2":"other","CATE_1":"material"},{"RNUM":157,"NAME_KOR":"탄산수","NAME_ENG":"Soda water","ABV":0,"ITEM_ID":35,"COMMENTS":"탄산가스와 무기염류를 함유한 음료수로 소다수는 감미료가 포함되지 않아 맛을 바꾸지않고 다양한 음료에 탄산과 물을 첨가할 수 있다. 위스키와 잘 어울리고 독한 술을 마실 때 사용한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/035.탄산수90.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":158,"NAME_KOR":"토닉워터","NAME_ENG":"Tonic water","ABV":0,"ITEM_ID":40,"COMMENTS":"쓴맛이 나는 탄산음료로 소다수에 키나나무에서 얻어낸 엑기스인 키니네(퀴닌)와 기타 재료를 섞어 만든다. 진과 잘 어울린다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/040.토닉워터90.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":159,"NAME_KOR":"토마토 주스","NAME_ENG":"Tomato juice","ABV":0,"ITEM_ID":39,"COMMENTS":"토마토를 착즙하여 만든 주스","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/039.토마토주스.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":160,"NAME_KOR":"트리플 섹","NAME_ENG":"Ttriple sec","ABV":20,"ITEM_ID":145,"COMMENTS":"오렌지 껍질, 브랜디, 설탕을 원료로 한 달콤하고 무색의 오렌지 리큐르로, 3번의 증류를 거듭했다는 뜻에서 나온 이름이다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/071.트리플섹.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":161,"NAME_KOR":"파르페 아무르","NAME_ENG":"Parfait Amour","ABV":25,"ITEM_ID":258,"COMMENTS":"달콤한 오렌지와 바닐라의 풍미를 가진 보라색의 리큐르로 오렌지, 네롤리(오렌지 꽃), 바닐라 빈을 블렌딩하여 만들어졌습니다. Perfect Love(완벽한 사랑)이라는 뜻입니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/376004de-2a31-435b-8eb9-6a3f93a4761e1b084acdc75744f121af76600.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":162,"NAME_KOR":"파워에이드","NAME_ENG":"Powerade","ABV":0,"ITEM_ID":113,"COMMENTS":"코카콜라에서 개발한 무탄산 스포츠 음료로 1988년에 출시되었다. 비타민 B와 4가지 전해질 ION4가 함유되어 있어 몸에 물보다 빠른 흡수가 되는 것으로 유명하다","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/068.파워에이드90.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":163,"NAME_KOR":"파이어볼","NAME_ENG":"Fire Ball","ABV":33,"ITEM_ID":200,"COMMENTS":"위스키 베이스의 계피맛 리큐르로 강렬한 시나몬에 더해지는 은은한 단맛을 갖고있다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/3c6052c3-1dc8-4ee1-930f-4b33ac9352e31b084acdc75744f121af76608.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":164,"NAME_KOR":"파인애플","NAME_ENG":"Pineapple","ABV":0,"ITEM_ID":31,"COMMENTS":"달콤하고 과즙이 많은 과일로 트로피컬 음료 장식에 잘 사용됩니다. 유럽에서는 아나나스(Ananas)라고 불린다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/031.파인애플.png","CATE_2":"fruit","CATE_1":"material"},{"RNUM":165,"NAME_KOR":"파인애플 주스","NAME_ENG":"Pineapple juice","ABV":0,"ITEM_ID":32,"COMMENTS":"파인애플의 달콤한 과일 주스로 열대 주스가 들어있는 다양한 음료에서 가장 일반적으로 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/032.파인애플주스80.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":166,"NAME_KOR":"팔각","NAME_ENG":"Star anise","ABV":0,"ITEM_ID":115,"COMMENTS":"8개의 꼭지점이 있는 별 모양 향신료. 목련과 상록수의 열매로 매콤하고 단맛나는데 칵테일에는 장식으로 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/070.팔각80.png","CATE_2":"other","CATE_1":"material"},{"RNUM":167,"NAME_KOR":"패션푸르트 럼","NAME_ENG":"Passion fruit Rum","ABV":38,"ITEM_ID":299,"COMMENTS":"달콤한 열대과일 패션푸르트 향이 가미된 럼","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/3bf087d9-1adc-431a-8dc7-15ff8d5af0855e7e641ee43d14e631bfa2c19.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":168,"NAME_KOR":"패션프루트 주스","NAME_ENG":"passion fruit juice","ABV":0,"ITEM_ID":47,"COMMENTS":"패션프루트(백향과)를 착즙한 달콤한 이국적인 주스로 열대 칵테일의 중요한 재료입니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/047.패션프루트주스90.png","CATE_2":"juice","CATE_1":"material"},{"RNUM":169,"NAME_KOR":"포카리스웨트","NAME_ENG":"Pocari Sweat","ABV":0,"ITEM_ID":331,"COMMENTS":"일본의 오츠카제약이 개발하여 1980년에 출시한 이온음료로 자몽과즙이 포함된 미묘한 감칠맛이 특징이다\r\n","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/dcdc9e80-2859-468b-a388-b27912b6adcbea053c866a14f685269d7450c.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":170,"NAME_KOR":"프란젤리코","NAME_ENG":"Frangelico","ABV":20,"ITEM_ID":130,"COMMENTS":"20% 도수의 헤이즐넛 리큐르로 맑은 갈색을 띄고 있다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/056.프란젤리코.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":171,"NAME_KOR":"피스코","NAME_ENG":"Pisco","ABV":40,"ITEM_ID":139,"COMMENTS":"페루 또는 칠레의 포도 브랜디로 증류를 마친 뒤 브랜디에 색이 물들지않도록 백색처리를 한 오크통에서 숙성한다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/065.피스코.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":172,"NAME_KOR":"핑크자몽 리큐르","NAME_ENG":"Pink Grapefruit Liqueur","ABV":17,"ITEM_ID":303,"COMMENTS":"달콤씁쓸한 자몽 리큐르로 예쁜 핑크색이 특징이다","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/de237c51-f5b3-48b7-9891-e314daf4ae215e7e641ee43d14e631bfa2c18.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":173,"NAME_KOR":"핑크자몽 소다","NAME_ENG":"Pink Grapefruit Soda","ABV":0,"ITEM_ID":306,"COMMENTS":"핑크자몽 탄산음료로 예쁜 핑크색이 특징이다","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/efe10e21-1749-473c-acd4-fbcf2f2ed4785e7e641ee43d14e631bfa2c16.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":174,"NAME_KOR":"핫식스","NAME_ENG":"HotSix","ABV":0,"ITEM_ID":114,"COMMENTS":"핫식스는 롯데칠성음료에서 제조 및 판매하는, 고카페인 에너지 음료이다. 외국에서 많이 판매되는 레드불이나 몬스터의 한국판 음료.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/069.핫식스80.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":175,"NAME_KOR":"헨드릭스 진","NAME_ENG":"Hendrick's Gin","ABV":44,"ITEM_ID":262,"COMMENTS":"핸드릭스 진이라고도 불리며 오이를 주원료로 장미 꽃잎, 곡물, 11가지 허브로 만들어진 프리미엄 진이다. 장미 정원에서 오이 샌드위치를 먹다가 두 가지 재료의 아이디어를 얻었다고 한다. 장미 꽃향과 오이향이 은은하다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/ac73a470-e650-47bf-a2a8-5df1c5293cb31b084acdc75744f121af76602.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":176,"NAME_KOR":"홍차","NAME_ENG":"Black tea","ABV":0,"ITEM_ID":96,"COMMENTS":"차나무의 찻잎을 우려내어 강한 허브 맛이 나는 차. 다양한 칵테일에 사용됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/051.홍차90.png","CATE_2":"beverage","CATE_1":"material"},{"RNUM":177,"NAME_KOR":"화이트 럼","NAME_ENG":"White rum","ABV":40,"ITEM_ID":88,"COMMENTS":"사탕수수에서 설탕을 만들고 난 찌꺼지인 당밀(Molasses)를 이용하여 증류시켜 만든 증류주로 화이트 럼은 라이트 럼, 실버 럼으로도 알려져있다. 무색투명한 럼으로 맛이 부드러워 칵테일의 기주로 많이 사용된다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/041.화이트럼.png","CATE_2":"strong","CATE_1":"alcohol"},{"RNUM":178,"NAME_KOR":"화이트 베르무트","NAME_ENG":"Dry vermouth","ABV":18,"ITEM_ID":89,"COMMENTS":"베르뭇, 버무스라 불리며 와인에 40여종의 약재가 포함된 혼성 포도주로 원래 식전주로 만들었찌만 칵테일용으로 많이 이용된다. 화이트 베르무트는 바닐라와 클로버 맛과 함께 오레가노와 백리향의 강력한 아로마를 가지고있다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/042.화이트베르무트.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":179,"NAME_KOR":"화이트 와인","NAME_ENG":"White wine","ABV":10,"ITEM_ID":90,"COMMENTS":"백포도주로 백포도, 적포도의 껍질을 제거한 후 포도즙만을 발효시켜 만든 발효주. 노란색을 띄며 샤도네, 소비뇽블랑, 리즐링이 유명합니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/043.화이트와인.png","CATE_2":"week","CATE_1":"alcohol"},{"RNUM":180,"NAME_KOR":"후추","NAME_ENG":"Black pepper","ABV":0,"ITEM_ID":4,"COMMENTS":"일반적으로 음식에 사용되나 칵테일에도 첨가되는 향신료로 약한 스모키한 향과 함께 미묘한 허브 맛이 있습니다. ","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/004.후추70.png","CATE_2":"other","CATE_1":"material"},{"RNUM":181,"NAME_KOR":"휘핑 크림","NAME_ENG":"Whipped cream","ABV":0,"ITEM_ID":43,"COMMENTS":"많은 거품으로 부드러운 질감을 더해주는 크림으로 설탕과 바닐라가 추가됩니다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/043.휘핑크림.png","CATE_2":"other","CATE_1":"material"},{"RNUM":182,"NAME_KOR":"힙노틱","NAME_ENG":"Hpnotiq","ABV":17,"ITEM_ID":134,"COMMENTS":"최면에 빠진이라는 뜻으로 보드카, 꼬냑 및 과일주스로 만든 리큐르. 여러가지 과일맛이 조화롭고 알콜향이 강하지않다.","PHOTO":"https://cocktail-bucket.s3.ap-northeast-2.amazonaws.com/TB_ITEM_MASTER/060.힙노틱.png","CATE_2":"week","CATE_1":"alcohol"}],"visibility":{"searchHeader":false},"needScrollObserver":false,"pageMarginTop":56},"__N_SSP":true},"page":"/cocktail/new","query":{},"buildId":"vyRhYceuWndh13XUxc6QG","isFallback":false,"gssp":true,"appGip":true,"scriptLoader":[]}</script>
</body>
</html>
/**
 * userAjax.js
 */
console.log('qna.js')

document.addEventListener('DOMContentLoaded', function(e) {
	// 등록 이벤트(click)
	document.getElementById('addBtn').addEventListener('click', function(e) {

		// 서블릿호출, 화면제어.	
		let qNo = document.getElementById('qNo').value;
		let qType = document.getElementById('qType').value;
		let qContent = document.getElementById('qContent').value;
		let qResp = document.getElementById('qResp').value;
		let mNo = document.getElementById('mNo').value;
		let obj = { qNo, qType, qContent, qResp, mNo }

		const addAjax = new XMLHttpRequest();
		// get
		//addAjax.open('get', 'addBook.do?bcode=' + bookCode + '&bname=' + bname + '&bauth=' + author + '&bpress=' + press + '&bprice=' + price)
		//addAjax.send();

		// post
		addAjax.open('post', 'addQna.do')
		addAjax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		addAjax.send('bcode=' + bookCode + '&bname=' + bname + '&bauth=' + author + '&bpress=' + press + '&bprice=' + price);
		addAjax.onload = function(e) {
			let result = JSON.parse(addAjax.responseText);
			console.log(result); // {retCode:"OK"}
			if (result.retCode == 'OK') {
				document.querySelector('#show tbody').appendChild(makeRow(obj));
			} else if (result.retCode == 'NG') {
				alert('처리중 에러.')
			}
		}
	});

	// Asynchronous JavaScript and XML : Ajax
	let json = "";
	const xhtp = new XMLHttpRequest(); // 비동기식
	xhtp.open('get', 'qnaList.do');
	xhtp.send();
	xhtp.onload = function(e) {
		json = JSON.parse(xhtp.responseText)
		console.log('onload', json);

		// 타이틀.
		let title = ['글번호', '카테고리', '내용', '답변', '회원번호'];
		let tr = document.createElement('tr');
		for (let prop of title) {
			//console.log(title);
			let th = document.createElement('th');
			th.innerText = prop;
			tr.appendChild(th);
		}
		let th = document.createElement('th');
		th.innerText = '삭제';
		tr.appendChild(th);
		document.querySelector('#tableList thead').appendChild(tr);

		// 데이터.
		json.reduce((acc, item) => {
			acc.appendChild(makeRow(item));
			return acc;
		}, document.querySelector('#show tbody'));

	} // end of onload.

}); // end of DOMContentLoaded

// 한건 처리
function makeRow(obj = {}) { // obj ={} 는 초기값을 설정하는거임
	let tr = document.createElement('tr');
	tr.setAttribute('id', 'book_' + obj.bookCode);
	tr.setAttribute('data-code', obj.bookCode);
	for (let prop in obj) {
		let td = document.createElement('td');
		td.innerText = obj[prop];
		tr.appendChild(td);
	}

	// 삭제버튼.
	let btn = document.createElement('button');
	btn.addEventListener('click', deleteRow, false);
	btn.innerText = '삭제';
	let td = document.createElement('td');
	td.appendChild(btn);
	tr.appendChild(td);

	return tr;
} // end of makeRow.

// 삭제.
function deleteRow(e) {
	let tr = this.parentElement.parentElement;
	let bcode = tr.dataset.code;
	
	addAjax.open('post', 'addBook.do')
		addAjax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		addAjax.send('bcode=' + bookCode);
		addAjax.onload = function(e) {
			let result = JSON.parse(addAjax.responseText);
			console.log(result); // {retCode:"OK"}
			if (result.retCode == 'OK') {
				document.querySelector('#show tbody').appendChild(makeRow(obj));
			} else if (result.retCode == 'NG') {
				alert('처리중 에러.')
			}
		}
	//서비스 맵퍼 컨트롤 다 넣어서 삭제기능 구현


	//e.stopPropagation(); // 하위->상위 이벤트전파 차단. 하위에서 검색되면 상위이벤트 실행x. 이벤트추가에 false넣으면(디폴드값임) 하->상/ true하면 상->하
	//console.log(e.target);
	//e.target.parentElement.parentElement.remove();
}

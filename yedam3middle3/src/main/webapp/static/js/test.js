/**
 * 
 */

 document.querySelector('.toDetailPage').addEventListener('click', function(e){
	 fetch('detailPage.do')
	 .then(resolve => console.log('1'));
 });
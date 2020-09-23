var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlayy = document.getElementById('overlayy'),

	popup = document.getElementById('popup'),

	btnCerrarPopup = document.getElementById('btn-cerrar-popup');


btnAbrirPopup.addEventListener('click', function(){
	overlayy.classList.add('active');
	popup.classList.add('active');
});


btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlayy.classList.remove('active');
	popup.classList.remove('active');
});

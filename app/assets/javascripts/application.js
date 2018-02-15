// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require material.min

document.addEventListener("turbolinks:load", function() { 
	// init Masonry
	if (document.querySelector(".js-grid")) {
		let msnry = new Masonry( '.js-grid', {
		    itemSelector: '.mdl-card',
		    columnWidth: '.js-grid-sizer',
		    gutter: '.js-gutter-sizer',
		    percentPosition: true,
		    horizontalOrder: true,
		    stagger: 30,
		    // nicer reveal transition
		    visibleStyle: { transform: 'translateY(0)', opacity: 1 },
		    hiddenStyle: { transform: 'translateY(100px)', opacity: 0 },
	  });
	  setTimeout( function() {
	    msnry.layout();
	  }, 100 );
	};
	// init MDL
	componentHandler.upgradeDom();
});

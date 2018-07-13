window.onload = function(){
        document.getElementById("toolbar-pause-all").insertAdjacentHTML('afterend', '<div id="toolbar-separator"></div><div id="toolbar-pizza" title="Forward Port"></div><div id="toolbar-pizza2" title="Port" style="display:none;">0</div>');
        document.getElementById("toolbar-pizza").style.backgroundImage = "url('style/transmission/images/toolbar-pizza.png')";
        $('#toolbar-pizza').click(function(){$.get("https://www.domain.com/pizza.php", function(result){ $('#toolbar-pizza2').text(result).show(); });});
}

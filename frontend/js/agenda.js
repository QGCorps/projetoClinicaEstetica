document.getElementById('massagemCheckbox').addEventListener('change', function() {
  var opcoes1 = document.getElementById('massagemRadio');
  opcoes1.style.display = this.checked ? 'block' : 'none';
});

document.getElementById('drenagemCheckbox').addEventListener('change', function() {
  var opcoes2 = document.getElementById('drenagemRadio');
  opcoes2.style.display = this.checked ? 'block' : 'none';
});

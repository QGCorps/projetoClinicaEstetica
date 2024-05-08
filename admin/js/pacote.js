$(document).ready(function () {

    /* Mostrando os pacotes - GET */
    $.ajax({
        url: 'http://localhost:3333/pacotes',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            var table = $('#cadastro tbody')
            $.each(data, function (index, item) {
                table.append('<tr id="line">' +
                    '<td id="code">' + item.id_pacote + '</td>' +
                    '<td>' + item.nome + '</td>' +
                    '<td>' + item.qtde_sessao + '</td>' +
                    '<td>' + item.observacao + '</td>' +
                    '<td>' + item.valor_pacote + '</td>' +
                    '<td>' + item.id_servico + '</td>' +
                    '<td> <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#updateModal" data-id="' + item.id_pacote + '" id="btnEdit">Editar</button></td>' +
                    '<td> <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal" data-id="' + item.id_pacote + '" id="btnDelete">Excluir</button></td>' + '</tr>')

            })
        }
    })

    /* Cadastrando os pacotes - POST */
    $('#btnSalvar').on('click', function () {
        $('#form').on('click', function (event) {
            event.preventDefault();
        })

        var nome = $('#m-nome').val();
        var qtde_sessao = $('#m-qtde_sessao').val();
        var observacao = $('#m-observacao').val();
        var valor_pacote = $('#m-valor_pacote').val().replace(',', '.');
        var id_servico = $('#m-id_servico').val();

        if (nome != '' && qtde_sessao != '' && observacao != '' && valor_pacote != '' && id_servico != '') {

            /*Envia o POST*/
            $.ajax({
                url: 'http://localhost:3333/pacotes',
                method: 'POST',
                cache: false,
                dataType: 'json',
                data: {
                    nome: nome,
                    qtde_sessao: qtde_sessao,
                    observacao: observacao,
                    valor_pacote: valor_pacote,
                    id_servico: id_servico
                },
                success: function () {
                    alert('Pacote Cadastrado com Sucesso!')
                    $('#form').each(function () {
                        this.reset();
                        $('#addModal').modal('hide')
                    })
                    location.reload();
                }
            })
        }else{
            $('#addModal').modal('hide')
            alert('Preencha os dados Corretamente!')
        }
    })

    

})
$(document).ready(function() {


    var tableselectionDelete = $('.selection-deletion-row').DataTable();

    $('.selection-deletion-row tbody').on('click', 'tr', function() {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
        } else {
            tableselectionDelete.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });
});
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

    function removeSelUser(){
      
      if(tableselectionDelete.row('.selected')[0]['length'] == 0){
        visaShowMessage('Please select User.','warning');
        return;
      }

        var sel_email = tableselectionDelete.row('.selected').data()[1];
        $("#mi-modal").modal('show');
         $.ajax({
          type: 'post'
          ,dataType: 'json'
          , async: true
          , url: base_url + '/admin/delete_client_log_post'
          ,data: 'email='+sel_email
          , success: function(json) {
            if(json.status == 'success'){
                tableselectionDelete.row('.selected').remove().draw(false);
                visaShowMessage('Successfully Removed.','success');
            }else{
                visaShowMessage('Please try again.','warning');
            }
            
            }
          , error: function(data, status, err) {
            visaShowMessage('Faild.','error');
          },
          complete: function() {
            
          }
        });
        

    }


    var modalConfirm = function(callback){
      
      $('#delete-row').on('click', function() {
        $("#confirm-modal").modal('show');
      });

      $("#modal-btn-si").on("click", function(){
        callback(true);
        $("#confirm-modal").modal('hide');
      });
      
      $("#modal-btn-no").on("click", function(){
        callback(false);
        $("#confirm-modal").modal('hide');
      });
    };

    modalConfirm(function(confirm){
      if(confirm){
        //Acciones si el usuario confirma
        removeSelUser();
      }else{
        //Acciones si el usuario no confirma
        
      }
    });

});
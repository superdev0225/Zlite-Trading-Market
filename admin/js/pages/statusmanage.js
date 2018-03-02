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

    
    function changeSelUser(){
      
      if(tableselectionDelete.row('.selected')[0]['length'] == 0){
        visaShowMessage('Please select User.','warning');
        return;
      }

        var sel_email = tableselectionDelete.row('.selected').data()[1];
        var sel_status= $('#sel_status').val();
        $("#mi-modal").modal('show');
         $.ajax({
          type: 'post'
          ,dataType: 'json'
          , async: true
          , url: base_url + '/admin/update_client_status_post'
          ,data: 'email='+sel_email+'&sel_status='+sel_status
          , success: function(json) {
            if(json.status == 'success'){
                
                var data = tableselectionDelete.row('.selected').data(); 
                data[3] = json.st_val;
                tableselectionDelete.row('.selected').data(data);
                tableselectionDelete.draw();
                visaShowMessage('Successfully updated.','success');
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
        changeSelUser();
      }else{
        //Acciones si el usuario no confirma
        
      }
    });

});
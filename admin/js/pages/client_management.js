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

    function updateStatus(status){
      
      if(tableselectionDelete.row('.selected')[0]['length'] == 0){
        visaShowMessage('Please select User.','warning');
        return;
      }

        var sel_email = tableselectionDelete.row('.selected').data()[0];
        $("#mi-modal").modal('show');
         $.ajax({
          type: 'post'
          ,dataType: 'json'
          , async: true
          , url: base_url + 'admin/update_client_st_post'
          ,data: 'email='+sel_email + '&status=' + status
          , success: function(json) {
            if(json.status == 'success'){
                var data = tableselectionDelete.row('.selected').data(); 
                data[3] = '<input type="checkbox" id="switchery" class="switchery" data-switchery="true" style="display: none;"><span class="switchery switchery-default" style="box-shadow: rgb(223, 223, 223) 0px 0px 0px 0px inset; border-color: rgb(223, 223, 223); background-color: rgb(255, 255, 255); transition: border 0.4s, box-shadow 0.4s;"><small style="left: 0px; transition: background-color 0.4s, left 0.2s;"></small></span>';
                var msg = "Successfully Blocked.";
                if(status == 1){
                  msg = "Successfully Updated.";
                  data[3] = '<input type="checkbox" id="switchery" class="switchery" checked="" data-switchery="true" style="display: none;"><span class="switchery switchery-default" style="background-color: rgb(55, 188, 155); border-color: rgb(55, 188, 155); box-shadow: rgb(55, 188, 155) 0px 0px 0px 16px inset; transition: border 0.4s, box-shadow 0.4s, background-color 1.2s;"><small style="left: 20px; background-color: rgb(255, 255, 255); transition: background-color 0.4s, left 0.2s;"></small></span>';
                }
                
                tableselectionDelete.row('.selected').data(data);
                tableselectionDelete.draw();
                visaShowMessage(msg,'success');
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


    var block_modalConfirm = function(callback){
      
      $('#delete-row').on('click', function() {
        $("#block-confirm-modal").modal('show');
      });
      
      $("#btn_block_conf_ok").on("click", function(){
        callback(true);
        $("#block-confirm-modal").modal('hide');
      });
      
      $("#btn_block_conf_cancel").on("click", function(){
        callback(false);
        $("#block-confirm-modal").modal('hide');
      });
    };

    block_modalConfirm(function(confirm){
      if(confirm){
        //Acciones si el usuario confirma
        updateStatus(0);
      }else{
        //Acciones si el usuario no confirma
        
      }
    });
  
    var live_modalConfirm = function(callback){
      
      $('#live-row').on('click', function() {
        
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

    live_modalConfirm(function(confirm){
      if(confirm){
        //Acciones si el usuario confirma
        updateStatus(1);
      }else{
        //Acciones si el usuario no confirma
        
      }
    });
  
  
    $('#update-row').click(function(){
      if(tableselectionDelete.row('.selected')[0]['length'] == 0){
        visaShowMessage('Please select User.','warning');
        return;
      }
      $('#md-update-row').modal('show');
      var data = tableselectionDelete.row('.selected').data(); 
      $('#md_sel_email').val(data[0]);
      $('#md_sel_email_h').val(data[0]);
    });
  
  
    /*
      update sel row modal info
    */
    $('#btn_sel_update').click(function(){
      if(! $('#frm_sel_md')[0].checkValidity()) {
        $('#frm_sel_md')[0].reportValidity();
        return;
      }
      var pass = $('#md_sel_password').val();
      var pass1 = $('#md_sel_password_conf').val();
      if(pass != pass1){
        visaShowMessage('Please check your password again.','warning');
        return;
      }
      var email_old = $('#md_sel_email_h').val();
      var email = $('#md_sel_email').val();
      
      $.ajax({
          type: 'post'
          ,dataType: 'json'
          , async: true
          , url: base_url + 'admin/update_client_auth_post'
          ,data: 'email='+email + '&password=' + pass + '&email_old=' + email_old
          , success: function(json) {
            if(json.status == 'success'){
                $('#md-update-row').modal('hide');
                
                var data = tableselectionDelete.row('.selected').data(); 
                data[0] = email;
                tableselectionDelete.row('.selected').data(data);
                tableselectionDelete.draw();
                
                var msg = "Successfully Updated.";
                visaShowMessage(msg,'success');
            }else{
                visaShowMessage(json.msg,'warning');
            }
            
            }
          , error: function(data, status, err) {
            visaShowMessage('Faild.','error');
          },
          complete: function() {
            
          }
        });
    });

});
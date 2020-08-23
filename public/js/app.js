$(document).ready(function(){
	$('.edit-user').on('click', function(){
		editUserForm();
	});
	
	//change store
	$("#stores").on("change",function(){
		var storeId = $(this).val();

		if (storeId == null || storeId == "") {
			$('#productList').html("");
			$('#productList').addClass('d-none');
			return;
		}
		$('#productList').removeClass('d-none');
		$storeList =$(this).data('stores');
		$arr = $storeList.split(',');
		if ($arr.indexOf(storeId) == -1) {
			$('#prList').html('');
			return;
		}
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            method: 'GET',
            url: $(this).data('url')+"/"+storeId,

            success: function(data){
                //console.log(data);
                $('#prList').html(data.template);
                prList = $("#prIds").val();
            },
            error: function(data) {
               if (data.status == 419) {
        			window.location.reload();
        		}
            }
        });
    });
	// update user
	$("#btn-edit-user").on("click",function(){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                method: 'POST',
                url: $("#frmEditUser").attr('action'),
                data: {
                	'name' : $("#frmEditUser input[name=name]").val()
            	},
                success: function(data) {
                	console.log(data);
                	$('.username').html(data.username);
                	$(".username").data("username",data.username);
                	$('#uname').html(data.username);
                    $("#editUserModal").trigger("reset");
                    $("#editUserModal .close").click();
                    //window.location.reload();
                },
                error: function(data) {
                	if (data.status == 419) {
                		window.location.reload();
                	} else {
                		$("#edit-user-errors").html("");
	                    $.each(data.responseJSON.errors, function(key,value) {
	                        $('#edit-user-errors').append('<li>'+value+'</li>');
	                    });
	                    $("#edit-error-bag").show();
                	}
                }
            });
    });
});

function editUserForm() {
    $("#edit-error-bag").hide();
    $("#frmEditUser input[name=name]").val($(".username").data("username"));
    $('#editUserModal').modal('show');
}

function addStoreForm() {
    $("#add-error-bag").hide();
    $('#addStoreModal').modal('show');
}
function addProduct() {
	var data = $("#productLists option:selected").data('product');
	var rowDt = $("#prList").find('#product_'+data.id);
	if (rowDt.length > 0) {
		return;
	}
	var html = '<tr id="product_'+data.id+'" data-id="'+data.id+'">';
		html+= '<td></td>';
		html+= '<td>'+data.name+'</td>';
		html+= '<td>'+data.quantity+'</td>';
		html+= '<td>'+data.price+'</td>';
	    html+= '<td><button type="button" class="btn btn-info" onclick="removeProduct('+data.id+')">Remove</button></td>';
    html+= '</tr>';
	$("#prList").append(html);
}

function save(url) {
	var storeId = $("#stores").val();
	var data = [];
	
	$("[id^='product_']").each(function(){
		var productId = $(this).data('id');
		data.push({
			'product_id': productId
		});
	});

	$.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'POST',
        url: url,
        data: {
        	'store_id' : storeId,
        	'data' : data,
    	},
        success: function(data) {
        	$('#tblStoreList').html(data.template);
        	$('#mess_success').removeClass('d-none');
        },
        error: function(data) {
        	if (data.status == 419) {
        		window.location.reload();
        	} 
        	$('#mess_success').addClass('d-none');
        }
    });
}

function removeProduct(id) {
	//var rowDt = $("#prList").find('#product_'+id);
	$('#product_'+id).remove();
}
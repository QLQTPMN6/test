<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editUserModal">Edit Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="invalid-feedback" id="edit-error-bag" role="alert">
                    <ul id="edit-user-errors" class="alert alert-danger">
                    </ul>
                </div>
                <form id="frmEditUser" action="{{ route('updateUser') }}">
                    @csrf
                    <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" required autocomplete="name" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <button class="btn btn-info" id="btn-edit-user" type="button" value="update">Update</button>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>
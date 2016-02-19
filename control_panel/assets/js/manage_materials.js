$(document).ready(function() {
    $('#materials-table').dataTable({
        aoColumnDefs: [
            { bSearchable: false, bSortable: false, aTargets: [5] }
        ],
        fnDrawCallback: function(oSettings) {
            $('[data-button="edit-material-button"]').unbind('click');
            $('[data-button="delete-material-button"]').unbind('click');

            $('[data-button="edit-material-button"]').click(function() {
                setDialogLoader();
                openDialog();

                $.ajax({
                    url: 'forms/manage_materials_edit.php',
                    method: 'POST',
                    data: {
                        id: $(this).data('var-id')
                    },
                    success: function(response) {
                        setDialogHtmlContent('Edit Material', response);

                        $('#material-wizard').wizard2({
                            buttonLabels: {
                                prev: 'Prev',
                                next: 'Next',
                                finish: 'Edit',
                                help: '?'
                            },
                            onHelp: function(page, wiz) {
                                alert('Help function not yet available at the moment.');
                            },
                            onFinish: function(page, wiz) {
                                if(getDataSelect('eAuthors').length > 0) {
                                    var data = [getDataInput('eMaterialTitle'), getDataInput('eCollectionType'), getDataInput('eIsbn'), getDataInput('eCallNumber'), getDataInput('eDatePublishedMonth'), getDataInput('eDatePublishedDay'), getDataInput('eDatePublishedYear'), getDataInput('ePublisher'), getDataInput('eCategory'), getDataSelect('eAuthors'), getDataInput('eID')];

                                    setDialogLoader();

                                    $.ajax({
                                        url: 'requests/manage_materials.php',
                                        method: 'POST',
                                        data: {
                                            action: 'Edit',
                                            id: data[10],
                                            materialTitle: data[0],
                                            collectionType: data[1],
                                            isbn: data[2],
                                            callNumber: data[3],
                                            datePublishedMonth: data[4],
                                            datePublishedDay: data[5],
                                            datePublishedYear: data[6],
                                            publisher: data[7],
                                            category: data[8],
                                            authors: data[9]
                                        },
                                        success: function(response) {
                                            response = JSON.parse(response);
                                            setDialogContent('Edit Material Status', response['message']);

                                            setTimeout(function() {
                                                closeDialog();

                                                if(response['status'] == 'Success') {
                                                    location.reload();
                                                }
                                            }, 1500);
                                        }
                                    });

                                    return false;
                                } else {
                                    alert('Oops! Please select at least 1 author.');

                                    $('[data-input="eAuthors"]').focus();
                                }
                            }
                        });
                    }
                });

                return false;
            });

            $('[data-button="delete-material-button"]').click(function() {
                var id = $(this).data('var-id');

                setDialogLoader();
                openDialog();
                setDialogHtmlContent('Delete Material', '<div>Are you sure you want to delete this material?</div><div class="align-right"><button class="button" data-button="no-button">No</button>&nbsp;&nbsp;<button class="button danger" data-button="yes-button">Yes</button></div>');
                
                $('[data-button="yes-button"]').click(function() {
                    $.ajax({
                        url: 'requests/manage_materials.php',
                        method: 'POST',
                        data: {
                            action: 'Delete',
                            id: id
                        },
                        success: function(response) {
                            response = JSON.parse(response);
                            setDialogContent('Delete Material Status', response['message']);

                            setTimeout(function() {
                                closeDialog();

                                if(response['status'] == 'Success') {
                                    location.reload();
                                }
                            }, 1500);
                        }
                    });

                    return false;
                });

                $('[data-button="no-button"]').click(function() {
                    closeDialog();
                });
            });

            $('[data-button="restore-material-button"]').click(function() {
                var id = $(this).data('var-id');

                setDialogLoader();
                openDialog();
                
                $.ajax({
                    url: 'requests/manage_materials.php',
                    method: 'POST',
                    data: {
                        action: 'Restore',
                        id: id
                    },
                    success: function(response) {
                        response = JSON.parse(response);
                        setDialogContent('Restore Material Status', response['message']);

                        setTimeout(function() {
                            closeDialog();

                            if(response['status'] == 'Success') {
                                location.reload();
                            }
                        }, 1500);
                    }
                });

                return false;
            });
        }
    });

    $('[data-button="add-material-button"]').click(function() {
        setDialogLoader();
        openDialog();

        $.ajax({
            url: 'forms/manage_materials_add.php',
            method: 'POST',
            success: function(response) {
                setDialogHtmlContent('Add Material', response);

                $('#material-wizard').wizard2({
                    buttonLabels: {
                        prev: 'Prev',
                        next: 'Next',
                        finish: 'Add',
                        help: '?'
                    },
                    onHelp: function(page, wiz) {
                        alert('Help function not yet available at the moment.');
                    },
                    onFinish: function(page, wiz) {
                        if(getDataSelect('aAuthors').length > 0) {
                            var data = [getDataInput('aMaterialTitle'), getDataInput('aCollectionType'), getDataInput('aIsbn'), getDataInput('aCallNumber'), getDataInput('aDatePublishedMonth'), getDataInput('aDatePublishedDay'), getDataInput('aDatePublishedYear'), getDataInput('aQuantity'), getDataInput('aPublisher'), getDataInput('aCategory'), getDataSelect('aAuthors')];

                            setDialogLoader();

                            $.ajax({
                                url: 'requests/manage_materials.php',
                                method: 'POST',
                                data: {
                                    action: 'Add',
                                    materialTitle: data[0],
                                    collectionType: data[1],
                                    isbn: data[2],
                                    callNumber: data[3],
                                    datePublishedMonth: data[4],
                                    datePublishedDay: data[5],
                                    datePublishedYear: data[6],
                                    quantity: data[7],
                                    publisher: data[8],
                                    category: data[9],
                                    authors: data[10]
                                },
                                success: function(response) {
                                    response = JSON.parse(response);
                                    setDialogContent('Add Material Status', response['message']);

                                    setTimeout(function() {
                                        closeDialog();

                                        if(response['status'] == 'Success') {
                                            location.reload();
                                        }
                                    }, 1500);
                                }
                            });

                            return false;
                        } else {
                            alert('Oops! Please select at least 1 author.');

                            $('[data-input="eAuthors"]').focus();
                        }
                    }
                });
            }
        });

        return false;
    });
});
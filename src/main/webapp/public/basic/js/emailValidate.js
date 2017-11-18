$(document).ready(function () {
    $('#update').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            datetimePicker: {
                validators: {
                    notEmpty: {
                        message: 'The date is required and cannot be empty'
                    },
                    date: {
                        format: 'MM/DD/YYYY h:m A'
                    }
                }
            }
        }
    });
    $('#userEmail').on('dp.change dp.show', function (e) {
        $('#update').bootstrapValidator('revalidateField', 'datetimePicker');
    });
});
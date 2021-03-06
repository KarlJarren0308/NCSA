$(document).ready(function() {
    $('[data-form="monthly-materials-report-form"]').submit(function() {
        var dateInput = $('[data-input="date"]').val();

        setDialogLoader();
        openDialog();

        setDialogHtmlContent('Monthly Materials Report', '<iframe class="pdf-frame" src="requests/generate_monthly_materials_report.php?date=' + dateInput + '"></iframe>');

        return false;
    });

    $('[data-form="monthly-transactions-report-form"]').submit(function() {
        var dateInput = $('[data-input="date"]').val();

        setDialogLoader();
        openDialog();

        setDialogHtmlContent('Monthly Transactions Report', '<iframe class="pdf-frame" src="requests/generate_monthly_transactions_report.php?date=' + dateInput + '"></iframe>');

        return false;
    });

    $('[data-form="students-report-form"]').submit(function() {
        setDialogLoader();
        openDialog();

        setDialogHtmlContent('Students Report', '<iframe class="pdf-frame" src="requests/generate_students_report.php"></iframe>');

        return false;
    });

    $('[data-form="barcode-report-form"]').submit(function() {
        setDialogLoader();
        openDialog();

        setDialogHtmlContent('Barcode Report', '<iframe class="pdf-frame" src="requests/generate_barcode_report.php"></iframe>');

        return false;
    });
});
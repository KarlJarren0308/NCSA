<?php
    require_once('../../fpdf/pdf_mc_table.php');

    class PDF_Generate_Monthly_Transactions_Report extends PDF_MC_Table {
        function Header() {
            $this->SetFillColor(25, 40, 35);
            $this->SetMargins(10, 15, 10);
            
            if($this->PageNo() == 1) {
                $this->SetFont('Arial', '', 20);
                $this->SetTextColor(25, 40, 35);
                $this->Cell(0, 8, 'Nazareth Christian School of Antipolo', 0, 0, 'L');
                $this->Ln();
                $this->SetFont('Arial', '', 10);
                $this->Cell(0, 5, 'Monthly Transactions Report', 0, 0, 'L');
                $this->Ln(20);
            }

            $this->SetFont('Arial', 'B', 10);
            $this->SetTextColor(25, 40, 35);
            $this->SetAligns(array('C', 'C', 'C', 'C', 'C', 'C', 'C'));
            $this->SetWidths(array(50, 75, 30, 30, 30, 25, 20));
            $this->Row(array('Borrower\'s Name', 'Borrowed Material', 'Date Borrowed', 'Due_Date', 'Date_Returned', 'Penalty', 'Status'));
            $this->SetFont('Arial', '', 8);
            $this->SetTextColor(25, 40, 35);
        }

        function Footer() {
            $this->SetFont('Arial', 'I', 8);
            $this->SetTextColor(150);
            $this->SetY(-20);
            $this->Cell(0, 10, 'Page ' . $this->PageNo() . ' of {nb}', 0, 0, 'R');
            $this->SetY(-20);
            $this->Cell(0, 10, 'Library System: Generated Report', 0, 0, 'L');
        }
    }
?>
def parse_invoices(invoice_data)
  # pattern to match date, invoice number, client name, and amount
  pattern = /(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)/
  # scan the invoice data for the pattern
  invoice_data.scan(pattern) do |date, invoice_number, client_name, amount| # for each match, assign the matched values to the variables
    # print the matched values
    puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)

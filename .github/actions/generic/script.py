import csv

# Create a CSV file for output
with open('output.csv', mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Header1', 'Header2'])
    writer.writerow(['Row1-Col1', 'Row1-Col2'])

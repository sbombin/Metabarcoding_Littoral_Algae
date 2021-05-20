from Bio import SeqIO
import csv

genus_species_array=[]

with open('VTtaxonomy.csv', 'r') as csvfile:           #### file name
    spamreader = csv.reader(csvfile, delimiter=',')
    next(spamreader)
    for row in spamreader:
        genus_species_array.append(row[3]+" "+row[4])    #### change numbers for different taxonomic groups

count=0

for record in SeqIO.parse('VT.fasta', 'fasta'):          #### file name
    record.id = record.id +"| "+ genus_species_array[count]
    record.description = ""
    with open("NewVT.fasta", "a") as output_handle:
        SeqIO.write(record, output_handle, 'fasta')
    count+=1

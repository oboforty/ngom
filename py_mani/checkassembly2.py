from Bio import SeqIO


r = SeqIO.parse('combined.final.contigs.fa', 'fasta')
lens1 = []
for record in r:
    lens1.append(len(record.seq))

print("Contigs, max len, total len")
print(len(lens1), max(lens1), sum(lens1))

print("over 3kb")
print(len(list(filter(lambda x: x > 3000, lens1))))

print("over 50kb")
print(len(list(filter(lambda x: x > 50000, lens1))))

print("over 100kb")
print(len(list(filter(lambda x: x > 100000, lens1))))


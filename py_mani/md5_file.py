import hashlib

def md5(fname):
    hash_md5 = hashlib.md5()
    with open(fname, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()

print(md5("SRR4342139.forward.fastq"))

print(md5("../data/seq_RNA_raw_0401/SRR4342139.1.fastq"))

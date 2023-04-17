## Updated August 2021
## Author: Darlan Conterno Minussi
## Contact: <DCMinussi@mdanderson.org>
## samtools - samtools-1.13
## bowtie2 - bowtie2-2.4.4
## Genome - hg38
## sambamba - sambamba-0.8.1-linux-amd64-static
## NOTE: program location currently hard coded. 
## INPUT: 
## OUTPUT:
## EXAMPLE:  
## pull in samples fastq files
samples, = glob_wildcards("fastq/{sample}.fastq.gz")
samtools_path="/volumes/seq/code/3rd_party/samtools/samtools-1.13/samtools"

rule all:
    input:
        expand('marked/{sample}.bam', sample=samples)

## align using bowtie2 
rule bowtie2:
    input:
        r1 = "fastq/{sample}.fastq.gz",
    output:
        temp("mapped/{sample}.bam")
    log:
        "logs/bowtie2/{sample}.log"
    params:
        bowtie2_path="/volumes/USR3/unruh/pipelines/3rd_party/bowtie2-2.4.4/bowtie2", 
        bowtie2_index="/volumes/seq/genomes/hg20/Homo_sapiens/UCSC/hg38/Sequence/Bowtie2_2.3.5.1_Index/hg38",
    threads: 8
    shell:
        "({params.bowtie2_path} -x {params.bowtie2_index} -p {threads} -U {input.r1}  | {samtools_path} view -Sb -@ {threads} > {output}) 2> {log}"

# sorting aligned reads using samtools
rule sort:
    input: 
        "mapped/{sample}.bam"
    output:
        temp("sort/{sample}.bam")
    threads: 4
    shell:
        "{samtools_path} sort {input} -@ {threads} -o {output}"

# indexing aligned reads using samtools
rule index:
    input:
        "sort/{sample}.bam"
    output:
        temp("sort/{sample}.bam.bai")
    shell:
        "{samtools_path} index {input}"

# mark duplicates using sambamba
rule sambamba_markdup:
    input:
        "sort/{sample}.bam",
    output:
        "marked/{sample}.bam"
    threads: 4
    shell:
        "/volumes/seq/code/3rd_party/git/sambamba-0.8.1/sambamba-0.8.1-linux-amd64-static markdup -t {threads} {input} {output}"


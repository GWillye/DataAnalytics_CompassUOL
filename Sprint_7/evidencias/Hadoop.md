# Learn by Example: Hadoop, MapReduce for Big Data problems

## Seção 1 - Introduction

## Seção 2 - Why is Big Data a Big Deal

### The Big Data Paradigm

Review about Big Data. For more informations, read the abstract of the course "Fundamentos Big Data 3.0" in [this link](https://gabrielwillye.notion.site/Fundamentos-de-Big-Data-79a06f2c95214628a5e1a884cb6ce161?pvs=4)

### Serial vs Distributed Computing

If the data is allocated in a only local, the transfer speed and read speed is slowly. So, for resolve this, it's possible to distribute data in a lot of locals, processing in parallel this data. The Distributed Computing is faster than Serial Computing. Also, the Data Size in Serial Computign is limited by disk size, but in the Distributed Computing, the data size is unlimited, and this impact in the price, so, Distributed Computing is cheaper than Serial Computing.

### What is Hadoop?

**Hadoop:** is a distributed computing framework developed by Apache and written in Java.
**HDFS** is a file system to manage the storage of data. *Hadoop Distributed File System*
**MapReduce** is a framework to process data across multiple servers.
*Hadoop is HDFS + MapReduce*
Hadoop is an open source implementation of 2 proprietary technologies by Google 
GFS: *Google File System*
**MapReduce:** A framework to process data across multiple servers →
**YARN** is a framework to RUN the data processing task
**MapReduce** is a framework to DEFINE a data processing task
**Hadoop = HDFS + YARN + MapReduce**

### HDFS or the Hadoop Distributed File System

Hadoop uses this to **store data** across multiple disks. Hadoop is normally deployed on a *group of machines(Cluster)*; each machine in the cluster is a *mode*. One of this nodes acts as the *master node*. This node manages the overall file system. The *name nome* stores the directory structure and metadata for all the files. Other nodes are called *data nodes*; the data is physically stored on these nodes. 
The file is broken into blocks of size 128 MB. This size is chosen to minimize the time to seek to the block on the disk. The name node store the block locations for each file.
![Example picture](https://snipboard.io/zmSBRK.jpg)
One of the challenges in Distributed Computing is if a block or data node was corrupted. To solve this problem, is possible define a *replication factor* in HDFS: each block is replicated, and the replicas are stored in different data nodes.
![Example picture](https://snipboard.io/u4Obi8.jpg)

### MapReduce Introduced

### YARN or Yet Another Resource Navigator

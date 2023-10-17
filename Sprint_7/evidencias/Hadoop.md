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

We've stored a text file in HDSF. The file consists of blocks stored on different nodes. The objective is to find the number of times the word "hello" occurs in the file.
The two options:

#### Option 1

1. Reconstruct the complete file in one node;
2. Process the file to count # of "hello"s

Pro: This program is relatively simple to write
Con: We are not taking advantage of the parallelism inherent in Hadoop

#### Option 2

1. Process each block in the node it is stored in (Each result is the # "hello"s in the block)
2. Take all the results to one node and combine then; The answer is simply the sum of all the results.

This is exactly the idea behind MapReduce. MapReduce ia a way to parallelize a data processing task.

#### Map Phase

1. Process each block in the node it is stored in
2. Take all the results to one node and combine then

Distributed computing can get very complicated; Managing resources and memory across multiple nodes. MapReduce abstracts the programmer from all these complications. You just define 2 function, and the rest is taken care of by Hadoop. *map()* and *reduce()*

The advantage of the use of the Hadoop is the parallelization by expressing any task as **map + reduce rasks**.

### YARN or Yet Another Resource Navigator

The YARN was introduced in Hadoop 2.0 to separately handle. The YARN is used to do the management of resources on the Hadoop cluster. YARN co-ordinates all the different MapReduce tasks running on the cluster. Also, monitors for failures and assigns new nodes when others fail.

### Resume of the step-by-step of Hadoop

**MapReduce** → User defines map and reduce tasks using the MapReduce API.
**YARN** → A job is triggered on the cluster
**HDFS** → YARN figures out where and how to run the job, and stores the result in HDFS

## The MapReduce "HelloWorld"

The paradigm of the **key insight**: ANY data processing task can be parallelized, if you express it as:

<key, value> → map() → <key,value> → reduce() → <key,value>

A map() task that tranforms a <key, value> pair to a set of <key, value> pairs.
A reduce() task that combines values which have the same key.

When we have a large text file, and the objetive is create a frequency distribution of the words in the file. This is a commmom task in Natural Language Processing.

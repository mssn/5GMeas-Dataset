############################################################################################
#   Datasets and source codes for IMC'25 (An In-Depth Look into 5G ON-OFF Loops in the Wild)
#
############################################################################################

This README is used to introduce our datasets and source codes used by our IMC'25 work: 
“An In-Depth Look into 5G ON-OFF Loops in the Wild”.

If you use our datasets and/or codes in your publication, please cite our IMC'25 paper, 
@inproceedings{liu2025onoff,
  title={An In-Depth Look into 5G ON-OFF Loops in the Wild},
  author={Liu, Yanbing and Huang, Jingqi and Fahmy, Sonia and Peng, Chunyi},
  booktitle={IMC'25},
  year={2025}
}


1) Dataset overview 

We collected this dataset from December 2024 to May 2025 to conduct our study of 5G ON-OFF loops. We conducted extensive measurement experiments with all three major operators (T-Mobile, AT&T, Verizon) in 11 test areas in two U.S. cities – West Lafayette and Lafayette. These test areas cover Purdue campus, downtown and residential zones, with area sizes ranging from 1 km^2 to 2.9 km^2. In each test area, we randomly select multiple locations to check whether a 5G ON-OFF loop is observed. At each test location, we use one 5G phone to conduct a few stationary experiments with bulk file download. We use tcpdump to capture traffic packets and record data throughput. We use Network Signal Guru to collect signaling messages and extract key information including serving cells over time, as well as their RSRP/RSRQ measurements and the involved RRC commands and configuration parameters.


2) Structure of files

├── dataset
│   ├── raw
│   │   ├── {Date}/tagData
│   │   │   └── tagData_{tag}.txt
│   │   ├── {Date}/raw_ho
│   │   │   └── handoff_trace_{tag}.csv
│   │   ├── {Date}/raw_rss
│   │   │   └── rss_data_{tag}.csv
│   │   ├── {Date}/gps
│   │   │   └── location_trace_{tag}.csv
│   │   ├── {Date}/thput_loc
│   │   │   └── thput_loc_trace_{tag}.csv
│   │   ├── {Date}/gps_cellset_thput_0.1
│   │   │   └── gct_trace_{tag}.csv
│   │   └── {Date}/onoff
│   │       └── onoff_rss_{tag}.csv
│   ├── onoff_instances
│   │   ├── coarse-grained
│   │   │   └── combined_onoff_trace_{operator}_all_static.csv
│   │   └── fine-grained
│   │       └── combined_onoff_trace_spatial_{type}_t.csv
│   └── taskround_list
│       └── taskround_list_{operator}.csv
│
└── figure
    └── ...

Due to the space limit by Github, we compress and move dataset/raw folder to 
https://mssn3.cs.purdue.edu/owncloud/index.php/s/SYdlhfKaeOMbndP


3) Dataset release and its description

-------------------------------------------------------------------------------
dataset/raw/{Date}/tagData: 
Including the shortened information of parsed signaling messages, such as LTE/NR NR5G RRC messages, cell measurement results, etc.
-------------------------------------------------------------------------------
dataset/{Date}/raw_ho:
Records cell handover instances and their information including timestamp and source/destination cellsets.
-------------------------------------------------------------------------------
dataset/raw/{Date}/raw_rss:
Records RSRP/RSRQ measurement samples of serving cells or neighboring cells.
-------------------------------------------------------------------------------
dataset/raw/{Date}/gps:
Records GPS information in each run.
-------------------------------------------------------------------------------
dataset/raw/{Date}/thput_loc:
Records DL/UL throughput together with GPS information in each run.
-------------------------------------------------------------------------------
dataset/raw/{Date}/gps_cellset_thput_0.1:
Records the serving cellsets, throughput and GPS per 100ms in each run.
-------------------------------------------------------------------------------
dataset/raw/{Date}/onoff:
Records each onoff event with information including timestamp, source/destination cellsets, serving cell radio condition, disruption time and etc.
-------------------------------------------------------------------------------
dataset/onoff_instances/coarse-grained:
Including the combined 5G ON-OFF traces in all coarse-grained measurement study in all areas with three operators. This result is used for Section 4 and Section 5 of our paper.
-------------------------------------------------------------------------------
dataset/onoff_instances/fine-grained:
Including the combined 5G ON-OFF traces in all fine-grained measurement study of T-Mobile. This result is used for Section 6 of our paper.
-------------------------------------------------------------------------------
dataset/taskround_list:
List taskrounds (runs) and basic information in coarsed-gained and fine-grained studies.
-------------------------------------------------------------------------------
figure:
Includes plotting scripts (Pgfplots and Matlab) and used input data of each figure in the paper.
-------------------------------------------------------------------------------

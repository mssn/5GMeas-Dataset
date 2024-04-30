###############################################################################
#   Datasets and source codes for IWQoS'24 (The Sky is Not the Limit: Unveiling Operational 5G Potentials in the Sky)
#
###############################################################################

This README is used to introduce our datasets and source codes used by our HotMobile'24 work: 
“The Sky is Not the Limit: Unveiling Operational 5G Potentials in the Sky”.

If you use our datasets and/or codes in your publication, please cite our HotMobile'24 paper, 
@inproceedings{liu2024sky,
  title={The Sky is Not the Limit: Unveiling Operational 5G Potentials in the Sky},
  author={Liu, Yanbing and Huang, Jingqi, and Peng, Chunyi},
  booktitle={IWQoS'24},
  year={2024}
}


1) Dataset overview 

We collected this dataset from November 2023 to February 2024 to conduct our study of aerial 5G performance. We ran measurement experiments primarily in one 1 Km × 1 Km area in a US city (West Lafayette). We used a drone (DJI Phantom 4 Pro) carrying a 5G phone (Google Pixel 5) to measure aerial performance. We flied drones at different altitudes up to 120m. In all the experiments, the test phone repeatedly uploads bulky files (50MB each) to our lab server and measures uplink speed. The experiments were performed via MI-LAB testbed (http://milab.cs.purdue.edu/).


2) Structure of files

├── dataset
│   ├── raw
│   │   ├── cellset_thput
│   │   │   └── gps_cellset_thput_rss_snr_rb_1_{date range}_all_taskround_list_{mccmcn}_all_new.csv.csv
│   │   ├── rss
│   │   │   └── raw_rss_{date range}_all_taskround_list_{mccmcn}_all_new.csv.csv
│   │   └── handover_instance
│   │       └── instance_dronemeas_{date range}_all_taskround_list_{mccmcn}_all_new.csv.csv
│   └── grid
│       ├── all_grid_cell_set_{date range}_{grid size}_all.csv
│       ├── all_grid_nr_cell_{date range}_{grid size}.csv
│       └── all_grid_thput_{date range}_{grid size}_all.csv
│
└── figure
    └── ...

Due to the space limit by Github, we compress and move dataset/raw folder to 
https://mssn3.cs.purdue.edu/owncloud/index.php/s/z3FmKrVqdBl7aMP


3) Dataset release and its description

-------------------------------------------------------------------------------
dataset/raw/cellset_thput: 
Records the serving cellset, GPS (latitude, longitude and altitude), instant upink throughput per second.
-------------------------------------------------------------------------------
dataset/raw/rss:
Records RSRP/RSRQ measurement samples of serving cells or neighboring cells.
-------------------------------------------------------------------------------
dataset/raw/handover_instance:
Records cell handover instances and their information including timestamp, location, operator, type, source/destination cellset, and etc.
-------------------------------------------------------------------------------
dataset/grid:
Records cellset and performance per grid. The size of each grid is 0.0001 × 0.0001 × 15m or 0.0005 × 0.0005 × 15m in latitude, longitude and altitude, approximately, 11m × 9m × 15m or 55m × 45m × 15m.
-------------------------------------------------------------------------------
figure:
Includes plotting scripts (Pgfplots and Matlab) and used input data of each figure in the paper.
-------------------------------------------------------------------------------

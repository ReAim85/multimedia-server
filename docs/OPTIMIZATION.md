# Optimization Management:
- **ZRAM** - Due to 4 gigs of ram, zram implementation is a perfect choice. Zram compresses data in real time to allow storing 3 times more data in the same amount of ram.

- **ZSTD Algorithm** - The selection of zstd rather than lz4 and lzo is purely based on Reddit. While zstd is slower at compression than lz4 and lzo its much faster at decompression.

- **ML OFFLOADING** - Due to low-power hardware I had no choice but to opt out of the machine learning model provided by immich due to its high ram demand.

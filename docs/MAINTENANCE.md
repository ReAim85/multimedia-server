# Updates and Disaster Prevention
## Updates
Since Arch is a rolling release, manual updates will be performed every week

1. **System Update:** `sudo pacman -Syu`
2. **Docker Update:**
    ```bash
    docker-compose pull
    docker-compose up -d --remove-orphans
    ```

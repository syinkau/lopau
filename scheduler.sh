#!/bin/bash

echo "Scheduler started at $(date)"

# Jalankan `main.sh` dan `bash.sh` di background
/usr/local/bin/run.sh &

# Loop untuk menjalankan restart_dynos.sh setiap 5 menit
while true; do
  echo "Running scheduled task: restart_dynos.sh at $(date)"
  /usr/local/bin/restart.sh

  # Tunggu 5 menit (300 detik)
  sleep 300
done

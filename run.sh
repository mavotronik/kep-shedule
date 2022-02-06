#!/usr/bin/with-contenv bashio

echo "Running..."
echo "Instaling python packages..."
python3 -m pip3 install wget fitz PyMuPDF
echo "Startig main python script..."
python3 kep_shedule.py
echo "Starting python web server..."
python3 -m http.server 8100
echo "Web started on port 8100"
echo "Running complete"

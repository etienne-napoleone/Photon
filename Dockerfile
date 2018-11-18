FROM python:3-alpine

LABEL name photon
LABEL src "https://github.com/s0md3v/Photon"
LABEL creator s0md3v
LABEL dockerfile_maintenance khast3x
LABEL desc "Incredibly fast crawler designed for reconnaissance."

WORKDIR /photon
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

VOLUME [ "/photon" ]
ENTRYPOINT [ "python", "photon.py" ]
CMD ["--help"]

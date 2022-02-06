ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache python3 py3-pip

# Set work directory
WORKDIR /data

# Copy data for add-on
COPY run.sh /
COPY kep_shedule.py /
COPY shedule.pdf /
COPY shedule.txt /

# Set premissions
RUN chmod a+x /run.sh

# Run!
CMD [ "/run.sh" ]
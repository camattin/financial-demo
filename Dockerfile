# Extend the official Rasa SDK image
FROM rasa/rasa-sdk:3.0.6

# Use subdirectory as working directory
WORKDIR /app

# Copy any additional custom requirements, if necessary (uncomment next line)
# COPY actions/requirements-actions.txt ./

# Change back to root user to install dependencies
USER root

# Copy actions folder to working directory
COPY ./actions /app/actions

# Install extra requirements for actions code, if necessary (uncomment next line)
RUN pip install -r /app/actions/requirements-actions.txt

# By best practices, don't run the code with root user
USER 1001

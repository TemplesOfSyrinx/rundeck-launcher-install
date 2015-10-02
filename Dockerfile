# The current version of RunDeck requires Java 7 JRE
FROM java:7-jre

# Current version of RunDeck (target)
ENV RUNDECK_VERSION 2.5.3

# Create a non-privileged "rundeck" user
RUN ["adduser","--system","--home","/rundeck","rundeck"]

# Switch to user
USER rundeck

# Run java as the user
RUN ["java","-version"]

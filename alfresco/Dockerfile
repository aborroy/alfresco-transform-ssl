FROM alfresco/alfresco-content-repository-community:7.2.0

ARG IMAGEUSERNAME=alfresco
ARG JRE_HOME=/usr/lib/jvm/jre

# default user is alfresco (added on the base image alfresco/alfresco-content-repository-community)
# change to root user to be able to install the addons and packages
USER root

# Add trusted certificate (generated by run.sh script)
COPY transform.cert $JRE_HOME/lib/security
RUN cd $JRE_HOME/lib/security \
    && keytool -keystore cacerts -storepass changeit -noprompt -trustcacerts -importcert -alias transform -file transform.cert

# Restore original user
USER ${IMAGEUSERNAME}

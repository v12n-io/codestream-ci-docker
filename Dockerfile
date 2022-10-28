FROM v12nio/codestream-ci:latest as baseimage
ARG VERSION
LABEL maintainer="blog.v12n.io"
LABEL version="$VERSION"

# Update packages and install new ones
RUN tdnf update -y && \
    tdnf install -y docker && \
    tdnf clean all

ADD docker /etc/default/
ADD VERSION .

# Final tidying
FROM baseimage as finalimage
RUN tdnf autoremove -y && \
    tdnf clean all
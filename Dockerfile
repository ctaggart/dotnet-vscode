# https://github.com/ctaggart/dotnet-vscode
# https://hub.docker.com/r/ctaggart/dotnet-vscode/

# a couple of dotnet channels to chose from, debian jessie based
# https://hub.docker.com/r/microsoft/dotnet/
# https://github.com/dotnet/dotnet-docker
FROM microsoft/dotnet:latest

COPY root /root

RUN cd /root \
  && ./install-user.sh \
  && ./install-xpra.sh \
  && ./install-vscode.sh \
  && ./install-mono.sh \
  && cp install-vscode-*.sh /home/vscode/ \
  && cp start-xpra.sh /home/vscode/ \
  && chown vscode:vscode /home/vscode/*.sh \
  && su - vscode -c /home/vscode/install-vscode-dotnet.sh

WORKDIR /root
CMD su - vscode
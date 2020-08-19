FROM launcher.gcr.io/google/debian9:latest

RUN apt update && \
  apt install -y curl jq

RUN curl -L -o /opt/jnet $(curl --silent 'https://api.github.com/repos/altipla-consulting/jnet/releases/latest' | jq -r '.assets[0].browser_download_url') && \
  chmod +x /opt/jnet

CMD ["/opt/jnet"]

FROM kalilinux/kali-rolling:latest

WORKDIR /scripts

WORKDIR /data

WORKDIR /extScripts

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y

RUN apt-get install locate -y

RUN apt-get install wget -y

RUN apt-get install git -y

RUN apt-get install vim -y

RUN apt-get install golang -y

RUN apt-get install python3 -y

RUN apt-get install python3-pip -y

RUN pip3 install uuid

RUN  go env -w GO111MODULE=auto

RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN mv /root/go/bin/subfinder /usr/bin/

RUN apt-get install sublist3r -y

RUN go install github.com/OJ/gobuster/v3@latest
RUN mv /root/go/bin/gobuster /usr/bin

RUN apt-get install nmap -y

RUN apt-get install nikto -y

RUN apt-get install hydra -y

RUN apt-get install nano -y

RUN go install -v github.com/tomnomnom/assetfinder@latest
RUN mv /root/go/bin/assetfinder /usr/bin/

RUN go install -v github.com/openrdap/rdap/cmd/rdap@latest
RUN mv /root/go/bin/rdap /usr/bin/

RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN mv /root/go/bin/httpx /usr/bin/

RUN go install github.com/tomnomnom/waybackurls@latest
RUN mv /root/go/bin/waybackurls /usr/bin/

RUN apt-get install git

RUN cd /scripts
RUN git clone https://github.com/s0md3v/XSStrike.git /scripts/XSStrike
RUN pip3 install -r /scripts/XSStrike/requirements.txt

RUN cd /scripts
RUN git clone https://github.com/0xKayala/ParamSpider /scripts/ParamSpider
RUN pip3 install -r /scripts/ParamSpider/requirements.txt

RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
RUN mv /root/go/bin/nuclei /usr/bin/
RUN nuclei -update-templates

RUN git clone https://github.com/danielmiessler/SecLists.git /scripts/SecLists

RUN apt-get install --fix-missing

RUN apt-get install sqlmap -y

RUN GO111MODULE=on go install github.com/jaeles-project/gospider@latest
RUN mv /root/go/bin/gospider /usr/bin/

RUN git clone https://github.com/m4ll0k/SecretFinder.git /scripts/SecretFinder
RUN pip3 install -r /scripts/SecretFinder/requirements.txt

RUN go install github.com/hahwul/dalfox/v2@latest
RUN mv /root/go/bin/dalfox /usr/bin/

RUN git clone https://github.com/Bo0oM/ParamPamPam.git /scripts/ParamPamPam
RUN pip3 install --no-cache-dir -r /scripts/ParamPamPam/requirements.txt

RUN git clone https://github.com/maK-/parameth.git /scripts/parameth
RUN pip3 install -r /scripts/parameth/requirements.txt

RUN git clone https://github.com/GerbenJavado/LinkFinder.git /scripts/LinkFinder
RUN pip3 install -r /scripts/LinkFinder/requirements.txt


RUN go install github.com/lc/gau/v2/cmd/gau@latest
RUN mv /root/go/bin/gau /usr/bin/

RUN git clone https://github.com/ShutdownRepo/httpmethods.git /scripts/httpmethods

RUN go install github.com/ferreiraklet/airixss@latest
RUN mv /root/go/bin/airixss /usr/bin/

RUN go install github.com/takshal/freq@latest
RUN mv /root/go/bin/freq /usr/bin/

RUN go install github.com/tomnomnom/meg@latest
RUN mv /root/go/bin/meg /usr/bin/

RUN pip3 install uro

RUN go get github.com/Emoe/kxss
RUN mv /root/go/bin/kxss /usr/bin/

RUN pip3 install tqdm

RUN go install github.com/hakluke/hakrawler@latest
RUN mv /root/go/bin/hakrawler /usr/bin/

RUN go install -v github.com/riza/linx/cmd/linx@latest
RUN mv /root/go/bin/linx /usr/bin/


RUN go install github.com/003random/getJS@latest
RUN mv /root/go/bin/getJS /usr/bin/

RUN go install -v github.com/owasp-amass/amass/v4/...@master
RUN mv /root/go/bin/amass /usr/bin/

RUN git clone https://github.com/guelfoweb/knock.git /scripts/knock
RUN pip install -r /scripts/knock/requirements.txt


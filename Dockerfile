FROM ubuntu:xenial

MAINTAINER Benjamin Sivoravong bensivo@gmail.com

# Install dependencies
RUN apt-get update && apt-get install -y wget pandoc
RUN apt-get install -y texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra

# Pull the latex template from github and save in appropriate directory
RUN mkdir -p ~/.pandoc/templates && wget https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex -O ~/.pandoc/templates/eisvogel.latex

# Configure working directory
RUN mkdir /workdir
WORKDIR /workdir

# Copy pandoc script and set to execute
COPY ./md2pdf.sh /
RUN chmod +x /md2pdf.sh

ENTRYPOINT ["/md2pdf.sh"]
CMD []

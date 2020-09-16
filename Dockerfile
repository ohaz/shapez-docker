FROM node:12

WORKDIR /shapez/

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && apt-get install -y \
	git \
	ffmpeg \
	yarn \
	git-lfs

RUN git lfs install

RUN git clone https://github.com/tobspr/shapez.io.git .

RUN git lfs pull

RUN yarn

RUN cd gulp && yarn && cd ..

ADD startscript.sh .
RUN chmod +x startscript.sh

ENTRYPOINT ["./startscript.sh"]

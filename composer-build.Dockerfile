FROM cimg/rust:1.65-node

RUN sudo apt-get update && sudo apt-get install -y  \
    libx11-dev \
    libxi-dev \
    libxtst-dev \
    libgtk-3-dev \
    libsoup2.4-dev \
    libjavascriptcoregtk-4.0-dev \
    libwebkit2gtk-4.0-dev \
    libusb-1.0-0-dev \
    libxdo-dev

RUN sudo corepack enable && corepack prepare pnpm@latest --activate && SHELL=`which bash` pnpm setup

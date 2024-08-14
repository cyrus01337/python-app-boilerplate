FROM python:3.12-bookworm AS system
ENV DEBIAN_FRONTEND=noninteractive
ENV USER="python"
ENV GROUP="$USER"
WORKDIR /workspace

RUN ["apt-get", "update"]
RUN ["apt-get", "dist-upgrade", "-y"]
RUN ["apt-get", "install", "-y", "sudo", "zsh"]

FROM system AS user

RUN addgroup $GROUP \
    && useradd -mg $GROUP -G sudo -s /usr/bin/zsh $USER \
    && echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers;

FROM user AS neovim
WORKDIR /neovim

RUN curl -L https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz -o neovim.zip \
    && tar -xzf neovim.zip --strip-components=1 \
    && rm neovim.zip;

FROM user AS final
COPY --from=neovim /neovim/ /usr/

RUN ["apt-get", "clean"]
RUN ["apt-get", "autoremove", "-y"]

# USER python

FROM python:slim

USER root

WORKDIR /root/project
COPY . .

COPY .ssh/ /root/.ssh/
RUN chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/*

ENV PYTHONPATH="${PYTHONPATH}:/root/project"

RUN apt update 

RUN apt install -y nodejs

RUN apt install -y curl
RUN pip install --upgrade pip
RUN pip install -r requirements/dev.txt
RUN apt install -y git
RUN git config --global user.name "Roman"
RUN git config --global user.email "lackroy5111@gmail.com"

RUN apt install -y zsh
RUN chsh -s $(which zsh)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes
RUN echo 'eval "$(starship init zsh)"' >> ~/.zshrc

RUN mkdir /root/.config
RUN touch /root/.config/starship.toml
RUN echo '[character]' >> /root/.config/starship.toml
RUN echo 'success_symbol = "[➜](bold green)"' >> /root/.config/starship.toml
RUN echo 'error_symbol = "[✖︎](bold red)"' >> /root/.config/starship.toml
RUN echo '[nodejs]' >> /root/.config/starship.toml
RUN echo 'disabled = true' >> /root/.config/starship.toml
RUN echo '[python]' >> /root/.config/starship.toml
RUN echo 'disabled = true' >> /root/.config/starship.toml


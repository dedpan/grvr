wget -P $HOST/Downloads https://dl.google.com/go/go$1.linux-amd64.tar.gz
echo $1 "binary downloaded and stored in" $HOST/Downloads
sudo tar -C /usr/local/ -xzf $HOST/Downloads/go$1.linux-amd64.tar.gz
echo "Go installed! Now configuring the ENV variables!"
echo "export GOROOT=/usr/local/go
export GOPATH=\$HOME/go
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH">> ~/.bashrc
source ~/.bashrc
echo "Go is now ready to use!
    Confirm by running 'go version'"

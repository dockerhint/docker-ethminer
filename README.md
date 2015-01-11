# docker-ethminer
Automated Docker build of ethereum miner based on the cpp-ethereum build, and the [build instructions](https://github.com/ethereum/cpp-ethereum/wiki/Building-on-Ubuntu) on the official ethereum wiki for Ubuntu 14.04. 

The init.sh script by default will start a local eth serrver like so:

<pre>./eth -o peer -x 256 -l 30303 -m off -v 1 </pre>

As specified in the server configuration script on [Ethereum's wiki](https://github.com/ethereum/cpp-ethereum/wiki/Configure-a-Server)

You may have to modify the CMD to specify an IP address with the -u argument. Still testing this.

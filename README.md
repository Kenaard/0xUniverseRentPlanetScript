1. Install node.js https://nodejs.org/en/
2. When node.js will be installed open command line (Start->cmd) and paste this and hit enter
	npm install -g eth-cli
   Do it twice, just to be sure. 
3. Run script runMe.bat with your private key as a first parameter. You can also specify gas price (in GWEI) as a second parameter, like this: 
	runMe.bat <MY_PRIV_KEY> 15
   You can omit the gas price - the default value is 1. 15 is equal 1.5 GWEI, 2=2 GWEI, 25=2.5 GWEI etc.
4. The script will rent all planets from planets.json file with gas price 1 GWEI (default).
5. The script is waiting until the transaction is confirmed 3 times, so don't set the gas to low...

The script is in beta. You are using the script at your own risk.

If you like the script you can buy me a beer :)
ETH: 0x86dA5d1a739da088aC92312AF5A721Ce506F5404

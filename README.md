Before running this project you should ensure that latest truffle is installed and also ganache-cli if you want to explore the private blockchain using a GUI. Installing truffle and ganache-cli are fairly easy on windows as well as linux.
On Windows open the powershell in admin mode
On linux use the bash console and run the following commands:
Step1: Run the ganache-cli with 10 test accounts each with 100 ether.

The output is as follows:
-----------------------------------------------------------------------------------------------------------------------------

>ganache-cli

Ganache CLI v6.7.0 (ganache-core: 2.8.0)

Available Accounts
==================
(0) 0x00E79517Dd1Fd4636F7776090cC794E448875C16 (100 ETH)

(1) 0x108F13f8C921Dd2d726F78af1843c811F90590eC (100 ETH)

(2) 0x00c3AcCf28DEe75d4F594784E54E02CC17d98Bf3 (100 ETH)

(3) 0x3816c42B244a894b8c9d2DFDBB1aa7FcAc657365 (100 ETH)

(4) 0x7315476331B85899d932BE5D0D3E980252398e9f (100 ETH)

(5) 0xe903dC434A15A1cae5e4A6A891A4a67f277dcfDe (100 ETH)

(6) 0x46DaC3D845aF947651caf8A02b352bc02397a3e6 (100 ETH)

(7) 0xD1d6173dDAfE498499749a5fC5bCb2835dabDa97 (100 ETH)

(8) 0x3fb80F8A8a729385dC07037edB0a29f93d59362A (100 ETH)

(9) 0xb5385cd73496C3F0F6104b2dD35ADD086f0676a9 (100 ETH)

Private Keys
==================
(0) 0xa1165d696c522e9d49412e166a5aea63465707428989aaf461d6de9e5f699f76
(1) 0x1ceeefefe827aa0c760d026a7a3246879b2a8860a47252a0e6b78a06877f24ed
(2) 0xb4bd1acd70c7008ca92ea63e37c016c992bf65d8c2d924e24b79dd37b6fc4800
(3) 0x8f471b9ef37d42eefebd1a71dd495515bf8766c47974b7008f33e07819e97b4d
(4) 0x4a3b3ecc79cb3afdb5c0f73ba4430c2e7bfbf0ff766cbd34c23eb305486cb51f
(5) 0xacb90a7bac161c2d43305ebb4bdf7a1f2793bb644b57a0dc5d55e3d0f8e94837
(6) 0xd42f7e924af55456362ce9b60681717f67bb3669b8942f1f3e9e97151e4549dd
(7) 0x6fb9df317320bd85df2046aa397a18ac384f07c4315aa8733fbd307f3eb598fc
(8) 0x3ccf391c885b3a1422c14757e8fb42142403b78b6728802836caf7c7da1f60aa
(9) 0xe47b1760159f6f3c5ee5838510e84a21d9380037d2835e39e95324cbeed1838a

HD Wallet
==================
Mnemonic:      major abandon erode artist stool raccoon myself garbage chase scissors shoot talent
Base HD Path:  m/44'/60'/0'/0/{account_index}

Gas Price
==================
20000000000

Gas Limit
==================
6721975

Listening on 127.0.0.1:8545
--------------------------------------------------------------------------------------------------------------------------------
Use truffle compile and truffle migrate to compile and migrate respectively. Before doing this ensure that the ethereum test node running on port number 8545 is being referred in the truffle-config.js by uncommenting the development network. 
The deployment script needs to be carefully seen. 2_initial_migration.js and 3_initial_migration.js are meant for HoneyPot and HoneyPotUser contracts respectively. Refer carefully, how HoneyPotUser deployment refers the earlier deployed HoneyPot contract by address. 
Use truffle console to connect to the command line environment to interact with the contracts. 

Run the following commands to interact with the attacker contract HoneyPotUser 

let h = await HoneyPot.deployed()

let hpot1 = await HoneyPotUser.deployed()

let hpot2 = await HoneyPotUser1.deployed()

let conv1 = web3.eth.extend.utils.toWei

let accounts = await web3.eth.getAccounts()

await h.put({from:accounts[0],value:conv1("40")})

await h.put({from:accounts[1],value:conv1("40")})

await h.put({from:accounts[2],value:conv1("40")})

await h.put({from:accounts[3],value:conv1("40")})

await h.getBalance()/1000000000000000000

await hpot1.put({from:accounts[4],value:conv1("10")})

await hpot1.getBalance()/1000000000000000000

await hpot1.get()

---------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

truffle(development)> await hpot1.get()
{ tx:
   '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
  receipt:
   { transactionHash:
      '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
     transactionIndex: 0,
     blockHash:
      '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
     blockNumber: 16,
     from: '0x00e79517dd1fd4636f7776090cc794e448875c16',
     to: '0xcb7b45a8c8bbcdcca08cfdb8a3670e940010c171',
     gasUsed: 310016,
     cumulativeGasUsed: 310016,
     contractAddress: null,
     logs:
      [ [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object] ],
     status: true,
     logsBloom:
      '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000100000000000000000000000000020000400000000000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000',
     v: '0x1c',
     r:
      '0xb51bada4c875596e37aed82a25647f0c5a8fe29bd06383463ca8f391def86b88',
     s:
      '0x289c006d1ff918130bb246b1f2d0164025f54eb66382c5b3495a88e0d71bb005',
     rawLogs:
      [ [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object],
        [Object] ] },
  logs:
   [ { logIndex: 0,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_bf6b5717',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 1,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_8463bbe4',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 2,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_173d46b4',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 3,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_cc40167a',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 4,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_4d1ac50c',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 5,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_494e0616',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 6,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_657a20ec',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 7,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_5f98893f',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 8,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_92ea56a9',
       event: 'LogFallBack',
       args: [Result] },
     { logIndex: 9,
       transactionIndex: 0,
       transactionHash:
        '0xb47abb14479d6f608d602831fdd712aeac55b285c09815e68007aa5b796eff01',
       blockHash:
        '0x5db17687c4381ba11752cf4c3d7afa21249c0342d1a03ac1030a3a0b06cb091c',
       blockNumber: 16,
       address: '0xCB7B45A8c8BBcDccA08cfdB8A3670E940010c171',
       type: 'mined',
       id: 'log_a80965ae',
       event: 'LogFallBack',
       args: [Result] } ] }
truffle(development)>



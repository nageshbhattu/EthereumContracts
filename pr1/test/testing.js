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

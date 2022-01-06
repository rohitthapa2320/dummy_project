const axios= require('axios');

axios.get('https://testnet.binancefuture.com/fapi/v1/ticker/price?symbol=BTCSTUSDT')
.then((res) => {
    console.log("Symbol Ticker Price: ", res.data);
});

console.log("Change Made!!!");
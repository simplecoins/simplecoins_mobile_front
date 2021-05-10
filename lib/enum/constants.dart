String cryptoType = '';
bool isVisible = false;
bool isSummaryChecked = false;
bool isSellSummaryChecked = false;
bool isPInfoChecked = false;

var currencies = ['Bitcoin', 'USDT', 'Ripple'];
var status = ['AWAITING PAYMENT', 'PROCESSING', 'PROCESSED', 'CANCELLED'];

var buyRate = 5.70;
var btcRate = 0.000017;

// var compare = DateTime(2021, 02, 02);

List<Map<String, String>> pageData = [
  {
    "image": "assets/Onboarding/ScribbleArt_01.png",
    "text": "Hello!",
    "emoji": "assets/Onboarding/Wave.png",
    "subtitle":
        "Simplecoins is a platform for making fast and simple crypto purchases using your Mobile Money",
  },
  {
    "image": "assets/Onboarding/ScribbleArt_02.png",
    "text": "Freedom",
    "emoji": "assets/Onboarding/stars.png",
    "subtitle":
        "Enjoy the stress free experience we have to offer, along side the best crypto rates on the market.",
  },
  {
    "image": "assets/Onboarding/ScribbleArt_03.png",
    "text": "Super Secure",
    "emoji": "assets/Onboarding/Shield.png",
    "subtitle": "With simple but secure accounts and transactions you can trust"
  },
];

class Transaction {
  String currency;
  String status;
  var creationdate;
  double buyRate;
  double minersFee;
  String cryptoAddress;
  int paymentFrom;
  int paymentTo;
  double price;
  bool isBuying;

  Transaction({
    this.currency,
    this.status,
    this.creationdate,
    this.buyRate,
    this.cryptoAddress,
    this.isBuying,
    this.minersFee,
    this.paymentFrom,
    this.paymentTo,
    this.price,
  });
}

List<Transaction> transactions = [
  Transaction(
      currency: currencies[0],
      status: status[0],
      creationdate: DateTime(2021, 03, 29).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 150.0,
      isBuying: false),
  Transaction(
      currency: currencies[2],
      status: status[2],
      creationdate: DateTime(2021, 03, 28).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 130.0,
      isBuying: true),
  Transaction(
      currency: currencies[0],
      status: status[1],
      creationdate: DateTime(2021, 03, 29).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 70.0,
      isBuying: true),
  Transaction(
      currency: currencies[1],
      status: status[1],
      creationdate: DateTime(2021, 03, 27).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 1200.0,
      isBuying: true),
  Transaction(
      currency: currencies[2],
      status: status[3],
      creationdate: DateTime(2021, 03, 25).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 1000.0,
      isBuying: true),
  Transaction(
      currency: currencies[0],
      status: status[0],
      creationdate: DateTime(2021, 03, 28).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 70.0,
      isBuying: false),
  Transaction(
      currency: currencies[2],
      status: status[3],
      creationdate: DateTime(2021, 03, 23).millisecondsSinceEpoch,
      buyRate: buyRate,
      minersFee: 5.67,
      cryptoAddress: '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
      paymentFrom: 0503456748,
      paymentTo: 0503091855,
      price: 850.0,
      isBuying: false),
]..sort((v1, v2) => v2.creationdate - v1.creationdate);



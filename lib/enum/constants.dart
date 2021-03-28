String cryptoType = '';
bool isVisible = false;
bool isSummaryChecked = false;
bool isSellSummaryChecked = false;
bool isPInfoChecked = false;


var currencies = ['Bitcoin', 'USDT', 'Ripple'];
var status = ['AWAITING PAYMENT', 'PROCESSING', 'PROCESSED', 'CANCELLED'];

var buyRate = 5.70;

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

List<Map> transactions = [
  {
    'currency': currencies[0],
    'status': status[0],
    'creationdate': '09:20 PM - Jan 03 2021',
    'buyrate': buyRate,
    'miners fee': 5.67,
    'BTC address': '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
    'paymentfrom': 0503456748,
    'paymentto': 0503091855,
    'price': 250.00,
    'isBuying': true
  },
  {
    'currency': currencies[1],
    'status': status[2],
    'creationdate': '09:20 PM - Jan 03 2021',
    'buyrate': buyRate,
    'miners fee': 5.67,
    'BTC address': '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
    'paymentfrom': 0503456748,
    'paymentto': 0503091855,
    'price': 50.00,
    'isBuying': true
  },
  {
    'currency': currencies[2],
    'status': status[1],
    'creationdate': '09:20 PM - Jan 03 2021',
    'buyrate': buyRate,
    'miners fee': 5.67,
    'BTC address': '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
    'paymentfrom': 0503456748,
    'paymentto': 0503091855,
    'price': 150.00,
    'isBuying': false
  },
  {
    'currency': currencies[1],
    'status': status[3],
    'creationdate': '09:20 PM - Jan 03 2021',
    'buyrate': buyRate,
    'miners fee': 5.67,
    'BTC address': '136z1Buef4G8gC7yXnsWp2RAoEngHjJmS4',
    'paymentfrom': 0503456748,
    'paymentto': 0503091855,
    'price': 70.00,
    'isBuying': true
  }
];

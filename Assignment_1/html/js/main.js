
var session = new QiSession();

function startSubscribe() {
    session.service("ALMemory").done(function (ALMemory) {
        ALMemory.subscriber("PepperQiMessaging/totablet").done(function(subscriber) {
            subscriber.signal.connect(toTabletHandler);
        });    
    });
}

function toTabletHandler(list) { 
    // get the data and put it in the id "command"

    var listLength = list.length;
    var sum = 0;

    document.getElementById('number').innerHTML += (listLength);

    for (var i = 0; i < listLength; i++) {
        var kr = parseInt(list[i].substr(list[i].indexOf(' ')+1),10);
        document.getElementById('cartList').innerHTML += ('<li>'+list[i]+'kr'+'</li>');
        sum += kr;
    }

    document.getElementById('totalprice').innerHTML += sum;


    //document.getElementById('cartList').innerHTML += ('<li>'+value+'</li>');
    // process data with the function choice()
}

function sendToChoregraphe(response) {
    session.service("ALMemory").done(function (ALMemory) {
        console.log("ALMemory");
        ALMemory.raiseEvent("PepperQiMessaging/fromTabletResponse",response);
    });
}


function candyClick(){
	sendToChoregraphe("candy");
}

function sodaClick(){
	sendToChoregraphe("soda");
}

function cigClick(){
	sendToChoregraphe("cig");
}

function colaClick(){
    sendToChoregraphe("cola");
}

function spriteClick(){
    sendToChoregraphe("sprite");
}

function trocaClick(){
    sendToChoregraphe("troca");
}

function ferrariClick(){
    sendToChoregraphe("ferrari");
}

function djungelClick(){
    sendToChoregraphe("djungel");
}

function marlboroClick(){
    sendToChoregraphe("marlboro");
}

function princeClick(){
    sendToChoregraphe("prince");
}

function goBack(){
    sendToChoregraphe("goBack");
}

function shopCart(){
    sendToChoregraphe("shopcart");
}

function pay() {
    sendToChoregraphe("pay");
}

function removeItem() {
    var element = document.getElementById('cartList'); // will return element
    
    var childNodes = element.children;

    var listLength = childNodes.length;
    var sum = 0;
    sendToChoregraphe(childNodes[0].innerText);
    if(listLength != 0) {
        
        element.removeChild(childNodes[0]); // will remove the element from DOM        

        var element = document.getElementById('cartList'); // will return element
    
        var childNodes = element.children;

        var listLength = childNodes.length;

        document.getElementById('number').innerHTML = (listLength);

        for (var i = 0; i < listLength; i++) {
            var kr = parseInt(childNodes[i].innerText.substr(childNodes[i].innerText.indexOf(' ')+1),10);
            sum += kr;
        }

        document.getElementById('totalprice').innerHTML = sum;
    }
}

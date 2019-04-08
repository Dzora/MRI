
var session = new QiSession();

function startSubscribe() {
    session.service("ALMemory").done(function (ALMemory) {
        ALMemory.subscriber("PepperQiMessaging/totablet").done(function(subscriber) {
            subscriber.signal.connect(toTabletHandler);
        });    
    });
}

function toTabletHandler(value) { 
    // get the data and put it in the id "command"
    document.getElementById("command").value= value;
    tmp = document.getElementById("command").value;
    // send the data to html page
    document.getElementById("command").innerHTML= tmp;
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
//https://www.tinkercad.com/things/7mAlBvAXsJp/editel?returnTo=%2Fdashboard%2Fdesigns%2Fall

#define LIGA 3
#define DESLIGA 2
#define LED 4

bufferOn = false;




void setup{

    pinMode(LIGA, INPUT);
    pinMode(DESLIGA, INPUT);
    pinMode(LED, INPUT);
}

void loop{
    if (digitalRead(LIGA)){
        bufferOn = true;
    }

    if (bufferOn) {
        bufferOn = false;
        digitalWrite(4, true);
        delay(5000);
        digitalWrite(4, false);
    }

    if (digitalRead(DESLIGA){
        digitalWrite(LED, false);
    })
}
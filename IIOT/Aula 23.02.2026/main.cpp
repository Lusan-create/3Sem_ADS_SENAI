//https://www.tinkercad.com/things/7mAlBvAXsJp/editel?returnTo=%2Fdashboard%2Fdesigns%2Fall

#define LIGA 3
#define DESLIGA 2
#define LED 4

bool bufferOn = false;

unsigned int timer = 0;

void setup(){

    pinMode(LIGA, INPUT);
    pinMode(DESLIGA, INPUT);
    pinMode(LED, INPUT);
}

void loop(){

    if (digitalRead(LIGA)){
        bufferOn = true;
        timer = millis();
    }

    else if (digitalRead(DESLIGA)){
        digitalWrite(LED, false);
        bufferOn = false;
    }

    else if (LED) {
         
        if(millis() == timer > 5000){
            digitalWrite(4, false);
            bufferOn = false;
        }
        
    }
    
}

//Definindo os sensores
#define WINDOW_SENSOR_01    2
#define WINDOW_SENSOR_02    3
#define ROOM_SENSOR         4
#define KITCHEN_SENSOR      5
#define GARAGE_SENSOR       6
#define HALLWAY_SENSOR      7
#define ALARM               8
#define TURN_ON             9
#define BARRIER_SENSOR      10

//Definindo variáveis
bool systemOn     = false;
bool buttonBuffer = false;

//Pinagens
bool window_sensor_01, window_sensor_02, room_sensor, kitchen_sensor;
bool garage_sensor, hallway_sensor, alarm, turn_on, barrier_sensor;

//Funções
void io_mapping{

    //Inputs
    turn_on = digitalRead(TURN_ON);
    window_sensor_01 = digitalRead(WINDOW_SENSOR_01);
    window_sensor_02 = digitalRead(WINDOW_SENSOR_02);
    room_sensor = digitalRead(ROOM_SENSOR);
    kitchen_sensor = digitalRead(KITCHEN_SENSOR);
    garage_sensor = digitalRead(GARAGE_SENSOR);
    hallway_sensor = digitalRead(HALLWAY_SENSOR);
    barrier_sensor = digitalRead(BARRIER_SENSOR);

    //Outputs
    digitalWrite(ALARM, alarm)

}

void setup(){

    //Entradas
    pinMode(WINDOW_SENSOR_01,   INPUT);
    pinMode(WINDOW_SENSOR_02,   INPUT);
    pinMode(ROOM_SENSOR,        INPUT);
    pinMode(KITCHEN_SENSOR,     INPUT);
    pinMode(GARAGE_SENSOR,      INPUT);
    pinMode(HALLWAY_SENSOR,     INPUT);
    pinMode(TURN_ON,            INPUT);
    pinMode(BARRIER_SENSOR,     INPUT);

    //Saídas
    pinMode(ALARM,              OUTPUT);


}

void loop(){

    //Mapa das entradas e saídas
    io_mapping()
    
    //Buffer
    if(turn_on){
        buttonBuffer    = true
    }
    else if(buttonBuffer){
        buttonBuffer    = false
        turn_on         = true
    }

    //Ligado 
    if(turn_on){
        
        if (!barrier_sensor || !window_sensor_01 || !window_sensor_02 || room_sensor || kitchen_sensor
            garage_sensor || hallway_sensor){

            alarm = true
        }
    }
    //Desligado
    else{
        alarm = false;
    }

}
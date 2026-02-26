void setup() //Configurações do arduino (roda uma vez)
{
    pinMode(1, OUTPUT); //Define a saída
}

void loop() //Lógica do arduino (Executa constantemente enquanto ligado)
{
    digitalWrite(1, true); //Liga a lâmpada
    delay(3000); // Espera o valor em MS
    digitalWrite(1, false);

    digitalWrite(2, true);
    delay(3000);
    digitalWrite(2, false);

    digitalWrite(3, true);
    delay(3000);
    digitalWrite(3, false);

}
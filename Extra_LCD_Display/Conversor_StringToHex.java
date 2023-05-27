import java.util.Scanner;
import java.util.HashMap;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.IOException;

class Conversor_StringToHex
{
    public static void main(String[] args)
    {
        // Declarações & Instanciações:
        Scanner sc = new Scanner(System.in);
        HashMap<String,String> legenda = new HashMap<>();
        ArrayList<String> conversao = new ArrayList<>();
        String fileReadBuffer;
        String[] fileReadBufferVector;
        String userInput;
        int size;
        int intSize;

        // Leitura do Ficheiro "Legenda.txt" para um HashMap.
        try (BufferedReader fileRead = Files.newBufferedReader(Paths.get("Legenda.txt")))
        {
            while ( (fileReadBuffer = fileRead.readLine())!=null )
            {
                fileReadBufferVector = fileReadBuffer.split("=");
                if (!legenda.keySet().contains(fileReadBufferVector[0]))
                {
                    if (fileReadBufferVector[0].equals("  ")) {legenda.put(" ",fileReadBufferVector[1].trim());}
                    else {legenda.put(fileReadBufferVector[0].trim(),fileReadBufferVector[1].trim());}
                }
                else {System.out.println("NOTE: Check if there are repeated entries in Legenda.txt: "+fileReadBufferVector[0]);}
            }
        }
        catch (IOException e) {System.out.println("ERROR: Read IOException Happened: "+e);}
        catch (Exception e) {System.out.println("ERROR: [Read] Something unexpected happened. Please restart the program.");}

        // Algoritmo de Conversão de String Natural para HEX do LCD.
        // Exemplo: "Olá Olha!" -> x"4F",x"6C",(...)
        while (true)
        {
            // Lê o Input do Utilizador.
            System.out.print("Please input a string to convert:\n--> ");
            userInput = sc.nextLine();

            if (userInput.equals("0.QUIT")) {break;}

            // For Debugging Purposes:
            //for (String each : legenda.keySet()) {System.out.print(each+" --> ");System.out.print(legenda.get(each)+"\n");}

            // Para Cada Letra, converte.
            for (String each : userInput.split(""))
            {
                //System.out.println(each);
                conversao.add(legenda.get(each));
            }

            // Adição [Opcional] do Padding para Centrar os Elementos.
            size = conversao.size();
            if (size==16) {}
            else if (size<16)
            {
                intSize = 16 - size;
                if (true)
                {
                    for (int i = 0; i<intSize/2 ; i++)
                    {
                        conversao.add(0,"x\"20\",");
                    }
                    for (int i = 0; i<intSize/2 ; i++)
                    {
                        conversao.add("x\"20\",");
                    }
                }
            }
            
            // Adição Obrigatória de Padding no Final.
            size = conversao.size();
            if (size<16)
            {
                while (size!=16)
                {
                    conversao.add("x\"20\",");
                    size = conversao.size();
                }
            }

            // Imprime o Resultado.
            System.out.println("Size: "+conversao.size());
            conversao.forEach(System.out::print);
            System.out.println("\n");
            
            // Limpa o ArrayList.
            conversao.clear();
        }

        // Garbage Collector:
        sc.close();
    }
}
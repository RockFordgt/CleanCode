import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
   title: "Znaczące nazwy - garść praktyk (1)"
   content:[
       "Interfejsy i implementacje",
       " Interfejs == Klasa Abstrakcyjna",
       " Lepiej nie oznaczać iterfejsów przedrostkami typu \"I\" | \"Abstract\"",
       " lepiej zaznaczyć impementacje - poprzez nazwę klasy ()",
       "Unikaj mapowania mentalnego",
       " jednoliterowe zmienne (i,j,k - dla czego nie l? )",
       "  są w porzdku dla liczników <b>(krótkich)</b> pętli",
       "  są do niczego przy iterowaniu po kontenerze",
   ]
   notes: "
       dodatkowe \"I\" będzie wszędzie, w najlepszym razie to szum
       w najgorszym: \"nadinformacja\" -za dużo informacji.
       Lepiej dodać przyrostek \"Impl\" do klasy implemntującej.
       ---
       Uwaga!!! Bystrzy ludzie czasami lubią pokazywać swoje możliwości mentalne
       \"r\" oznacza URL zapisany małymi literami z usuniętą nazwą hosta i schematu
       "
}

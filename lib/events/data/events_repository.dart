import 'package:electro/artists/data/artists_repository.dart';
import 'event.dart';

class EventsRepository {
  Future<List<Event>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    var artists = ArtistsRepository().getArtists();

    return [
      Event(
          "Jawić się | Up To Date Festival 2019",
          """A gdyby tak spektakl przeżywać tańcząc z zamkniętymi oczami?

„Jawić się” to poemat korzystający z technicznego wyposażenia sali teatralnej, sensoryczna kąpiel, w którą widz zatapia się jak w przestrzeń obrazu. Rezygnujemy z linearnej narracji oraz hierarchii zmysłów, a rehabilitując ciało i sensualność na gruncie fenomenologii percepcji, skupiamy się na operowaniu ATMOSFERĄ i jej właściwościami. Gasnące światła otwierają widzów na tworzące się obrazy, a mimowolne skojarzenia wchodzą w reakcję z płynnym pejzażem, odkrywając jego kolejne warstwy i odbicia. W tak zbudowanym teatralnym sandboxie tylko krok dzieli widzów od wydłużenia reakcji własnego ciała poprzez ruch - otwarcia intymnego krajobrazu. TANIEC bowiem, powołując się na Wiesnę Mond-Kozłowską, uruchamia w nas nieświadome, „to moment absolutnego kontaktu człowieka z samym sobą, przeżywana tożsamość bycia i JAWIENIA się”.

Wychodzimy od kultury techno oraz transowości muzyki społeczeństw pierwotnych. Korzystamy ze strategii sztuk immersyjnych, VR i gier komputerowych z otwartym światem. Ważny impuls stanowią również techniki malarskie, których celem jest wypełnienie pola obserwatora, wchłonięcie go w barwę, sprawienie, aby kompozycje stały się jego środowiskiem.

Do pracy nad projektem zostali zaproszeni Bartek Hajkiewicz, kompozytor specjalizujacy się modelowaniem struktur brzmieniowych opartych na reprezentacjach sensorycznych. Kinga Katarzyna Łucja (KiM) twórczyni skupiona na aspekcie wibracyjnym dźwięku oraz głębokiej rezonującej repetytywność. Jędrzej Dondziło (Dtekk) doskonale znany promotor muzyczny i dyrektor festiwalu Up To Date. Choreografka Mary Szydlowska, która w swojej praktyce czerpie ze strategii techno i struktur architektury miejskiej. Grzegorz Jabłonowski, hipnoterapeuta z którym konsultowaliśmy wykorzystanie technik uważności i medytacji. Pomysłodawcą projektu jest Michał Stankiewicz, który bada potencjał ludzkiego ciała jako podstawowego medium teatru,  a samego spektaklu jako zaprojektowanej sytuacji, w której mogą zajść autonomiczne wobec niego zdarzenia.

Ostatecznie, JAWIĆ SIĘ to intymna, osobista poezja każdego z widzów.""",
          "images/mystic_vibes.jpg",
          DateTime.now().add(Duration(days: 5)),
          artists),
      Event(
          "Tribalanga Festival 2019",
          """Zafascynowani muzyką, sztuką, pięknem, naturą, oraz naszym dziedzictwem zapraszamy do zdrowej zabawy, tańca, twórczych warsztatów, odkrywania kuchni z całego świata i wypoczynku na łonie natury, w miejscu gdzie przeplata się duch dawnej podlaskiej krainy z nowoczesnością.

Tribalanga Festival żongluje kontrastami tak, by dać ukojenie dla każdego wędrowca.

Poszukaj własnych inspiracji i odpocznij razem z nami! 🌞""",
          "images/metro_uro.jpg",
          DateTime.now().add(Duration(days: 10)),
          artists),
      Event(
          "Metro w Techno",
          """MSC: TECHNO | EBM |ACID
STRT: 23 DT: 24.08
TX: 10/ 15 PLN""",
          "images/metro_w_techno.jpg",
          DateTime.now().add(Duration(days: 15)),
          artists),
    ];
  }
}

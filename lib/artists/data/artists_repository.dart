import 'artist.dart';

class ArtistsRepository {
  List<Artist> getArtists() {
    return [
      Artist("mach.de",
          "https://scontent.fqyy1-1.fna.fbcdn.net/v/t1.0-1/12088470_1229042070444509_3594818109736012856_n.jpg?_nc_cat=107&_nc_oc=AQnFL_gjoPIMyAZyjyAAq5bvI0GBFPvBPHifytsYLsZ3u6i-WX9zopMbTLz2M-vzHk0&_nc_ht=scontent.fqyy1-1.fna&oh=dda80eb88d51ca7e9495be598ddbbbc2&oe=5DF82C28"),
      Artist("Tec-Spoon",
          "https://i1.sndcdn.com/avatars-000023545347-st5xgg-t500x500.jpg"),
      Artist("Adren Phuture",
          "https://i1.sndcdn.com/avatars-000569900655-2dx5pl-t500x500.jpg"),
      Artist("MIFI",
          "https://i1.sndcdn.com/avatars-000455191419-745dhk-t500x500.jpg"),
      Artist("Hinkstep",
          "https://i1.sndcdn.com/avatars-000611648295-zj4bfu-t500x500.jpg"),
      Artist("Flyagaric Forest",
          "https://i1.sndcdn.com/avatars-000624778152-70bgkn-t500x500.jpg"),
      Artist("Swaratrip",
          "https://i1.sndcdn.com/avatars-000601158894-9crq8x-t500x500.jpg"),
    ];
  }
}

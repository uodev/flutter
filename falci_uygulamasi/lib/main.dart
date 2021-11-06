import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FalciAnaSayfa());
}

class FalciAnaSayfa extends StatefulWidget {
  const FalciAnaSayfa({Key? key}) : super(key: key);

  @override
  _FalciAnaSayfaState createState() => _FalciAnaSayfaState();
}

class _FalciAnaSayfaState extends State<FalciAnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GÜNÜN FALI"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: AnaSayfa(),
          ),
        ),
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int gelenYazi = 0;
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150.0,
          child: Image.asset("assets/images/falci.png"),
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
          child: ListTile(
            onTap: () {
              setState(() {
                YanitlariGetir(5, 1);
              });
            },
            leading: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
            title: Text(
              "AŞK DURUMU",
              style: TextStyle(color: Colors.redAccent),
            ),
            tileColor: Colors.white,
          ),
        ),
        Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
          child: ListTile(
            onTap: () {
              YanitlariGetir(5, 6);
            },
            leading: const Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            title: const Text(
              "PARA DURUMU",
              style: TextStyle(color: Colors.green),
            ),
            tileColor: Colors.white,
          ),
        ),
        Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
          child: ListTile(
            onTap: () {
              YanitlariGetir(5, 11);
            },
            leading: const Icon(
              Icons.explore,
              color: Colors.blue,
            ),
            title: const Text(
              "GÜNLÜK TAVSİYE",
              style: TextStyle(color: Colors.blue),
            ),
            tileColor: Colors.white,
          ),
        ),
        Container(
          width: 330.0,
          child: Center(
            child: Text(
              yanitlar[gelenYazi],
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          padding: const EdgeInsets.only(top: 10.0),
        ),
      ],
    );
  }

  void YanitlariGetir(int sayi1, int sayi2) {
    return setState(() {
      gelenYazi = Random().nextInt(sayi1) + sayi2;
    });
  }
}

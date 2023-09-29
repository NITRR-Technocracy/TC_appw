import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget> [
        const SizedBox(
          width: double.infinity,
          height: 200,
          child: Card(
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage(
                              'assets/images/Logo.jpg')),
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                      'The\nTechnocracy',
                      style: TextStyle(
                          color: Colors.white, fontSize:30),
                    ))),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text('- Technology is the best,\nwhen it brings us together...',
                        style: TextStyle(
                        color: Colors.white, fontSize:15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Card(
            color: Colors.black26,
            child: Center(
              child: RichText(
                text: const TextSpan(
                  text: '2007...The Begining\n',
                  style:TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),
                  children: [
                    TextSpan(
                      text: 'The grand fest of Aavartan had its seed sown back in 2007, when few Technical enthusiasts came up with the idea of "Vigyaan"-the national level science exhibition, single event back then which eventually transformed into magnificent Aavartan as we see it today.',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                    )
                  ]

                ),

              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Card(
            color: Colors.black26,
            child: Center(
              child: RichText(
                text: const TextSpan(
                    text: '2011...Vigyaan\n',
                    style:TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),
                    children: [
                      TextSpan(
                          text: 'It was 2011, when people witnessed the massive transition of Vigyaan, a platform for innovative ideas, into a complete fest, Aavartan. The consistent efforts and out of the box ideas of the team members laid the foundation for what now is called as the trademark of tech-fests!',
                          style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                      )
                    ]

                ),

              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Card(
            color: Colors.black26,
            child: Center(
              child: RichText(
                text: const TextSpan(
                    text: "Central India's Largest Tech-fest\n",
                    style:TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),
                    children: [
                      TextSpan(
                          text: "Team Technocracy took it to the next level as Aavartan'19 witnessed a footfall of over 10,000. The family of 200+ members left no stones unturned in creating a paradise for any tech-savvy. Their efforts bore a golden fruit as Aavartan reached the milestone of being recognized as the Central India's largest tech-fest.",
                          style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                      )
                    ]

                ),

              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Card(
            color: Colors.black26,
            child: Center(
              child: RichText(
                text: const TextSpan(
                    text: "2023...We're Back!\n",
                    style:TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),
                    children: [
                      TextSpan(
                          text: "Aavartan will be back with its new edition with stellar range of exciting tech savvy events and evening shows. Stay tuned with us through our social media handles to make sure you don't miss out on the next big tech revolution!",
                          style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                      )
                    ]

                ),

              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Card(
            color: Colors.black26,
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          text: "FAQ\n",
                          style:TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 25,fontStyle: FontStyle.normal),
                          children: [
                            TextSpan(
                              text: 'Visit our web page',
                              style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                            )
                          ]

                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          text: "Contact Us\n",
                          style:TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 25,fontStyle: FontStyle.normal),
                          children: [
                            TextSpan(
                                text: 'XXXXXXXX',
                                style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 15)
                            )
                          ]

                      ),

                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

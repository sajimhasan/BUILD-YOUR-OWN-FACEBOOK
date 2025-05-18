import 'package:facebook/UNIT/Costom_settingfut.dart';
import 'package:facebook/UNIT/CustomSetting.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isVisibility = false;
  bool issetting = false;
  bool seetingout = false;
  bool isprofassonal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.settings, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.search, size: 30),
                    ],
                  ),
                ],
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "images/download.png",
                              fit: BoxFit.contain,
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            "ssajim ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Stack(children: [Image.asset("images/download.png")]),
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundColor: Colors.black38,
                            child: Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Your shortcuts",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, indext) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/download.png",
                                fit: BoxFit.cover,
                                height: 80,
                                width: 80,
                              ),
                            ),
                            const Text(
                              "this the make for the recreate for the larning !!",
                              style: TextStyle(fontWeight: FontWeight.w700),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setting_screen(
                    iconsss: Icons.video_collection_outlined,
                    title: "Video",
                  ),
                  setting_screen(iconsss: Icons.person_3, title: "Group"),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setting_screen(
                    iconsss: Icons.access_time_rounded,
                    title: "Memories",
                  ),
                  setting_screen(iconsss: Icons.save, title: "saved"),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setting_screen(
                    iconsss: Icons.home_work_outlined,
                    title: "Market",
                  ),
                  setting_screen(iconsss: Icons.person_3, title: "Friend"),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setting_screen(iconsss: Icons.feed, title: "Feed"),
                  setting_screen(iconsss: Icons.event, title: "Event"),
                ],
              ),
              Visibility(
                visible: isVisibility,
                child: const Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setting_screen(iconsss: Icons.face, title: "Avatars"),
                        setting_screen(
                          iconsss: Icons.wallet_giftcard,
                          title: "Birthday",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setting_screen(
                          iconsss: Icons.crisis_alert,
                          title: "Crisis Response",
                        ),
                        setting_screen(
                          iconsss: Icons.find_in_page,
                          title: "Finds",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setting_screen(
                          iconsss: Icons.games_outlined,
                          title: "Gaming",
                        ),
                        setting_screen(
                          iconsss: Icons.message,
                          title: "Messager kids",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setting_screen(
                          iconsss: Icons.pages_outlined,
                          title: "Page",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                ),
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                child: Text(
                  isVisibility ? "Show less" : "Show more",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.question_mark_outlined, size: 30),
                  const SizedBox(width: 10),
                  const Text(
                    "Help & support",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        issetting = !issetting;
                      });
                    },
                    icon: Icon(
                      issetting ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: issetting,
                child: Column(
                  children: [
                    Costom_Settingfut(
                      bal: Icons.headset_mic_sharp,
                      title: "help center",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.account_balance_sharp,
                      title: "Account Status",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.message,
                      title: "Support Inbox",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.design_services_sharp,
                      title: "Report a problem",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.picture_as_pdf_rounded,
                      title: "Team & Policies",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.settings, size: 30),
                  const SizedBox(width: 10),
                  const Text(
                    "Setting & privacy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        seetingout = !seetingout;
                      });
                    },
                    icon: Icon(
                      seetingout ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: seetingout,
                child: Column(
                  children: [
                    Costom_Settingfut(
                      bal: Icons.account_circle_rounded,
                      title: "Setting",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.lock,
                      title: "Private centre ",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.lock_clock,
                      title: "Your time on facebook",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.device_unknown_outlined,
                      title: "Device requests",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.browse_gallery_rounded,
                      title: "Recent ad activity",
                      ontap: () {},
                    ),
                    Costom_Settingfut(
                      bal: Icons.card_membership,
                      title: "Orders and payments",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.link,
                      title: "Link history",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.dark_mode,
                      title: "Dark mode ",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.language,
                      title: "language",
                      ontap: () {},
                    ),
                    const SizedBox(height: 10),
                    Costom_Settingfut(
                      bal: Icons.phone,
                      title: "Mobile data useage",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.collections_bookmark_outlined, size: 30),
                  const SizedBox(width: 10),
                  const Text(
                    "Professinal access",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isprofassonal = !isprofassonal;
                      });
                    },
                    icon: Icon(
                      isprofassonal
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Visibility(
                visible: isprofassonal,
                child: Row(
                  children: [
                    Costom_profasonal(
                      backgroundImage: "images/download.png",
                      icon: Icons.campaign,
                      subtitle: "Get tools to help you grow on Facebook.",
                      title: "Public presence",
                    ),
                    SizedBox(width: 10),
                    Costom_profasonal(
                      backgroundImage: "images/download.png",
                      icon: Icons.verified,
                      subtitle: "Build trust with a verified badge.",
                      title: "Meta Verified",
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.widgets,size: 30,),
                  SizedBox(width: 10,),
                  Text("Also from Meta",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Spacer(),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.arrow_drop_up))
                ],
              ),
              Visibility(child: Column(
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                      children: [
                        Icon(Icons.edit,size: 30,),
                        SizedBox(width: 10,),
                        Text("Edits",style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold
                        ),)
                      ],
                     ),
                   ),

                  )
                ],
              )),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 45),
                  backgroundColor: Colors.white24,
                ),
                onPressed: () {},
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

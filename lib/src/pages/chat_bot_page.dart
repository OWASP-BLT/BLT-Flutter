import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Size size = MediaQuery.of(context).size;

    List<String> sentMessages = ["Hey There !!"];
    List<String> receivedMessages = ["Hii, I hope you are having a good day!!"];

    return Scaffold(
      backgroundColor: isDarkMode
          ? Color.fromRGBO(34, 22, 23, 1)
          : Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFDC4654),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: SizedBox(
          width: size.width * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(width: 10),
              Text(
                "BLT Bot",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.795,
            child: (sentMessages.isEmpty && receivedMessages.isEmpty)
                ? Center(
                    child: Text(
                      'Have a query ? Ask it to BLT Bot !',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 2,
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      if (index == 1) {
                        return Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 233, 126, 137),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                sentMessages[index - 1],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            constraints: BoxConstraints(
                              minWidth: size.width * 0.1,
                              maxWidth: size.width * 0.6,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(126, 33, 58, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                receivedMessages[index],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
          ),
          Container(
            height: size.height * 0.08,
            width: size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 246, 246),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFFDC4654),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Color.fromARGB(255, 213, 212, 212),
                    blurRadius: 10,
                    spreadRadius: 1.2,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.6,
                    child: TextField(
                      enableSuggestions: true,
                      keyboardType: TextInputType.text,
                      maxLines: null,
                      // controller: messageController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        border: InputBorder.none,
                        iconColor: Colors.grey,
                        hintText: 'Type a message',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // print(messageController.text);
                      // setState(() {});
                      // _sendMessage();
                      // completeWithSSE();
                      // getChat(messageController.text);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFDC4654),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: const Icon(
                            Icons.send_outlined,
                            color: Color.fromARGB(255, 229, 229, 229),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

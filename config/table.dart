import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oydadb/src/oyda_interface.dart';

void main() async {
  // Create a new table in the OydaBase
  // Replace test_table with the name of the table you want to create in your oydabase
  await dotenv.load(fileName: ".env");
  await OydaInterface()
      .createTable('announcements', {'title': 'VARCHAR(255)', 'content': 'TEXT', 'postedDate': 'DATE'});

  await OydaInterface().insertRow('announcements', {
    'title': 'First Announcement in the oyda announcement app',
    'content': 'This first announcment was made using the announcment app created using the oyda framework',
    'postedDate': '2024-07-28'
  });
  await OydaInterface().insertRow('announcements', {
    'title': 'Second Announcement in the oyda announcement app',
    'content': 'This second announcment was made using the announcment app created using the oyda framework',
    'postedDate': '2024-07-28'
  });
  await OydaInterface().insertRow('announcements', {
    'title': 'Third Announcement in the oyda announcement app',
    'content': 'This third announcment was made using the announcment app created using the oyda framework',
    'postedDate': '2024-07-28'
  });
  await OydaInterface().insertRow('announcements', {
    'title': 'Fourth Announcement in the oyda announcement app',
    'content': 'This fourth announcment was made using the announcment app created using the oyda framework',
    'postedDate': '2024-07-28'
  });
  await OydaInterface().insertRow('announcements', {
    'title': "I CAN''T BELIEVE IT''S WORKING BROOO!!!",
    'content': "I LITERALLY CAN''T BELIEVE IT''S WORKING BROOO!! I''M SO HAPPY RIGHT NOW!!!",
    'postedDate': '2024-07-28'
  });
  await OydaInterface().insertRow('announcements', {
    'title': "BUT THEN AGAIN, WHY WOULD THEY DOUBT US?",
    'content': "WHY WOULD THEY DOUBT US? WE''RE THE BEST MUSIC...",
    'postedDate': '2024-07-28'
  });

  // Drop an existing table from the OydaBase
  // Replace test_table with the name of the table you want to drop
  // await dotenv.load(fileName: ".env");
  // await OydaInterface().dropTable('test_table');
}

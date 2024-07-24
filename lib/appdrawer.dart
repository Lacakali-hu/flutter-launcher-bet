import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
   
   List<Application> applications = [];
  void getApplications() async {
    final apps = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: false,
      onlyAppsWithLaunchIntent: true,
    );
    setState(() {
      applications = apps;
    });
  }
    
  @override
void initState() {
  super.initState();
  getApplications();
}

@override
  Widget build(BuildContext context) {
    return Scaffold(body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),itemCount: applications.length, itemBuilder: (context, index){
      final application = applications[index] as ApplicationWithIcon;
      return ListTile(title: Text( application.appName),
      leading: Image.memory(application.icon),
      onTap: (){
        DeviceApps.openApp(application.packageName);
      },
      );
    }),);
  }

}
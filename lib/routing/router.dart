import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  var clientsPageRoute2 = overviewPageRoute;
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case dublinBikesPageRoute:
      return _getPageRoute(DriversPage());
    case dublinBusesPageRoute:
      return _getPageRoute(DriversPage());
    case eventsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}
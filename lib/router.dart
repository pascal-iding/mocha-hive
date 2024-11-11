
import 'package:flutter/material.dart';


class Router {
  // Defines the routes of the application.
  static final routes = {
    // 'Home/': ({dynamic args}) => MainPage(postGameResponse: args['postGameResponse'], resultXp: args['resultXp']),
  };

  // Navigate to a page with optional arguments.
  // Keeps the current page in the stack.
  // Example usage:
  // import '{...}/router.dart' as mocha;
  // mocha.Router.navigateToPage(context, 'Home/', args: {'arg1': 'value1'});
  // The args will be passed to the Constructor of the receiving Page/Widget.
  static void navigateToPage(
    BuildContext context, String route, {dynamic args}
  ) {
    final routeBuilder = routes[route];

    if (routeBuilder == null) {
      throw 'Route $route does not exist';
    }

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => routeBuilder(args: args)),
    );
  }

  // Navigate to a page and remove the previous Widget from the stack, with optional arguments
  static void navigateToPageAndRemoveFromStack(
    BuildContext context, String route, {dynamic args}
  ) {
    final routeBuilder = routes[route];

    if (routeBuilder == null) {
      throw 'Route $route does not exist';
    }

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => routeBuilder(args: args)),
    );
  }

  // Navigate to a page and remove all previous Widgets from the stack, with optional arguments
  static void navigateToPageAndRemoveAllFromStack(
    BuildContext context, String route, {dynamic args}
  ) {
    final routeBuilder = routes[route];

    if (routeBuilder == null) {
      throw 'Route $route does not exist';
    }

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => routeBuilder(args: args)),
      (Route<dynamic> route) => false,
    );
  }
}

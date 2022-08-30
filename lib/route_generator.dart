import 'package:flutter/material.dart';
import 'package:flutter_giga_app/pages/about_page.dart';
import 'package:flutter_giga_app/pages/contacts_page.dart';
import 'pages/home_page.dart';
import 'pages/error_page.dart';
import 'pages/projects_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        {
          return createRoute(page: const HomePage());
        }
      case AboutPage.routeName:
        {
          return createRoute(page: const AboutPage());
        }
      case ContactsPage.routeName:
        {
          return createRoute(page: const ContactsPage());
        }
      case ProjectsPage.routeName:
        {
          return createRoute(page: const ProjectsPage());
        }

      default:
        {
          return createRoute(page: const ErrorPage());
        }
    }
  }
}

MaterialPageRoute createRoute({settings, required Widget page}) {
  return MaterialPageRoute(
      builder: (context) {
        return page;
      },
      settings: settings);
}

class HeroDialogRoute<T> extends PageRoute<T> {
  HeroDialogRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = true,
  })  : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black87;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }

  @override
  String get barrierLabel => 'Popup dialog open';
}

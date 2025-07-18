import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping/views/page5/page_5_desktop.dart';
import 'package:shopping/views/page_1/page_1_desktop.dart';
import 'package:shopping/views/page_1/page_mobile.dart';
import 'package:shopping/views/page_2/page_2_desktop.dart';
import 'package:shopping/views/page_2/page_2_mobile.dart';
import 'package:shopping/views/page_3/page-3-mobile.dart';
import 'package:shopping/views/page_3/page_3_desktop.dart';
import 'package:shopping/views/page_4/page-4-desktop.dart';
import 'package:shopping/views/page_4/page-4-mobile.dart';
import 'package:shopping/views/page_5/page-5-mobile.dart';
import 'package:shopping/views/page_5/page_5_desktop.dart';
import 'package:shopping/views/page_6/page-6-mobile.dart';
import 'package:shopping/views/page_6/page_6_desktop.dart';
import 'package:shopping/views/page_7/page-7-desktop.dart';
import 'package:shopping/views/page_7/page-7-mobile.dart';
final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Page1Desktop(),
    ),
    GoRoute(
      path: '/pg2',
      builder: (context, state) =>const Page2Desktop(),
    ),
    GoRoute(
      path: '/pg3',
      builder: (context, state) =>const Page3Desktop(),
    ),
    GoRoute(
      path: '/pg4',
      builder: (context, state) =>const Page4Desktop(),
    ),
    GoRoute(
      path: '/pg5',
      builder: (context, state) =>const Page5Desktop(),
    ),
    GoRoute(
      path: '/pg6',
      builder: (context, state) =>const Page6Desktop(),
    ),
    GoRoute(
      path: '/pg7',
      builder: (context, state) => Page7Desktop(),
    ),
    GoRoute(
      path: '/pgm1',
      builder: (context, state) => Page1Mobile(),
    ),
    GoRoute(
      path: '/pgm2',
      builder: (context, state) => Page2Mobile(),
    ),
    GoRoute(
      path: '/pgm3',
      builder: (context, state) => Page3Mobile(),
    ),
    GoRoute(
      path: '/pgm4',
      builder: (context, state) => Page4Mobile(),
    ),
    GoRoute(
      path: '/pgm5',
      builder: (context, state) => Page5Mobile(),
    ),
    GoRoute(
      path: '/pgm6',
      builder: (context, state) => Page6Mobile(),
    ),
    GoRoute(
      path: '/pgm7',
      builder: (context, state) => Page7Mobile(),
    ),
  ],
);
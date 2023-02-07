import 'package:flutter/material.dart';
import 'package:web_app/domain/entities/recent_works.dart';

List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    appTitle: "Run this Place App",
    client: "Union investement Real Estate",
    image: "assets/images/rtp.gif",
    edgeinsets: const EdgeInsets.all(8.0),
  ),
  RecentWork(
    id: 2,
    appTitle: "Nblix App",
    client: "progresso group GmbH",
    image: "assets/images/nblix.gif",
    edgeinsets: const EdgeInsets.all(8.0),
  ),
  RecentWork(
    id: 3,
    appTitle: "Smartscan App",
    client: "Hegla New Technology GmbH",
    image: "assets/images/hegla.gif",
    edgeinsets: const EdgeInsets.all(8.0),
  ),
  RecentWork(
    id: 4,
    appTitle: "More will come soon...",
    client: "Own projects",
    image: "assets/images/working_hard.gif",
    edgeinsets:
        const EdgeInsets.only(left: 34.0, top: 12.0, bottom: 12.0, right: 8.0),
  ),
];

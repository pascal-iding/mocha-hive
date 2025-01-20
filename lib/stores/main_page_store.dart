import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

// This store handles the state of the main page.
// The main page includes the FriendsPage, CalendarPage and HangoutsPage and 
// The bottom navigation bar and sidebar.
class MainPageStore extends VxStore {
  // This function is called when the floating action button is clicked.
  // If it is null, the floating action button is not displayed.
  Function? onFloatingActionButtonClicked;
  Function? onSearchBarChanged;
}
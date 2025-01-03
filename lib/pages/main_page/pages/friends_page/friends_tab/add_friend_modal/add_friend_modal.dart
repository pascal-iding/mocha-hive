import 'package:flutter/material.dart';
import 'package:mocha_hive/components/form_elements/text_input.dart';

class AddFriendModal extends StatefulWidget {
  const AddFriendModal({super.key});

  @override
  State<AddFriendModal> createState() => _AddFriendModalState();
}

class _AddFriendModalState extends State<AddFriendModal> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      content: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              _getHeader(),
              const SizedBox(height: 8.0),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _tabController.animateTo(index);
                  },
                  children: [
                    Text('Search'),
                    Text('Received'),
                    Text('Sent'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hinzufügen',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 0.0),
              TabBar(
                controller: _tabController,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                dividerColor: Theme.of(context).colorScheme.onSurfaceVariant,
                onTap: (index) {
                  _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                },
                tabs: ['Suche', 'Erhalten', 'Gesendet'].map((title) => _getTabTitle(title)).toList(),
              ),
              const SizedBox(height: 16.0),
              TextInput(
                hint: 'Suche ...',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTabTitle(String title) {
    return Tab(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTabContent(String title) {
    return Center(
      child: Text(
        'Content for $title',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
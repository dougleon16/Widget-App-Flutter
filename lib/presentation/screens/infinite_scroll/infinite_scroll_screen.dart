import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [10, 11, 12, 13, 14];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  void addFiveImages() {
    final lasId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lasId + e));
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      final actualScroll = scrollController.position.pixels;
      final maxScroll = scrollController.position.maxScrollExtent;

      if (actualScroll + 500 >= maxScroll) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    addFiveImages();
    isLoading = false;
    //revisar si esta montado el widget
    if (!mounted) return;
    setState(() {});
    // mover scroll
    moveScrollBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    isLoading = false;
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();

    setState(() {});
  }

  void moveScrollBottom() {
    final actualScroll = scrollController.position.pixels;
    final maxScroll = scrollController.position.maxScrollExtent;

    if (actualScroll + 100 <= maxScroll) return;

    scrollController.animateTo(actualScroll + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: color.tertiary,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 25,
          child: _ListView(
              scrollController: scrollController, imagesIds: imagesIds),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          //if loading disable onpressed

          onPressed: () {
            if (isLoading) return;
            context.pop();
          },
          child: !isLoading
              ? const Icon(Icons.arrow_back_ios_new_rounded)
              : const CircularProgressIndicator()),
    );
  }
}

class _ListView extends StatelessWidget {
  const _ListView({
    required this.scrollController,
    required this.imagesIds,
  });

  final ScrollController scrollController;
  final List<int> imagesIds;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: imagesIds.length,
      itemBuilder: (context, index) {
        return FadeInImage(
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
          placeholder: const AssetImage('assets/images/jar-loading.gif'),
          image: NetworkImage(
              'https://picsum.photos/id/${imagesIds[index]}/500/300'),
        );
      },
    );
  }
}

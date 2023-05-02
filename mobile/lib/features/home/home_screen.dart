import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leancode_hooks/leancode_hooks.dart';
import 'package:weatherapp/extensions/extensions.dart';
import 'package:weatherapp/features/home/bloc/home_bloc.dart';
import 'package:weatherapp/features/home/widgets/home_load_successful_body.dart';
import 'package:weatherapp/utils/date_time_provider.dart';
import 'package:weatherapp/widgets/widgets.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  void onSearch(
    BuildContext context, {
    required TextEditingController controller,
    required FocusNode focusNode,
    required ValueNotifier<bool> hasError,
  }) {
    if (controller.text.trim().isEmpty) {
      hasError.value = true;
      return;
    } else {
      hasError.value = false;
    }

    context.read<HomeBloc>().add(
          HomeEvent.search(query: controller.text),
        );
    controller.clear();
    focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final searchFocusNode = useFocusNode();
    final searchHasError = useState(false);

    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        weatherRepository: RepositoryProvider.of(context),
        dateTimeProvider: DateTimeProvider(),
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 72,
              backgroundColor: context.colors.white,
              titleSpacing: 8,
              title: AppTextField(
                controller: searchController,
                focusNode: searchFocusNode,
                textInputAction: TextInputAction.go,
                hasError: searchHasError.value,
                onSubmitted: (_) => onSearch(
                  context,
                  controller: searchController,
                  focusNode: searchFocusNode,
                  hasError: searchHasError,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => onSearch(
                    context,
                    controller: searchController,
                    focusNode: searchFocusNode,
                    hasError: searchHasError,
                  ),
                  icon: Icon(
                    Icons.search,
                    color: context.colors.text,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 6),
              ],
            ),
            backgroundColor: context.colors.background,
            body: GestureDetector(
              onTap: searchFocusNode.unfocus,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Center(
                      child: AppText(
                        context.l10n.home_screen_search_for_location,
                        style: context.textTheme.bodyLarge,
                      ),
                    ),
                    loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadFailure: (loadFailure) => Center(
                      child: AppText(
                        context.l10n
                            .home_screen_could_not_load(loadFailure.query),
                        style: context.textTheme.bodyLarge,
                        color: context.colors.error,
                      ),
                    ),
                    loadSuccessful: HomeLoadSuccessfulBody.new,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

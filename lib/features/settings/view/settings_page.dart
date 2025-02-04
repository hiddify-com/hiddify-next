import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hiddify/core/core_providers.dart';
import 'package:hiddify/features/settings/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.pageTitle),
      ),
      body: ListView(
        children: [
          SettingsSection(t.settings.general.sectionTitle),
          const GeneralSettingTiles(),
          const PlatformSettingsTiles(),
          const SettingsDivider(),
          SettingsSection(t.settings.advanced.sectionTitle),
          const AdvancedSettingTiles(),
          const Gap(16),
        ],
      ),
    );
  }
}

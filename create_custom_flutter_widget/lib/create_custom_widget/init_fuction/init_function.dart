import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import '../fuction/share_build.dart' as share_build;
import '../fuction/send_sms.dart' as send_sms;
import '../fuction/toast_build.dart' as toast_build;
import '../fuction/show_dialog.dart' as show_dialog;

class InitFuction {
  void initFuction() {
    var registry = JsonWidgetRegistry.instance;
    registry.registerFunctions({
      share_build.key: share_build.shareBody,
      send_sms.key: send_sms.launchUrlBody,
      toast_build.key: toast_build.toastBody,
      show_dialog.key: show_dialog.body,
    });
  }
}

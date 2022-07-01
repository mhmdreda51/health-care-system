import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/Firebase/firebase_messaging_helper.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationInitial()) {
    FirebaseMessagingHelper.getToken().then((value) => print(value));
  }

  static NotificationCubit get(context) => BlocProvider.of(context);
}

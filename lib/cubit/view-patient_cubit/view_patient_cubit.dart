import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/repo/patient-view-repo.dart';

part 'view_patient_state.dart';

class ViewPatientCubit extends Cubit<View_Patient_State> {
  ViewPatientCubit() : super(View_Patient_State.initial());

  var rr3;


  Future getPatientIn() async {
    emit(state.copyWith(view_patient_status: View_Patient_Status.loading));
    try {
      rr3 = await Patient_View_Repo.ViewPatientIn();
      emit(state.copyWith(view_patient_status: View_Patient_Status.success));
    } catch (e) {
      emit(state.copyWith(view_patient_status: View_Patient_Status.failure));
    }
  }

}

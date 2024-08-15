/*

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:waseem/cubit/summaryCharge/summary_charge_state.dart';

import '../../data/repo/death_file_repo.dart';
import '../../data/repo/summary_charge_repo.dart';



class summaryChargeCubit extends Cubit<summaryChargeState> {
  summaryChargeCubit() : super(summaryChargeState.initial());

  Future createsummaryCharge( ) async {
    emit(state.copyWith(status: summaryChargeStatus.loading)) ;
    try {
      print("eeeeeeeeeeeeeeeeeeee") ;
      await SummaryChargeRepo.createsummaryCharge() ;
      emit(state.copyWith(status: summaryChargeStatus.success)) ;
    } catch (e) {
      emit(state.copyWith(status: summaryChargeStatus.error)) ;
    }
  }
}
*/
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:waseem/cubit/summaryCharge/summary_charge_state.dart';

import '../../data/repo/death_file_repo.dart';
import '../../data/repo/summary_charge_repo.dart';



class summaryChargeCubit extends Cubit<summaryChargeState> {
  summaryChargeCubit() : super(summaryChargeState.initial());

  Future createsummaryCharge(

      String specialistDoctor,
  String inChargeDoctor,
  String finall,
      String entryReason,
      String summaryStory,
    String finalSituation,
  String guidelines,

      ) async {
    emit(state.copyWith(status: summaryChargeStatus.loading));
    try {
      print("eeeeeeeeeeeeeeeeeeee");
      await SummaryChargeRepo.createsummaryCharge(

   specialistDoctor,
   inChargeDoctor, // Add this line
   finall,
   entryReason,
          summaryStory,
   finalSituation,
   guidelines
      );
      emit(state.copyWith(status: summaryChargeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: summaryChargeStatus.error));
    }
  }
}


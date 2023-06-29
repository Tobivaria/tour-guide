import 'package:tour_guide/src/file_handler/file_service.dart';

enum TourType { onboarding, helpMode }

class TourService {
  final FileService _fileService;

  TourService(FileService fileService) : _fileService = fileService;

  createTour() {}

  loadTour() {
    // _fileService.loadFile();

    // TODO figure out which tour we are currently dealing with
  }

  saveTour() {}
}

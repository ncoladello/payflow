import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvaible;
  final String error;
  final String barcode;

  CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCameraAvaible = false,
    this.error = "",
    this.barcode = "",
    this.cameraController,
  });

  factory BarcodeScannerStatus.avaiable(CameraController controller) =>
      BarcodeScannerStatus(
        isCameraAvaible: true,
        cameraController: controller,
      );
  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);

  bool get showCamera => isCameraAvaible && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}

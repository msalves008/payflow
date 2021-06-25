import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool iscameraAvailable;
  final String error;
  final String barcode;
  CameraController? cameraController;

  BarcodeScannerStatus(
      {this.iscameraAvailable = false,
      this.cameraController,
      this.error = '',
      this.barcode = ''});
  bool get showCamera => iscameraAvailable && error.isEmpty;
  bool get hasError => error.isNotEmpty;
  bool get hasBarcode => barcode.isNotEmpty;

  factory BarcodeScannerStatus.available(CameraController controller) =>
      BarcodeScannerStatus(
        iscameraAvailable: true,
        cameraController: controller,
      );

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);
}

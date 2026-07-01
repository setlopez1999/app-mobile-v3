abstract class WifiRepository {
  Future<void> cambiarNombre(String nuevoNombre);
  Future<void> cambiarPassword(String nuevaPassword);
  Future<String?> getSsid();
}

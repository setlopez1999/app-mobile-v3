# tvapp

## Requisitos

- [FVM](https://fvm.app/) — Flutter Version Manager
- Flutter `3.35.7` (gestionado por FVM)
- Android SDK (para compilar APK)

## Setup inicial (primera vez)

```bash
# 1. Instalar la versión correcta de Flutter
fvm install

# 2. Instalar dependencias
fvm flutter pub get

# 3. Generar código (freezed / riverpod / json_serializable)
fvm dart run build_runner build --delete-conflicting-outputs
```

> Los archivos `*.freezed.dart` y `*.g.dart` son auto-generados y no están en git.
> Debes generarlos localmente antes de correr la app.

## Correr la app

```bash
fvm flutter run
```

## Compilar APK

```bash
# Debug
fvm flutter build apk --debug

# Release
fvm flutter build apk --release
```

## Regenerar código tras cambios en modelos

Cada vez que modifiques una clase `@freezed`, un provider `@riverpod`, o un DTO `@JsonSerializable`, vuelve a correr:

```bash
fvm dart run build_runner build --delete-conflicting-outputs
```

O en modo watch durante desarrollo:

```bash
fvm dart run build_runner watch --delete-conflicting-outputs
```

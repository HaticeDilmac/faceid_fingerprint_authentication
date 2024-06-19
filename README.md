# Fingerprint/FaceID Authentication

This Flutter project demonstrates how to use fingerprint and FaceID authentication using the `local_auth` package.

## Features

- Check if the device supports biometric authentication
- Get available biometric types on the device
- Perform biometric authentication

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- A device that supports biometric authentication (Fingerprint/FaceID)

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

## Usage

The application will display if the device supports biometric authentication. You can then use the provided buttons to get available biometric types and authenticate using biometrics.

## Code Explanation

The main parts of the code include:

- Checking device support for biometrics
- Getting available biometric types
- Performing biometric authentication

Here is a summary of the key methods used:

- `auth.isDeviceSupported()`: Checks if the device supports biometric authentication.
- `auth.getAvailableBiometrics()`: Retrieves the list of available biometric types.
- `auth.authenticate()`: Prompts the user to authenticate using biometrics.

## Screenshot 
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/9fffec75-78a3-4111-9bbf-d3436d0cc421" width="200" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/1855c591-c7f6-4deb-97d5-0740599780b1" width="600" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/fb8822c4-27e7-4870-ab48-a315c42e73b5" width="200" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/aeebf987-75d3-4dca-a01e-958492de4549" width="600" height="400">  


-------------------------------------------------------------------------

# Parmak İzi/Yüz ID Kimlik Doğrulama

Bu Flutter projesi, `local_auth` paketini kullanarak parmak izi ve Yüz ID kimlik doğrulamasının nasıl kullanılacağını göstermektedir.

## Özellikler

- Cihazın biyometrik kimlik doğrulamayı destekleyip desteklemediğini kontrol edin
- Cihazdaki kullanılabilir biyometrik türleri alın
- Biyometrik kimlik doğrulama gerçekleştirin

## Başlarken

### Gereksinimler

- Flutter SDK
- Dart SDK
- Biyometrik kimlik doğrulamayı destekleyen bir cihaz (Parmak İzi/Yüz ID)

### Kurulum

1. Depoyu klonlayın:
    ```sh
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. Bağımlılıkları yükleyin:
    ```sh
    flutter pub get
    ```

3. Uygulamayı çalıştırın:
    ```sh
    flutter run
    ```

## Kullanım

Uygulama, cihazın biyometrik kimlik doğrulamayı destekleyip desteklemediğini gösterecektir. Sağlanan düğmeleri kullanarak kullanılabilir biyometrik türleri alabilir ve biyometrik kimlik doğrulaması yapabilirsiniz.

## Kod Açıklaması

Kodun ana bölümleri şunlardır:

- Cihazın biyometrik kimlik doğrulamayı destekleyip desteklemediğini kontrol etme
- Kullanılabilir biyometrik türleri alma
- Biyometrik kimlik doğrulama gerçekleştirme

İşte kullanılan anahtar yöntemlerin özeti:

- `auth.isDeviceSupported()`: Cihazın biyometrik kimlik doğrulamayı destekleyip desteklemediğini kontrol eder.
- `auth.getAvailableBiometrics()`: Kullanılabilir biyometrik türlerin listesini alır.
- `auth.authenticate()`: Kullanıcıyı biyometrik kimlik doğrulaması yapmaya yönlendirir.

## Ekran Görüntüleri
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/9fffec75-78a3-4111-9bbf-d3436d0cc421" width="200" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/1855c591-c7f6-4deb-97d5-0740599780b1" width="600" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/fb8822c4-27e7-4870-ab48-a315c42e73b5" width="200" height="400">  
<img src="https://github.com/HaticeDilmac/faceid_fingerprint_authentication/assets/100489350/aeebf987-75d3-4dca-a01e-958492de4549" width="600" height="400">  


import '../extensions/string_hardcoded.dart';

sealed class AppException implements Exception {
  AppException(this.code, this.message);
  final String code;
  final String message;

  @override
  String toString() => message;
}

/// Auth
class EmailAlreadyInUseException extends AppException {
  EmailAlreadyInUseException()
      : super('email-already-in-use', 'Email already in use'.hardcoded);
}

class WeakPasswordException extends AppException {
  WeakPasswordException()
      : super('weak-password', 'Password is too weak'.hardcoded);
}

class WrongPasswordException extends AppException {
  WrongPasswordException()
      : super('wrong-password', 'Wrong password'.hardcoded);
}

class UserNotFoundException extends AppException {
  UserNotFoundException() : super('user-not-found', 'User not found'.hardcoded);
}

/// Cart
class CartSyncFailedException extends AppException {
  CartSyncFailedException()
      : super('cart-sync-failed',
            'An error has occurred while updating the shopping cart'.hardcoded);
}

/// Checkout
class PaymentFailureEmptyCartException extends AppException {
  PaymentFailureEmptyCartException()
      : super('payment-failure-empty-cart',
            'Can\'t place an order if the cart is empty'.hardcoded);
}

/// Orders
class ParseOrderFailureException extends AppException {
  ParseOrderFailureException(this.status)
      : super('parse-order-failure',
            'Could not parse order status: $status'.hardcoded);

  final String status;
}

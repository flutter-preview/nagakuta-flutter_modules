import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'status.freezed.dart';

@freezed
// ignore: public_member_api_docs
class HttpStatus with _$HttpStatus {
  // ignore: public_member_api_docs
  const factory HttpStatus.continues() = HttpStatusContinue;

  // ignore: public_member_api_docs
  const factory HttpStatus.switchingProtocols() = HttpStatusSwitchingProtocols;

  // ignore: public_member_api_docs
  const factory HttpStatus.processing() = HttpStatusProcessing;

  // ignore: public_member_api_docs
  const factory HttpStatus.ok() = HttpStatusOk;

  // ignore: public_member_api_docs
  const factory HttpStatus.created() = HttpStatusCreated;

  // ignore: public_member_api_docs
  const factory HttpStatus.accepted() = HttpStatusAccepted;

  // ignore: public_member_api_docs
  const factory HttpStatus.nonAuthoritativeInformation() = HttpStatusNonAuthoritativeInformation;

  // ignore: public_member_api_docs
  const factory HttpStatus.noContent() = HttpStatusNoContent;

  // ignore: public_member_api_docs
  const factory HttpStatus.resetContent() = HttpStatusResetContent;

  // ignore: public_member_api_docs
  const factory HttpStatus.partialContent() = HttpStatusPartialContent;

  // ignore: public_member_api_docs
  const factory HttpStatus.multiStatus() = HttpStatusMultiStatus;

  // ignore: public_member_api_docs
  const factory HttpStatus.alreadyReported() = HttpStatusAlreadyReported;

  // ignore: public_member_api_docs
  const factory HttpStatus.imUsed() = HttpStatusImUsed;

  // ignore: public_member_api_docs
  const factory HttpStatus.multipleChoices() = HttpStatusMultipleChoices;

  // ignore: public_member_api_docs
  const factory HttpStatus.movedPermanently() = HttpStatusMovedPermanently;

  // ignore: public_member_api_docs
  const factory HttpStatus.found() = HttpStatusFound;

  // ignore: public_member_api_docs
  const factory HttpStatus.seeOther() = HttpStatusSeeOther;

  // ignore: public_member_api_docs
  const factory HttpStatus.notModified() = HttpStatusNotModified;

  // ignore: public_member_api_docs
  const factory HttpStatus.useProxy() = HttpStatusUseProxy;

  // ignore: public_member_api_docs
  const factory HttpStatus.temporaryRedirect() = HttpStatusTemporaryRedirect;

  // ignore: public_member_api_docs
  const factory HttpStatus.permanentRedirect() = HttpStatusPermanentRedirect;

  // ignore: public_member_api_docs
  const factory HttpStatus.badRequest() = HttpStatusBadRequest;

  // ignore: public_member_api_docs
  const factory HttpStatus.unauthorized() = HttpStatusUnauthorized;

  // ignore: public_member_api_docs
  const factory HttpStatus.paymentRequired() = HttpStatusPaymentRequeired;

  // ignore: public_member_api_docs
  const factory HttpStatus.forbidden() = HttpStatusForbidden;

  // ignore: public_member_api_docs
  const factory HttpStatus.notFound() = HttpStatusNotFound;

  // ignore: public_member_api_docs
  const factory HttpStatus.methodNotAllowed() = HttpStatusMethodNotAllowed;

  // ignore: public_member_api_docs
  const factory HttpStatus.notAcceptable() = HttpStatusNotAcceptable;

  // ignore: public_member_api_docs
  const factory HttpStatus.proxyAuthenticationRequired() = HttpStatusProxyAuthenticationRequired;

  // ignore: public_member_api_docs
  const factory HttpStatus.requestTimeout() = HttpStatusRequestTimeout;

  // ignore: public_member_api_docs
  const factory HttpStatus.conflict() = HttpStatusConflict;

  // ignore: public_member_api_docs
  const factory HttpStatus.gone() = HttpStatusGone;

  // ignore: public_member_api_docs
  const factory HttpStatus.lengthRequired() = HttpStatusLengthRequired;

  // ignore: public_member_api_docs
  const factory HttpStatus.preconditionFailed() = HttpStatusPreconditionFailed;

  // ignore: public_member_api_docs
  const factory HttpStatus.requestEntityTooLarge() = HttpStatusRequestEntityTooLarge;

  // ignore: public_member_api_docs
  const factory HttpStatus.requestUriTooLong() = HttpStatusRequestUriTooLong;

  // ignore: public_member_api_docs
  const factory HttpStatus.unsupportedMediaType() = HttpStatusUnsupportedMediaType;

  // ignore: public_member_api_docs
  const factory HttpStatus.requestedRangeNotSatisfiable() = HttpStatusRequestedRangeNotSatisfiable;

  // ignore: public_member_api_docs
  const factory HttpStatus.expectationFailed() = HttpStatusExpectationFailed;

  // ignore: public_member_api_docs
  const factory HttpStatus.misdirectedRequest() = HttpStatusMisdirectedRequest;

  // ignore: public_member_api_docs
  const factory HttpStatus.unprocessableEntity() = HttpStatusUnprocessableEntity;

  // ignore: public_member_api_docs
  const factory HttpStatus.locked() = HttpStatusLocked;

  // ignore: public_member_api_docs
  const factory HttpStatus.failedDependency() = HttpStatusFailedDependency;

  // ignore: public_member_api_docs
  const factory HttpStatus.upgradeRequired() = HttpStatusUpgradeRequired;

  // ignore: public_member_api_docs
  const factory HttpStatus.preconditionRequired() = HttpStatusPreconditionRequired;

  // ignore: public_member_api_docs
  const factory HttpStatus.tooManyRequests() = HttpStatusTooManyRequests;

  // ignore: public_member_api_docs
  const factory HttpStatus.requestHeaderFieldsTooLarge() = HttpStatusRequestHeaderFieldsTooLarge;

  // ignore: public_member_api_docs
  const factory HttpStatus.connectionClosedWithoutResponse() = HttpStatusConnectionClosedWithoutResponse;

  // ignore: public_member_api_docs
  const factory HttpStatus.unavailableForLegalReasons() = HttpStatusUnavailableForLegalReasons;

  // ignore: public_member_api_docs
  const factory HttpStatus.clientClosedRequest() = HttpStatusClientClosedRequest;

  // ignore: public_member_api_docs
  const factory HttpStatus.internalServerError() = HttpStatusInternalServerError;

  // ignore: public_member_api_docs
  const factory HttpStatus.notImplemented() = HttpStatusNotImplemented;

  // ignore: public_member_api_docs
  const factory HttpStatus.badGateway() = HttpStatusBadGateway;

  // ignore: public_member_api_docs
  const factory HttpStatus.serviceUnavailable() = HttpStatusServiceUnavailable;

  // ignore: public_member_api_docs
  const factory HttpStatus.gatewayTimeout() = HttpStatusGatewayTimeout;

  // ignore: public_member_api_docs
  const factory HttpStatus.httpVersionNotSupported() = HttpStatusHttpVersionNotSupported;

  // ignore: public_member_api_docs
  const factory HttpStatus.variantAlsoNegotiates() = HttpStatusVariantAlsoNegotiates;

  // ignore: public_member_api_docs
  const factory HttpStatus.insufficientStorage() = HttpStatusInsufficientStorage;

  // ignore: public_member_api_docs
  const factory HttpStatus.loopDetected() = HttpStatusLoopDetected;

  // ignore: public_member_api_docs
  const factory HttpStatus.notExtended() = HttpStatusNotExtended;

  // ignore: public_member_api_docs
  const factory HttpStatus.networkAuthenticationRequired() = HttpStatusNetworkAuthenticationRequired;

  // ignore: public_member_api_docs
  const factory HttpStatus.networkConnectTimeoutError() = HttpStatusNetworkConnectTimeoutError;

  const HttpStatus._();

  // ignore: public_member_api_docs
  factory HttpStatus.fromCode(final int code) {
    switch (code) {
      case 100:
        return const HttpStatus.continues();
      case 101:
        return const HttpStatus.switchingProtocols();
      case 102:
        return const HttpStatus.processing();
      case 200:
        return const HttpStatus.ok();
      case 201:
        return const HttpStatus.created();
      case 202:
        return const HttpStatus.accepted();
      case 203:
        return const HttpStatus.nonAuthoritativeInformation();
      case 204:
        return const HttpStatus.noContent();
      case 205:
        return const HttpStatus.resetContent();
      case 206:
        return const HttpStatus.partialContent();
      case 207:
        return const HttpStatus.multiStatus();
      case 208:
        return const HttpStatus.alreadyReported();
      case 226:
        return const HttpStatus.imUsed();
      case 300:
        return const HttpStatus.multipleChoices();
      case 301:
        return const HttpStatus.movedPermanently();
      case 302:
        return const HttpStatus.found();
      case 303:
        return const HttpStatus.seeOther();
      case 304:
        return const HttpStatus.notModified();
      case 305:
        return const HttpStatus.useProxy();
      case 307:
        return const HttpStatus.temporaryRedirect();
      case 308:
        return const HttpStatus.permanentRedirect();
      case 400:
        return const HttpStatus.badRequest();
      case 401:
        return const HttpStatus.unauthorized();
      case 402:
        return const HttpStatus.paymentRequired();
      case 403:
        return const HttpStatus.forbidden();
      case 404:
        return const HttpStatus.notFound();
      case 405:
        return const HttpStatus.methodNotAllowed();
      case 406:
        return const HttpStatus.notAcceptable();
      case 407:
        return const HttpStatus.proxyAuthenticationRequired();
      case 408:
        return const HttpStatus.requestTimeout();
      case 409:
        return const HttpStatus.conflict();
      case 410:
        return const HttpStatus.gone();
      case 411:
        return const HttpStatus.lengthRequired();
      case 412:
        return const HttpStatus.preconditionFailed();
      case 413:
        return const HttpStatus.requestEntityTooLarge();
      case 414:
        return const HttpStatus.requestUriTooLong();
      case 415:
        return const HttpStatus.unsupportedMediaType();
      case 416:
        return const HttpStatus.requestedRangeNotSatisfiable();
      case 417:
        return const HttpStatus.expectationFailed();
      case 421:
        return const HttpStatus.misdirectedRequest();
      case 422:
        return const HttpStatus.unprocessableEntity();
      case 423:
        return const HttpStatus.locked();
      case 424:
        return const HttpStatus.failedDependency();
      case 426:
        return const HttpStatus.upgradeRequired();
      case 428:
        return const HttpStatus.preconditionRequired();
      case 429:
        return const HttpStatus.tooManyRequests();
      case 431:
        return const HttpStatus.requestHeaderFieldsTooLarge();
      case 444:
        return const HttpStatus.connectionClosedWithoutResponse();
      case 451:
        return const HttpStatus.unavailableForLegalReasons();
      case 499:
        return const HttpStatus.clientClosedRequest();
      case 500:
        return const HttpStatus.internalServerError();
      case 501:
        return const HttpStatus.notImplemented();
      case 502:
        return const HttpStatus.badGateway();
      case 503:
        return const HttpStatus.serviceUnavailable();
      case 504:
        return const HttpStatus.gatewayTimeout();
      case 505:
        return const HttpStatus.httpVersionNotSupported();
      case 506:
        return const HttpStatus.variantAlsoNegotiates();
      case 507:
        return const HttpStatus.insufficientStorage();
      case 508:
        return const HttpStatus.loopDetected();
      case 510:
        return const HttpStatus.notExtended();
      case 511:
        return const HttpStatus.networkAuthenticationRequired();
      case 599:
        return const HttpStatus.networkConnectTimeoutError();
      default:
        throw ClientException("Unknown status code");
    }
  }

  @override
  String toString() => when(
        continues: () => "HTTP Status Code: 100 Continue",
        switchingProtocols: () => "HTTP Status Code: 101 Switching Protocols",
        processing: () => "HTTP Status Code: 102 Processing",
        ok: () => "HTTP Status Code: 200 OK",
        created: () => "HTTP Status Code: 201 Created",
        accepted: () => "HTTP Status Code: 202 Accepted",
        nonAuthoritativeInformation: () => "HTTP Status Code: 203 Non Authoritative Information",
        noContent: () => "HTTP Status Code: 204 No Content",
        resetContent: () => "HTTP Status Code: 205 Reset Content",
        partialContent: () => "HTTP Status Code: 206 Partial Content",
        multiStatus: () => "HTTP Status Code: 207 Multi Status",
        alreadyReported: () => "HTTP Status Code: 208 Already Reported",
        imUsed: () => "HTTP Status Code: 226 IM Used",
        multipleChoices: () => "HTTP Status Code: 300 Multiple Choices",
        movedPermanently: () => "HTTP Status Code: 301 Moved Permanently",
        found: () => "HTTP Status Code: 302 Found",
        seeOther: () => "HTTP Status Code: 303 See Other",
        notModified: () => "HTTP Status Code: 304 Not Modified",
        useProxy: () => "HTTP Status Code: 305 Use Proxy",
        temporaryRedirect: () => "HTTP Status Code: 307 Temporary Redirect",
        permanentRedirect: () => "HTTP Status Code: 308 Permanent Redirect",
        badRequest: () => "HTTP Status Code: 400 Bad Request",
        unauthorized: () => "HTTP Status Code: 401 Unauthorized",
        paymentRequired: () => "HTTP Status Code: 402 Payment Required",
        forbidden: () => "HTTP Status Code: 403 Forbidden",
        notFound: () => "HTTP Status Code: 404 Not Found",
        methodNotAllowed: () => "HTTP Status Code: 405 Method Not Allowed",
        notAcceptable: () => "HTTP Status Code: 406 Not Acceptable",
        proxyAuthenticationRequired: () => "HTTP Status Code: 407 Proxy Authentication Required",
        requestTimeout: () => "HTTP Status Code: 408 Request Timeout",
        conflict: () => "HTTP Status Code: 409 Conflict",
        gone: () => "HTTP Status Code: 410 Gone",
        lengthRequired: () => "HTTP Status Code: 411 Length Required",
        preconditionFailed: () => "HTTP Status Code: 412 Precondition Failed",
        requestEntityTooLarge: () => "HTTP Status Code: 413 Request Entity Too Large",
        requestUriTooLong: () => "HTTP Status Code: 414 Request Uri Too Long",
        unsupportedMediaType: () => "HTTP Status Code: 415 Unsupported Media Type",
        requestedRangeNotSatisfiable: () => "HTTP Status Code: 416 Requested Range Not Satisfiable",
        expectationFailed: () => "HTTP Status Code: 417 Expectation Failed",
        misdirectedRequest: () => "HTTP Status Code: 421 Misdirected Request",
        unprocessableEntity: () => "HTTP Status Code: 422 Unprocessable Entity",
        locked: () => "HTTP Status Code: 423 Locked",
        failedDependency: () => "HTTP Status Code: 424 Failed Dependency",
        upgradeRequired: () => "HTTP Status Code: 426 Upgrade Required",
        preconditionRequired: () => "HTTP Status Code: 428 Precondition Required",
        tooManyRequests: () => "HTTP Status Code: 429 Too Many Requests",
        requestHeaderFieldsTooLarge: () => "HTTP Status Code: 431 Request Header Fields Too Large",
        connectionClosedWithoutResponse: () => "HTTP Status Code: 444 Connection Closed Without Response",
        unavailableForLegalReasons: () => "HTTP Status Code: 451 Unavailable For Legal Reasons",
        clientClosedRequest: () => "HTTP Status Code: 499 Client Closed Request",
        internalServerError: () => "HTTP Status Code: 500 Internal Server Error",
        notImplemented: () => "HTTP Status Code: 501 Not Implemented",
        badGateway: () => "HTTP Status Code: 502 Bad Gateway",
        serviceUnavailable: () => "HTTP Status Code: 503 Service Unavailable",
        gatewayTimeout: () => "HTTP Status Code: 504 Gateway Timeout",
        httpVersionNotSupported: () => "HTTP Status Code: 505 Http Version Not Supported",
        variantAlsoNegotiates: () => "HTTP Status Code: 506 Variant Also Negotiates",
        insufficientStorage: () => "HTTP Status Code: 507 Insufficient Storage",
        loopDetected: () => "HTTP Status Code: 508 Loop Detected",
        notExtended: () => "HTTP Status Code: 510 Not Extended",
        networkAuthenticationRequired: () => "HTTP Status Code: 511 Network Authentication Required",
        networkConnectTimeoutError: () => "HTTP Status Code: 599 Network Connect Timeout Error",
      );
}

// ignore: public_member_api_docs
extension HttpStatusExtension on HttpStatus {
  // ignore: public_member_api_docs
  int get code => when(
        continues: () => 100,
        switchingProtocols: () => 101,
        processing: () => 102,
        ok: () => 200,
        created: () => 201,
        accepted: () => 202,
        nonAuthoritativeInformation: () => 203,
        noContent: () => 204,
        resetContent: () => 205,
        partialContent: () => 206,
        multiStatus: () => 207,
        alreadyReported: () => 208,
        imUsed: () => 226,
        multipleChoices: () => 300,
        movedPermanently: () => 301,
        found: () => 302,
        seeOther: () => 303,
        notModified: () => 304,
        useProxy: () => 305,
        temporaryRedirect: () => 307,
        permanentRedirect: () => 308,
        badRequest: () => 400,
        unauthorized: () => 401,
        paymentRequired: () => 402,
        forbidden: () => 403,
        notFound: () => 404,
        methodNotAllowed: () => 405,
        notAcceptable: () => 406,
        proxyAuthenticationRequired: () => 407,
        requestTimeout: () => 408,
        conflict: () => 409,
        gone: () => 410,
        lengthRequired: () => 411,
        preconditionFailed: () => 412,
        requestEntityTooLarge: () => 413,
        requestUriTooLong: () => 414,
        unsupportedMediaType: () => 415,
        requestedRangeNotSatisfiable: () => 416,
        expectationFailed: () => 417,
        misdirectedRequest: () => 421,
        unprocessableEntity: () => 422,
        locked: () => 423,
        failedDependency: () => 424,
        upgradeRequired: () => 426,
        preconditionRequired: () => 428,
        tooManyRequests: () => 429,
        requestHeaderFieldsTooLarge: () => 431,
        connectionClosedWithoutResponse: () => 444,
        unavailableForLegalReasons: () => 451,
        clientClosedRequest: () => 499,
        internalServerError: () => 500,
        notImplemented: () => 501,
        badGateway: () => 502,
        serviceUnavailable: () => 503,
        gatewayTimeout: () => 504,
        httpVersionNotSupported: () => 505,
        variantAlsoNegotiates: () => 506,
        insufficientStorage: () => 507,
        loopDetected: () => 508,
        notExtended: () => 510,
        networkAuthenticationRequired: () => 511,
        networkConnectTimeoutError: () => 599,
      );

  // ignore: public_member_api_docs
  bool get isSucceeded => code >= 200 && code < 300;
}

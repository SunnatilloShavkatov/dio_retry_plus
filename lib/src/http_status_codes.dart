const int status100Continue = 100;
const int status101SwitchingProtocols = 101;
const int status102Processing = 102;

const int status200OK = 200;
const int status201Created = 201;
const int status202Accepted = 202;
const int status203NonAuthoritative = 203;
const int status204NoContent = 204;
const int status205ResetContent = 205;
const int status206PartialContent = 206;
const int status207Multistatus = 207;
const int status208AlreadyReported = 208;
const int status226IMUsed = 226;

const int status300MultipleChoices = 300;
const int status301MovedPermanently = 301;
const int status302Found = 302;
const int status303SeeOther = 303;
const int status304NotModified = 304;
const int status305UseProxy = 305;
const int status306SwitchProxy = 306; // RFC 2616, removed
const int status307TemporaryRedirect = 307;
const int status308PermanentRedirect = 308;

const int status400BadRequest = 400;
const int status401Unauthorized = 401;
const int status402PaymentRequired = 402;
const int status403Forbidden = 403;
const int status404NotFound = 404;
const int status405MethodNotAllowed = 405;
const int status406NotAcceptable = 406;
const int status407ProxyAuthenticationRequired = 407;
const int status408RequestTimeout = 408;
const int status409Conflict = 409;
const int status410Gone = 410;
const int status411LengthRequired = 411;
const int status412PreconditionFailed = 412;
const int status413RequestEntityTooLarge = 413; // RFC 2616, renamed
const int status413PayloadTooLarge = 413; // RFC 7231
const int status414RequestUriTooLong = 414; // RFC 2616, renamed
const int status414UriTooLong = 414; // RFC 7231
const int status415UnsupportedMediaType = 415;
const int status416RequestedRangeNotSatisfiable = 416; // RFC 2616, renamed
const int status416RangeNotSatisfiable = 416; // RFC 7233
const int status417ExpectationFailed = 417;
const int status418ImATeapot = 418;
const int status419AuthenticationTimeout = 419; // Not defined in any RFC
const int status421MisdirectedRequest = 421;
const int status422UnprocessableEntity = 422;
const int status423Locked = 423;
const int status424FailedDependency = 424;
const int status426UpgradeRequired = 426;
const int status428PreconditionRequired = 428;
const int status429TooManyRequests = 429;
const int status431RequestHeaderFieldsTooLarge = 431;
const int status451UnavailableForLegalReasons = 451;

const int status500InternalServerError = 500;
const int status501NotImplemented = 501;
const int status502BadGateway = 502;
const int status503ServiceUnavailable = 503;
const int status504GatewayTimeout = 504;
const int status505HttpVersionNotSupported = 505;
const int status506VariantAlsoNegotiates = 506;
const int status507InsufficientStorage = 507;
const int status508LoopDetected = 508;
const int status510NotExtended = 510;
const int status511NetworkAuthenticationRequired = 511;

// Cloudflare Statuses
const int status520WebServerReturnedUnknownError = 520;
const int status521WebServerIsDown = 521;
const int status522ConnectionTimedOut = 522;
const int status523OriginIsUnreachable = 523;
const int status524TimeoutOccurred = 524;
const int status525SSLHandshakeFailed = 525;
const int status526InvalidSSLCertificate = 526;
const int status527RailgunError = 527;

// Not in RFC:
const int status598NetworkReadTimeoutError = 598;
const int status599NetworkConnectTimeoutError = 599;

/// From IIS
const int status440LoginTimeout = 440;

/// From ngnix
const int status499ClientClosedRequest = 499;

/// From AWS Elastic Load Balancer
const int status460ClientClosedRequest = 460;

const Set<int> retryableStatuses = <int>{
  status401Unauthorized,
  status502BadGateway,
  status599NetworkConnectTimeoutError,
  status522ConnectionTimedOut,
};

bool isRetryable(int statusCode) => retryableStatuses.contains(statusCode);

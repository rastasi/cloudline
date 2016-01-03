CONDITION_TYPES = %w[
  with_snippet
  without_snippet
  with_response_code
  without_response_code
]

SITE_STATUSES = %w[
  virgin
  deactivated
  ready
  failed
]

SITE_PROTOCOLS = %w[
  http
  https
]

SITE_HTTP_METHODS = %w[
  get
  post
  put
  delete
]

SITE_CHECK_INTERVALS_FOR_FREE = %w[
  10
  20
  30
  60
  120
  180
  1220
  1440
  1080
]

SITE_CHECK_INTERVALS_FOR_PREMIUM = %w[
  1
  2
  3
  4
  5
  10
  20
  30
  60
  120
  180
  1220
  1440
  1080
]

USER_ROLES = %w[
  normal
  premium
  admin
]

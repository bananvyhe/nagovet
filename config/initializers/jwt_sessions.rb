JWTSessions.encryption_key = Rails.application.secret_key_base
JWTSessions.token_store = :redis, { redis_url: "redis://127.0.0.1:6379" }
JWTSessions.access_exp_time = 30 
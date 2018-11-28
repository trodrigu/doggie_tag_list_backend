{application,jose,
             [{applications,[kernel,stdlib,elixir,crypto,asn1,public_key,
                             base64url]},
              {description,"JSON Object Signing and Encryption (JOSE) for Erlang and Elixir."},
              {modules,['Elixir.JOSE','Elixir.JOSE.JWA','Elixir.JOSE.JWE',
                        'Elixir.JOSE.JWK','Elixir.JOSE.JWS','Elixir.JOSE.JWT',
                        'Elixir.JOSE.Poison',
                        'Elixir.JOSE.Poison.LexicalEncode',
                        'Elixir.JOSE.Poison.LexicalEncodeError',
                        'Elixir.JOSE.Poison.LexicalEncoder',
                        'Elixir.JOSE.Poison.LexicalEncoder.Any',
                        'Elixir.JOSE.Poison.LexicalEncoder.Atom',
                        'Elixir.JOSE.Poison.LexicalEncoder.BitString',
                        'Elixir.JOSE.Poison.LexicalEncoder.Date',
                        'Elixir.JOSE.Poison.LexicalEncoder.DateTime',
                        'Elixir.JOSE.Poison.LexicalEncoder.Float',
                        'Elixir.JOSE.Poison.LexicalEncoder.HashSet',
                        'Elixir.JOSE.Poison.LexicalEncoder.Integer',
                        'Elixir.JOSE.Poison.LexicalEncoder.List',
                        'Elixir.JOSE.Poison.LexicalEncoder.Map',
                        'Elixir.JOSE.Poison.LexicalEncoder.MapSet',
                        'Elixir.JOSE.Poison.LexicalEncoder.NaiveDateTime',
                        'Elixir.JOSE.Poison.LexicalEncoder.Range',
                        'Elixir.JOSE.Poison.LexicalEncoder.Stream',
                        'Elixir.JOSE.Poison.LexicalEncoder.Time',
                        'Elixir.JOSE.Poison.LexicalPretty',jose,jose_app,
                        jose_block_encryptor,jose_chacha20_poly1305,
                        jose_chacha20_poly1305_crypto,
                        jose_chacha20_poly1305_libsodium,
                        jose_chacha20_poly1305_unsupported,jose_curve25519,
                        jose_curve25519_libdecaf,jose_curve25519_libsodium,
                        jose_curve25519_unsupported,jose_curve448,
                        jose_curve448_libdecaf,jose_curve448_unsupported,
                        jose_json,jose_json_jiffy,jose_json_jsone,
                        jose_json_jsx,jose_json_ojson,jose_json_poison,
                        jose_json_poison_compat_encoder,
                        jose_json_poison_lexical_encoder,
                        jose_json_unsupported,jose_jwa,jose_jwa_aes,
                        jose_jwa_aes_kw,jose_jwa_bench,jose_jwa_chacha20,
                        jose_jwa_chacha20_poly1305,jose_jwa_concat_kdf,
                        jose_jwa_curve25519,jose_jwa_curve448,
                        jose_jwa_ed25519,jose_jwa_ed448,jose_jwa_math,
                        jose_jwa_pkcs1,jose_jwa_pkcs5,jose_jwa_pkcs7,
                        jose_jwa_poly1305,jose_jwa_sha3,jose_jwa_unsupported,
                        jose_jwa_x25519,jose_jwa_x448,jose_jwe,jose_jwe_alg,
                        jose_jwe_alg_aes_kw,jose_jwe_alg_dir,
                        jose_jwe_alg_ecdh_es,jose_jwe_alg_pbes2,
                        jose_jwe_alg_rsa,jose_jwe_enc,jose_jwe_enc_aes,
                        jose_jwe_enc_chacha20_poly1305,jose_jwe_zip,jose_jwk,
                        jose_jwk_kty,jose_jwk_kty_ec,jose_jwk_kty_oct,
                        jose_jwk_kty_okp_ed25519,jose_jwk_kty_okp_ed25519ph,
                        jose_jwk_kty_okp_ed448,jose_jwk_kty_okp_ed448ph,
                        jose_jwk_kty_okp_x25519,jose_jwk_kty_okp_x448,
                        jose_jwk_kty_rsa,jose_jwk_oct,jose_jwk_openssh_key,
                        jose_jwk_pem,jose_jwk_set,jose_jwk_use_enc,
                        jose_jwk_use_sig,jose_jws,jose_jws_alg,
                        jose_jws_alg_ecdsa,jose_jws_alg_eddsa,
                        jose_jws_alg_hmac,jose_jws_alg_none,
                        jose_jws_alg_poly1305,jose_jws_alg_rsa_pkcs1_v1_5,
                        jose_jws_alg_rsa_pss,jose_jwt,jose_public_key,
                        jose_server,jose_sha3,jose_sha3_keccakf1600_driver,
                        jose_sha3_keccakf1600_nif,jose_sha3_libdecaf,
                        jose_sha3_unsupported,jose_sup]},
              {registered,[]},
              {vsn,"1.8.4"},
              {mod,{jose_app,[]}}]}.
#ifndef OpenSSLShim_h
#define OpenSSLShim_h

#include "conf.h>
#include "evp.h>
#include "err.h>
#include "bio.h>
#include "x509.h>
#include "cms.h>

// Initialize OpenSSL
static inline void OpenSSL_SSL_init(void) {
    SSL_library_init();
    SSL_load_error_strings();
    OPENSSL_config(NULL);
    OpenSSL_add_all_ciphers();
    OPENSSL_add_all_algorithms_noconf();
}

static inline void EVP_PKEY_assign_wrapper(EVP_PKEY *pkey, RSA *rsakey) {
    EVP_PKEY_assign(pkey, EVP_PKEY_RSA, rsakey);
}

static inline STACK_OF(X509) *STACK_X509_new_null() {
    return SKM_sk_new_null(X509);
}

static inline void STACK_X509_free(STACK_OF(X509) *stack) {
    SKM_sk_free(X509, stack);
}

static inline int STACK_X509_push(STACK_OF(X509) *stack, void *data) {
    return SKM_sk_push(X509, stack, data);
}

static inline void *STACK_X509_pop(STACK_OF(X509) *stack) {
    return SKM_sk_pop(X509, stack);
}

static inline STACK_OF(X509) *STACK_X509_dup(STACK_OF(X509) *stack) {
    return SKM_sk_dup(X509, stack);
}

static inline int STACK_X509_num(STACK_OF(X509) *stack) {
    return SKM_sk_num(X509, stack);
}

static inline int STACK_X509_find(STACK_OF(X509) *stack, void *data) {
    return SKM_sk_find(X509, stack, data);
}

static inline void STACK_X509_zero(STACK_OF(X509) *stack) {
    SKM_sk_zero(X509, stack);
}


#endif

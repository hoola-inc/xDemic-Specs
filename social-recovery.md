---
title: "Simple ID (muPort)"
category: "muport"
type: "guides"
source: "https://github.com/uport-project/muport-core-js/blob/master/docs/guides/simple-id.md"
---

## Setting up recovery network

If we are to lose the master private key m at some point we want a way to recover access to it. One way of doing this is to use a Shamir Threshold scheme / Shamir Secret Sharing (SSS) scheme (http://dl.acm.org/citation.cfm?doid=359168.359176).

Suppose we designate three recovery delegates with DIDs D1, D2, D3 and corresponding asymmetric encryption key pairs `(e1, E1)`, `(e2, E2)`, `(e3, E3)`.

We split the master private key `m` into shares `S1`, `S2`, `S3` in a 2-of-3 SSS scheme and encrypt them to the respective recipient:

```(enc(E1, S1), enc(E2, S2), enc(E3, S3))```

The above package is added to the DID Document. Similarly we can choose n contacts and set up a general m-of-n scheme.

Note: for this scheme to work the master key `m` cannot be stored on a smart card or similar device that prevents extraction of the key.

Note: Assuming `m` is an ECC 256 bit private key, the prime modulus for SSS must be larger than 256 bits. A known good prime such as
`020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd`, which is the NIST P384 curve prime should be used.


## Using the recovery network

Suppose the user loses their master key. We can recover using the following steps:

1. On their new main device, user generates a temporary encryption key pair `(eT, ET)`
1. The recovering user contacts recovery delegate D1 and presents them the encryption public key `ET`.
1. `D1` retrieves the DID document of the user and decrypts `enc(E1, S1)` using `e1` to get `S1`
1. `D1` encrypts `S1` to get `enc(ET, S1)` and provides this to the user through some channel. `D1` may also present the recovering user with their original DID (`D0` say) through this channel.
1. User decrypts `enc(ET, S1)` with `eT` to obtain `S1`
1. User repeats steps 2-5 until enough shares have been obtained to reconstruct `m`
1. `m` is used to derive the recovery key `R`
1. User retrieves the DID document (if they have their own DID) and extracts `R`, and makes sure it matches the derived key `R`. Alternatively the key `R` is used to look up the current DID & DID Document through a registry entry.
1. User derives the Account keys `(a1, A1)`, `(a2, A2)` etc. At first we can use the same key for signing and recovery, and since we are recovering the signing keys themselves no transactions are necessary during recovery.
1. (*We may opt to skip this part for simplicity in the first iteration*) User generates a new master keypair `(m', M')`, derives new keys `(r’, R’)`, `(k0’, K0’)`, `(e0’, E0’)` and uses the old recovery key r to update the DID document with the new keys `R’`, `K0’`, `E0’`.


## Updating the encrypted recovery shards

Suppose the user updates the recovery network. The master key should now be rotated because if we no longer trust some of the recovery delegates they should not be able to recover a useful master key.

1. User selects new set of recovery delegates
1. User generates new master key `M'`
1. User sets up recovery network as in section “setting up recovery network”
1. User uses old master key `M` to update DDO with new master key `M'` and new recovery network

# xDemic Architecture
## To Do
Fix everything to JWT and message passing/Event Driven
Add Blockchain based timestamps
* WeChat and AliPay Integration 
	* Identity
	* Payment
	* Stripe
* Fix Onboarding
Implement Dashboard Onboarding
Implement School Startup
* Fix Dashboard - UX/UI
- [ ] Add SmartCampus/Xioaboa Features
- [ ] Add Help Section
- [ ] Add School Logo
- [ ] Add graphs of relevant data
- [ ] Add info tile
- [ ] Icons for each data type
- [ ] Make activity like Xiabao, color coded etc

* Fix Mobile UI/UX
- [ ] Fix Buttons, add feedback and height
- [ ] Fix Notification State management
- [ ] Add Onboarding Screens
- [ ] Add include onboarding


Reference https://blockchain.ieee.org/images/files/pdf/20180918-blockchain-identity-management_-_tony-nadalin.pdf
* Contents
	* Platfrom Architecture
	* Messaging Architecture
		* Steps to create JWE https://github.com/decentralized-identity/identity-hub/blob/master/docs/authentication.md
		* Message Service https://github.com/uport-project/lambda-chasqui
			* https://github.com/uport-project/uport-transports/blob/develop/docs/reference/index.md
	* VC-Schema
		* Test Suite
			* https://github.com/uport-project/vc-test-suite
	* DID Resolver and Documents
		* https://uniresolver.io/
		* did:ethr resolver - https://github.com/uport-project/uport-did-driver 
			* Might need to self host
	* Private Key Format
	* Import https://github.com/decentralized-identity/did-auth-jose/blob/master/lib/crypto/ec/EcPrivateKey.ts instead of RSA
	* Linked Data Signatures and Linked Data Proofs
	* Cryptography Basics: https://hackernoon.com/a-closer-look-at-ethereum-signatures-5784c14abecc

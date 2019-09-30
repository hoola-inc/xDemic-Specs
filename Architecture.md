# xDemic Architecture
## To Do
Fix everything to JWT and message passing/Event Driven<br/>
* WeChat and AliPay Integration <br/>
	* Identity
	* Payment
	* Stripe
* Fix Onboarding
* Fix Dashboard - UX/UI
- [ ] Add SmartCampus/Xioaboa Features
- [ ] Add Help Section
- [ ] Add School Logo
- [ ] Add graphs of relevant data
- [ ] Add info tile
- [ ] Icons for each data type
- [ ] Make activity like Xiabao, color coded etc


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

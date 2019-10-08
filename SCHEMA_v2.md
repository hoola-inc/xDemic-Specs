# Schema for xDemic
xDemic will use a [Verifiable Credentials Data Model] (https://www.w3.org/TR/vc-data-model/), combinded with [IMS Extended Credentials Schema]  

## Person Data
```
"person": {
	"id": "did:example:BcRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
	"type": "Person",
	"fullName": "Madison Williams",
	"givenName": "Madison",
	"familyName": "Williams",
	"email": "mwilliams@example.org",
	"mobile": "0000000000",
	"URL": "http://example.org/mwilliams",
	"studentId": "123456789",
	"birthDate": "1989-01-01",
	"sourcedId": "0123456789"
	}

```
## School Data
```
"issuer": {
	"id": "did:example:ADfascRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
	"type": "Issuer",
	"name": "Competency-Based University",
      	"description": "string",
	"url": "http://example.org/cbu",
	"address" : {
		"id" : "urn:uuid:AAD82CF7-BF8B-4514-8914-E35D0FAC8B7B",
		"type": "PostalAddress",
		"addressCountry" : "France",
		"addressLocality": "Paris",
		"addressRegion" : "Île-de-France",
		"postalCode" : "F-75002",
		"postOfficeBoxNumber" : "..String..",
		"streetAddress" : "38 avenue de l'Opera"
	},
	"email": "secretariat(at)google.org",
	"phone": "0000000000",
	"logo": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAVsAAAClCAYAAADyIF4,    
	"publicKey": {
      	  	"id": "string",
      	  	"type": "string",
      	  	"owner": "string",
      	  	"publicKeyPem": "string"
      	},
      	"revocationList": {
      	  	"id": "string",
      	  	"type": "string",
      	  	"issuer": "string",
      	  	"revokedAssertions": [
      	  	  "string"
      	  ]
      	},
      	"sourcedId": "string",
      	"url": "string",
      	"verification": {
      	  	"id": "string",
      	  	"type": "Hosted",
      	  	"allowedOrigins": [
      	  	  "string"
      	  ],
      	  	"creator": "string",
      	  	"startsWith": [
      	  	  "string"
      	  ],
      	  	"verificationProperty": "string"
      	},
  },
```

## Couse Data (Achievement)
```
  "achievement": {
    "id": "string",
    "type": "Achievement",
    "alignments": [{
    	"type": "AlignmentObject",
    	"alignmentType": "educationalLevel",
    	"educationalFramework": "US Grade Levels",
    	"targetName": "2",
    	"targetUrl": {
    	  "@id": "http://purl.org/ASN/scheme/ASNEducationLevel/2"
     	}
  	}
    ],
    "creditsAvailable": 3,
    "name": "Intro to Computer Science",
    "fieldOfStudy": "Computer Science",
    "issuer": {
      "id": "did:example:ADfascRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
      },
    "level" : {
    	"type": "DefinedTerm",
    	"name": "SCQF Level 7",
    	"inDefinedTermSet": "https://www.sqa.org.uk/sqa/71377.html"
  },
    "requirement": {
      	"id": "string",
      	"type": "string",
      	"narrative": "string",
      	"additionalProp1": {}
    },
    "resultDescriptions": [
      {
        "id": "string",
        "type": "GradePointAverage"|"LetterGrade"|"Percent"|"PerformanceLevel"|"PredictedScore"|"Result"|"RawScore"|"RubricScore"|"ScaledScore",
        "name": "string",
        "resultMin": "F",
        "resultMax": "A"
      }
    ],
    "specialization": "Basic Technical Literacy",
    "tags": [
      "Tech", "Intro", "etc"
    ],
  },
```
## Assertion
```
"assertion":{
  "id": "string",
  "type": "string",
  "achievement": {
    "id": "string",
    "type": "Achievement",
    },
  "creditsEarned": 0,
  "endDate": "2019-10-08T01:40:39.009Z",
  "endorsements": [
    {
      "id": "string",
      "type": "string",
      }],
  "evidence": [
    {
      "id": "string",
      "type": "string",
      "artifacts": [
        {
          "type": "string",
          "description": "string",
          "name": "string",
          "url": "string"
        }
      ],
      "audience": "string",
      "description": "string",
      "genre": "string",
      "name": "string",
      "narrative": "string"
    }
  ],
  "image": "string",
  "issuedOn": "2019-10-08T01:40:39.011Z",
  "licenseNumber": "string",
  "narrative": "string",
  "recipient": {
    "id": "string",
    "type": "string",
    "identity": "string",
    "hashed": true,
    "salt": "string"
  },
  "results": [
    {
      "id": "string",
      "type": "GradePointAverage",
      "name": "string",
      "value": "string"
    }
  ],
  "revocationReason": "string",
  "revoked": true,
  "role": "string",
  "signedEndorsements": [
    "string"
  ],
  "startDate": "2019-10-08T01:40:39.011Z",
  "term": "string",
  "verification": {
    "id": "string",
    "type": "Hosted",
    "allowedOrigins": [
      "string"
    ],
    "creator": "string",
    "startsWith": [
      "string"
    ],
    "verificationProperty": "string"
  },
  "additionalProp1": {}
}

```
## Endorsement (Will explain)
```
{
  "id": "string",
  "type": "string",
  "claim": {
    "id": "string",
    "type": "string",
    "endorsementComment": "string",
    "additionalProp1": {}
  },
  "issuedOn": "2019-10-08T01:47:38.664Z",
  "issuer": {
    "id": "string",
    "type": "string",
    },
  "verification": {
    "id": "string",
    "type": "Hosted",
    "allowedOrigins": [
      "string"
    ],
    "creator": "string",
    "startsWith": [
      "string"
    ],
    "verificationProperty": "string"
  }
}
```
## Example
The following is a credential send to a student. This will be sent as a JWT using the uport schema
included in the claims section of the JWT that is sent using uport.

```
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://purl.imsglobal.org/ctx/extended-transcript/v1p0"
  ],
  "id": "urn:uuid:bbba8553-8ec1-445f-82c9-a57251dd731c",
  "type": ["VerifiableCredential", "ExtendedTranscript"],
  "issuer": "did:example:23adb1f712ebc6f1c276eba4dfa",
  "issuanceDate": "2010-01-01T19:73:24Z",
  "claim": {
	"id": "did:example:BcRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
	"assertion":{
	  "id": "string",
	  "type": "string",
	  "achievement": {
	    "id": "string",
	    "type": "Achievement",
	    },
	  "creditsEarned": 0,
	  "endDate": "2019-10-08T01:40:39.009Z",
	  "endorsements": [
	    {
	      "id": "string",
	      "type": "string",
	      }],
	  "evidence": [
	    {
	      "id": "string",
	      "type": "string",
	      "artifacts": [
	        {
	          "type": "string",
	          "description": "string",
	          "name": "string",
	          "url": "string"
	        }
	      ],
	      "audience": "string",
	      "description": "string",
	      "genre": "string",
	      "name": "string",
	      "narrative": "string"
	    }
	  ],
	  "image": "string",
	  "issuedOn": "2019-10-08T01:40:39.011Z",
	  "licenseNumber": "string",
	  "narrative": "string",
	  "recipient": {
	    "id": "string",
	    "type": "string",
	    "identity": "string",
	    "hashed": true,
	    "salt": "string"
	  },
	  "results": [
	    {
	      "id": "string",
	      "type": "GradePointAverage",
	      "name": "string",
	      "value": "string"
	    }
	  ],
	  "revocationReason": "string",
	  "revoked": true,
	  "role": "string",
	  "signedEndorsements": [
	    "string"
	  ],
	  "startDate": "2019-10-08T01:40:39.011Z",
	  "term": "string",
	  "verification": {
	    "id": "string",
	    "type": "Signed",
	    "allowedOrigins": [
	      "string"
	    ],
	    "creator": "string",
	    "startsWith": [
	      "string"
	    ],
	    "verificationProperty": "string"
	  },
	  "additionalProp1": {}
	}
	},	
  "proof": {
    "type": "ES256K",
    "created": "2017-06-18T21:19:10Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "did:example:ebfeb1f712ebc6f1c276e12ec21#key1",
    "jws": "eyJhbGciOiJSUzI1NiIsImI2NCI6ZmFsc2UsImNyaXQiOlsiYjY0Il19..TCYt5XsITJX1CxPCT8yAV-TVkIEq_PbChOMqsLfRoPsnsgw5WEuts01mq-pQy7UJiN5mgRxD-WUcX16dUEMGlv50aqzpqh4Qktb3rk-BuQy72IFLOqV0G_zS245-kronKb78cPN25DGlcTwLtjPAYuNzVBAh4vGHSrQyHUdBBPM"
  }
}
```
### Simple Example
```
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://purl.imsglobal.org/ctx/extended-transcript/v1p0"
  ],
  "id": "urn:uuid:bbba8553-8ec1-445f-82c9-a57251dd731c",
  "type": ["VerifiableCredential", "ExtendedTranscript"],
  "issuer": "did:example:23adb1f712ebc6f1c276eba4dfa",
  "issuanceDate": "2010-01-01T19:73:24Z",
  "claim": {
	"person": {
		"id": "did:example:BcRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
		"type": "Person",
		"fullName": "Madison Williams",
		"givenName": "Madison",
		"familyName": "Williams",
		"email": "mwilliams@example.org",
		"mobile": "0000000000",
		"URL": "http://example.org/mwilliams",
		"studentId": "123456789",
		"birthDate": "1989-01-01",
		"sourcedId": "0123456789"
		}
	},	
  "proof": {
    "type": "ES256K",
    "created": "2017-06-18T21:19:10Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "did:example:ebfeb1f712ebc6f1c276e12ec21#key1",
    "jws": "eyJhbGciOiJSUzI1NiIsImI2NCI6ZmFsc2UsImNyaXQiOlsiYjY0Il19..TCYt5XsITJX1CxPCT8yAV-TVkIEq_PbChOMqsLfRoPsnsgw5WEuts01mq-pQy7UJiN5mgRxD-WUcX16dUEMGlv50aqzpqh4Qktb3rk-BuQy72IFLOqV0G_zS245-kronKb78cPN25DGlcTwLtjPAYuNzVBAh4vGHSrQyHUdBBPM"
  }
}
```
### Alumni Of Example
```
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://purl.imsglobal.org/ctx/extended-transcript/v1p0"
  ],
  "id": "urn:uuid:bbba8553-8ec1-445f-82c9-a57251dd731c",
  "type": ["VerifiableCredential", "ExtendedTranscript"],
  "issuer": "did:example:23adb1f712ebc6f1c276eba4dfa",
  "issuanceDate": "2010-01-01T19:73:24Z",
  "claim": {
	"id": "did:example:BcRisGnqV4QPb6bRmDCqEjyuubBarS1Y1nhDwxBMTXY4",
	"alumniOf": {
	      "id": "did:example:c276e12ec21ebfeb1f712ebc6f1",
	      "name": [{
		"value": "Example University",
		"lang": "en"
	      }, {
		"value": "Exemple d'Université",
		"lang": "fr"
	      }]
	    }
	},	
  "proof": {
    "type": "ES256K",
    "created": "2017-06-18T21:19:10Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "did:example:ebfeb1f712ebc6f1c276e12ec21#key1",
    "jws": "eyJhbGciOiJSUzI1NiIsImI2NCI6ZmFsc2UsImNyaXQiOlsiYjY0Il19..TCYt5XsITJX1CxPCT8yAV-TVkIEq_PbChOMqsLfRoPsnsgw5WEuts01mq-pQy7UJiN5mgRxD-WUcX16dUEMGlv50aqzpqh4Qktb3rk-BuQy72IFLOqV0G_zS245-kronKb78cPN25DGlcTwLtjPAYuNzVBAh4vGHSrQyHUdBBPM"
  }
}
```
The above is the Schema for a Single Claim Course Record Claim.

### Exaplanation

* @context describes the schema used to generate this single claim. In this case the both the verifiable credentials and the Extended Transcripts schema are used.
* "id": "urn:uuid:bbba8553-8ec1-445f-82c9-a57251dd731c", provides a unique identifier for this specific credential
* "type", defines the type of credential contained.
* "issuer", DID of the school
* "claims", this contains the content of the claim.
	* "id", this id refers to the subject of the credential, in this case the student, this key is inherited from the Verifiable Credentials type
	* "records", is a list of transcript records issued to the student. 
		* "id", is the unique identifier for this particular record
		* "type" describes it as a record
		* "date": "2016-12-01T00:00:0000Z",
		* "term": "Fall 2016",
		* "result": "A-",
		* "credits": 4,
		* "recordOf" is an object that describes what this is a record off, i.e the course
		* "id", is the urn for the course this is a record off 
		* "type", the type in this case is a "TranscriptEntityLink", i.e. it tells us that the course is part of a transcript
		* "entityType": "Course", tells us that the entity is a course
		* "entityId": "urn:uuid:0147F2A5-799A-47E6-832F-B114A7674AA7"
	* "transcriptEntities", defines the entities that make up this academic path
		* courses and degree are both the things that make up this transcript.
* proof is a required component of this verifiable credential, making this credential tamper proof. The JWS is generated by the issuers DID

const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:aca777ad-bb1b-48cf-aca3-c18003a24b4d",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_o6BugnzdY",
                        "AppClientId": "1eoflavfm1oqqe5mikkdstub5g",
                        "Region": "us-east-1"
                    }
                },
                "GoogleSignIn": {
                    "Permissions": "email,profile,openid",
                    "ClientId-WebApp": "304930360290-hia7o82d6gg290pavvsivmi6t5kbg055.apps.googleusercontent.com"
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "CUSTOM_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "PHONE_NUMBER"
                        ],
                        "signupAttributes": [
                            "EMAIL",
                            "FAMILY_NAME",
                            "GIVEN_NAME",
                            "PHONE_NUMBER"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OPTIONAL",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "PHONE_NUMBER"
                        ]
                    }
                }
            }
        }
    }
}''';
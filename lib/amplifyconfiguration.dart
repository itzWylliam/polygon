const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "AdminQueries": {
                    "endpointType": "REST",
                    "endpoint": "https://hvoak3uhme.execute-api.us-east-1.amazonaws.com/dev",
                    "region": "us-east-1",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS"
                }
            }
        }
    },
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
                            "PoolId": "us-east-1:0f529188-c766-4ce0-914a-67b85c3ece32",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_WWGOAZjiV",
                        "AppClientId": "1s98ergcq4j9uts776qb11gmbu",
                        "Region": "us-east-1"
                    }
                },
                "GoogleSignIn": {
                    "Permissions": "email,profile,openid",
                    "ClientId-WebApp": "304930360290-rui1slj2o8usd8hbm3t5hhsk91n605nr.apps.googleusercontent.com"
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "polygond185e634-d185e634-dev.auth.us-east-1.amazoncognito.com",
                            "AppClientId": "1s98ergcq4j9uts776qb11gmbu",
                            "SignInRedirectURI": "polygon://signin/,polygon://signin/",
                            "SignOutRedirectURI": "polygon://signout/",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "CUSTOM_AUTH",
                        "socialProviders": [
                            "GOOGLE"
                        ],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [
                            "EMAIL"
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
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';
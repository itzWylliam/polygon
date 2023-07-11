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
                            "PoolId": "us-east-1:66e23f4d-60e4-4343-8ad2-60b7d231c25a",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_t4fp8GJ7O",
                        "AppClientId": "61tbive4rl65i81l6jibq4bgr7",
                        "Region": "us-east-1"
                    }
                },
                "GoogleSignIn": {
                    "Permissions": "email,profile,openid",
                    "ClientId-WebApp": "304930360290-hia7o82d6gg290pavvsivmi6t5kbg055.apps.googleusercontent.com"
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "polygon-dev.auth.us-east-1.amazoncognito.com",
                            "AppClientId": "61tbive4rl65i81l6jibq4bgr7",
                            "SignInRedirectURI": "polygon://signin/",
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
                            "GOOGLE",
                            "AMAZON"
                        ],
                        "usernameAttributes": [
                            "PHONE_NUMBER"
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
                            "PHONE_NUMBER"
                        ]
                    }
                }
            }
        }
    }
}''';
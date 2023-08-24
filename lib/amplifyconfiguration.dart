const amplifyconfig = '''{
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
                },
                "polygon": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://26o6hkhptnfttce23jvgofrzwq.appsync-api.us-east-1.amazonaws.com/graphql",
                    "region": "us-east-1",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS",
                    "apiKey": "da2-a37d7fd7hvbrvicqyehs2jn23e"
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
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://26o6hkhptnfttce23jvgofrzwq.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AMAZON_COGNITO_USER_POOLS",
                        "ClientDatabasePrefix": "polygon_AMAZON_COGNITO_USER_POOLS"
                    },
                    "polygon_API_KEY": {
                        "ApiUrl": "https://26o6hkhptnfttce23jvgofrzwq.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-a37d7fd7hvbrvicqyehs2jn23e",
                        "ClientDatabasePrefix": "polygon_API_KEY"
                    },
                    "polygon_AWS_IAM": {
                        "ApiUrl": "https://26o6hkhptnfttce23jvgofrzwq.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "polygon_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:5f519e30-55e6-4b48-b370-527090cc9c3d",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_aOmnY5QAN",
                        "AppClientId": "2orjs8at2ucmq64bold23krkli",
                        "Region": "us-east-1"
                    }
                },
                "GoogleSignIn": {
                    "Permissions": "email,profile,openid",
                    "ClientId-WebApp": "304930360290-o5cgcdmaefoajobbf4rq6fr1rf84ff1m.apps.googleusercontent.com"
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "polygon-dev.auth.us-east-1.amazoncognito.com",
                            "AppClientId": "2orjs8at2ucmq64bold23krkli",
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
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "mfaConfiguration": "OPTIONAL",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "socialProviders": [
                            "GOOGLE"
                        ],
                        "usernameAttributes": [
                            "EMAIL"
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

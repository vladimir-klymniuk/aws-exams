```text
1. Which of the following can be enforced for IAM users for securing IAM credentials?

    `-  Enable IAM Groups`
    `+  Enable MFA`
    `+  Use password expiry`
    `-  Enable IAM Users`
```text
 
Why not IAM Groups or IAM Users? Question was about securing existing accounts and not about enabling.

```text
Take a look at AWS as a incapsulated platform which help your buisness to start and grow.
Every single detail and service give your buisnees ability to atomatative the processes inside or
space for hosting and deploying your app.


So, what is basicaly means this IAM account configuration?


That is global security rules-variables setup for `your platform` accounts which 
should be managed and created with tool that we gonna overview next.

Here is example of automatisation global rules for your account with HashiCorp terraform tool.
link: https://github.com/vladimir-klymniuk/aws-practitioner-exam/tree/master/terraform/iam
```
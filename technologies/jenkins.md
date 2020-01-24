# Jenkins

## Introduction

[Jenkins](https://jenkins.io/) is a free and open source automation server written in Java. Jenkins helps to automate the non-human part of the software development process, with continuous integration and facilitating technical aspects of continuous delivery. [Wikipedia](https://en.wikipedia.org/wiki/Jenkins_(software))

## Ubuntu

I typically run Jenkins on Ubuntu-based Linux servers. All information below is for that platform.

## Starting/Stopping/Restarting via CLI

```bash
sudo service jenkins restart
```

```bash
sudo service jenkins stop
```

```bash
sudo service jenkins start
```

## JIRA Integration

The JIRA plugin affords Jenkins the ability to automatically progress issues through workflow upon successful completion of a build. Enabling this functionality is relatively straightforward.

* Configure the job of your choosing
* Under the "Build" section, click "Add build step", and select "Conditional step (single)"
* Set "Worst/Best Status" as you see fit. Most often I set both values to "Success".
* Select "JIRA: Progress issues by workflow action"
* Enter the JQL to select the appropriate issues
* Enter the appropriate workflow action - e.g. "Needs Validation"

Sample JQL for most projects:

```sql
project = PROJECTNAME AND status = Resolved
```

## Slack Integration

### Store Integration Token

First up, we need to securely stored the Slack integration token within the Jenkins installation. This token enables notifications from Jenkins into Slack. A Slack administrator will need to grab this value for you from the specific Jenkins integration that you would like to leverage.

Within your Slack admin area, click "Browse Apps" and search for "Jenkins CI". Create a new configuration (if necessary) or edit the relevant configuration to grab the relevant `Token` value.

Once you have that value:

* Click "Credentials" in the main navigation
* Access the "global" domain. The UX here is abysmal. Click anywhere you see "(global)" on the page.
* Click "Add Credentials" in the left nav
* Set "Kind" to "Secret text"
* You can leave the "Scope" set to "Global"
* Set the "Secret" equal to the Slack integration token
* Set the "ID" as "slack-notifications-token"

You may leave the "Description" field blank.

### Install & Configure Plugin

* If not yet installed, add the "Slack Notification" module within the Jenkins "Plugin Manager"
* Head on over to "Manage Jenkins" > "Configure System"  and look for "Global Slack Notifier Settings"
* Set "Base URL" to [https://ORG.slack.com/services/hooks/jenkins-ci/](https://ORG.slack.com/services/hooks/jenkins-ci/) where `ORG` is your organization prefix
* Set "Team Subdomain" to your organization's prefix
* Set "Integration Token Credential ID" to "slack-notifications-token"

The remaining fields are optional and can be skipped. If you're feeling it, click "Test Connection" to see if that worked correctly

### Configure Job

* Edit the configuration of the job you are trying to integrate with Slack
* Under "Post-build Actions", select "Slack Notifications"
* Check the notifications that you desire. I typically go with "Notify Failure" and "Notify Success"
* Click "Advanced" and enter the channel for your project. If none is specified, notifications will go to "#slack-integrations".
* Save your job configuration and you should be all set

## Parameterized Builds

Parameterized builds allow you to modify execution of a job during each run. Within your job, navigate to the "General" section and check "This project is parameterized." From there you, add the type of parameter that you wish to make available. You may optionally specify a default value.

### Example Use - Building from a Tag

Based upon our current code management practices, it's usually a good idea to build to a UAT environment from a tag rather than a branch.

* Configure your job
* Within the "General" section, check "This project is parameterized"
* Add a "string parameter"
* Name your parameter "version". You may leave the default value blank.
* Within the "Source Code Management" section, set the "Branch Specifier" to "tags/${version}"

Whenever your run the build, you will now be prompted for a tag or version number prior to execution.

## Security

### Disabling Security

The other day, our work Jenkins installation lost the ability to connect to our Active Directory instance. I found the following instructions for temporarily turning off security.

[https://jenkins.io/doc/book/system-administration/security/](https://jenkins.io/doc/book/system-administration/security/)
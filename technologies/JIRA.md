# JIRA

## Overview

Jira is a proprietary issue tracking product developed by Atlassian that allows bug tracking and agile project management. The product name is a truncation of Gojira, the Japanese word for Godzilla, which is a reference to a competitor, Bugzilla. [Wikipedia](https://en.wikipedia.org/wiki/Jira_(software))

## Workflow Automation

* **JIRA Support:** Feb 2019 - [Configuring workflow triggers](https://confluence.atlassian.com/adminjiracloud/configuring-workflow-triggers-776636696.html)
* **BitBucket Blog:** Dec 2017 - [6 things you should know before & after integrating Jira Software Server with Bitbucket Server](https://www.atlassian.com/blog/bitbucket/integration-tips-jira-software-bitbucket-server)
* **JIRA Blog:** July 2015 - [Workflow automation triggers](https://confluence.atlassian.com/jirasoftware/blog/2015/07/workflow-automation-triggers)

## Configuring JIRA

### Issue Type Configurations

#### Issue Type Scheme

An "Issue Type Scheme" determines which "Issue Types" (e.g. Epic, Story, Bug, etc) are applicable to your project.

### Fields Configurations

#### Field Configurations

JIRA field configurations determine the following:

* Whether or not a field is visible
* Whether or not a field is required
* Which “renderer" JIRA uses when displaying the field. (Just for text fields. e.g. Textfield vs Textarea)
* Upon which screens the field will appear - e.g. "Default Screen", "Start Work Screen", etc

#### Field Configuration Schemes

Field Configuration Schemes are used to associate a Field Configuration with specific Issue Types. e.g. The "Default Field Config" applies to Stories and Sub-Tasks. The "Epic Field Config" applies only to Epics.

### Screen Configurations

#### Screens

Screens are leveraged to define the fields presented when issues transition through workflow. e.g. “Default”, “Resolve Task”, “Close Task”

#### Screen Schemes

Screen Schemes are used to define the fields presented when viewing, creating, or editing an issue. Much like Field Configuration Schemes, these schemes associate Screens with certain Issue Types.

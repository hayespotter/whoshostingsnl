# whoshostingsnl.com

This is a simple static site to provide who the next host of Saturday Night Live is at a glance. Additionally showcases a simple CICD and OpenTofu setup. 

A PR to the `master` branch will run an action that executes `tofu plan` with readOnly access to my AWS infrastructure so I can verify my changes and limit any potential issues. 
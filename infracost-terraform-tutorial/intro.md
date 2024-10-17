# Welcome

In this scenario, you will learn how to integrate Terraform and Infracost into a GitHub Actions CI/CD pipeline. You will also learn how to  modify Terraform configurations to see how Infracost's cost estimates change.

Let’s dive in!

# Motivation

Integrating Infracost into your CI/CD pipeline supports DevOps by providing cost visibility early in development, helping teams automate cost management and make informed decisions. This aligns with DevOps goals of automation, transparency, and continuous improvement in infrastructure management.

# Background

Infracost is an open-source tool that helps developers estimate cloud infrastructure costs within their workflows. Integrating it into a CI/CD pipeline provides real-time cost feedback for infrastructure-as-code (IaC) changes, such as those made with Terraform, promoting cost-aware engineering and reducing unexpected expenses.

Terraform is an open-source IaC tool that lets developers define and manage cloud infrastructure using declarative configuration files, supporting multiple cloud providers like AWS, Azure, and Google Cloud.

GitHub Actions is a CI/CD platform that automates development tasks like testing, building, and deploying code, and can integrate with tools like Infracost to monitor cloud costs during the process.

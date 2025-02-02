# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prometheus

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "namespace" {
  type        = string
  description = "The Kubernetes namespace"
}

variable "service_account" {
  type        = string
  description = "The Kubernetes service account"
}

variable "tags" {
  type        = map(string)
  description = "Tags for Loki"
  default = {
    "Made-By" = "Terraform"
  }
}

variable "bucket_name" {
  type        = string
  description = "Name of the Thanos bucket"
}

#############################################################################
# KMS

variable "enable_kms" {
  type        = bool
  description = "Enable custom KMS key"
}

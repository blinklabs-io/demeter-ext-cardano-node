resource "kubernetes_manifest" "customresourcedefinition_cardanonodeports_demeter_run" {
  manifest = {
    "apiVersion" = "apiextensions.k8s.io/v1"
    "kind" = "CustomResourceDefinition"
    "metadata" = {
      "name" = "cardanonodeports.demeter.run"
    }
    "spec" = {
      "group" = "demeter.run"
      "names" = {
        "categories" = []
        "kind" = "CardanoNodePort"
        "plural" = "cardanonodeports"
        "shortNames" = []
        "singular" = "cardanonodeport"
      }
      "scope" = "Namespaced"
      "versions" = [
        {
          "additionalPrinterColumns" = [
            {
              "jsonPath" = ".spec.network"
              "name" = "Network"
              "type" = "string"
            },
            {
              "jsonPath" = ".spec.version"
              "name" = "Version"
              "type" = "string"
            },
            {
              "jsonPath" = ".status.authenticatedEndpoint"
              "name" = "Authenticated Endpoint"
              "type" = "string"
            },
            {
              "jsonPath" = ".status.authToken"
              "name" = "Auth Token"
              "type" = "string"
            },
            {
              "jsonPath" = ".status.throughputTier"
              "name" = "Throughput Tier"
              "type" = "string"
            },
          ]
          "name" = "v1alpha1"
          "schema" = {
            "openAPIV3Schema" = {
              "description" = "Auto-generated derived type for CardanoNodePortSpec via `CustomResource`"
              "properties" = {
                "spec" = {
                  "properties" = {
                    "network" = {
                      "enum" = [
                        "mainnet",
                        "preprod",
                        "preview",
                        "sanchonet",
                      ]
                      "type" = "string"
                    }
                    "throughputTier" = {
                      "type" = "string"
                    }
                    "version" = {
                      "type" = "string"
                    }
                  }
                  "required" = [
                    "network",
                    "throughputTier",
                    "version",
                  ]
                  "type" = "object"
                }
                "status" = {
                  "nullable" = true
                  "properties" = {
                    "authToken" = {
                      "type" = "string"
                    }
                    "authenticatedEndpoint" = {
                      "type" = "string"
                    }
                  }
                  "required" = [
                    "authToken",
                    "authenticatedEndpoint",
                  ]
                  "type" = "object"
                }
              }
              "required" = [
                "spec",
              ]
              "title" = "CardanoNodePort"
              "type" = "object"
            }
          }
          "served" = true
          "storage" = true
          "subresources" = {
            "status" = {}
          }
        },
      ]
    }
  }
}

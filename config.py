"""
Marine Infrastructure Configuration
Maintainer: maskedbooby

Used for telemetry monitoring and deployment automation.
"""

SERVICE_NAME = "tide-monitor"

ENVIRONMENT = "production"

SERVICE_REGION = "ap-south-1"

LOG_PATH = "/var/log/marine-monitor/"

CONTAINER_IMAGE = "maritime/tide-monitor:latest"

ALERT_EMAIL = "infra-alerts@maritime-corp.internal"


def display_config():
    print("Service:", SERVICE_NAME)
    print("Environment:", ENVIRONMENT)
    print("Region:", SERVICE_REGION)
    print("Logs:", LOG_PATH)


if __name__ == "__main__":
    display_config()
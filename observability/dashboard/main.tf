# =============================================================================
# Pattern Type : CloudWatch Dashboard
# Difficulty   : Intermediate
# AWS Service  : Amazon CloudWatch
# =============================================================================

# =============================================================================
# Build Chain
#
# AWS Metrics / Custom Metrics
#            │
#            ▼
# Dashboard Widgets
#            │
#            ▼
# CloudWatch Dashboard
# =============================================================================


# =============================================================================
# Step 1 - Create CloudWatch Dashboard
# =============================================================================
resource "aws_cloudwatch_dashboard" "main" {

  dashboard_name = # Dashboard Name

  dashboard_body = jsonencode({

    widgets = [

      {
        type = "metric"

        properties = {

          title = # Widget Title

          region = # AWS Region

          metrics = [
            [
              # Namespace,
              # Metric Name
            ]
          ]

          period = # Period (Seconds)

          stat = # Average | Sum | Maximum | Minimum

          view = "timeSeries"

          stacked = false

        }

        width  = # Widget Width

        height = # Widget Height

        x = # X Position

        y = # Y Position

      }

    ]

  })

}


# =============================================================================
# HINTS
# =============================================================================
#
# dashboard_name
#   -> Dashboard Name
#
# title
#   -> Widget Title
#
# region
#   -> AWS Region
#
# metrics
#   -> AWS/EC2
#   -> AWS/RDS
#   -> AWS/Lambda
#   -> AWS/ApplicationELB
#   -> Custom Namespace
#
# period
#   -> 60
#   -> 300
#   -> 900
#
# stat
#   -> Average
#   -> Sum
#   -> Maximum
#   -> Minimum
#
# width
#   -> Widget Width
#
# height
#   -> Widget Height
#
# x
#   -> Horizontal Position
#
# y
#   -> Vertical Position
#
# =============================================================================
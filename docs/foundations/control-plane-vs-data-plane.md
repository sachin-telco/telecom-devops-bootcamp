# Control Plane vs Data Plane (Telecom Perspective)

## Data Plane
- Handles live subscriber traffic
- AAA requests and responses
- Rating and charging flows
- Latency-sensitive
- Must be highly available

## Control Plane
- Decides how the system should behave
- Configuration changes
- Scaling decisions
- Policy enforcement
- Failure recovery logic

## Telecom Mapping
- RADIUS / Diameter traffic → Data Plane
- Provisioning, config, scaling → Control Plane

## Key Insight
Outages often happen not because traffic is high,
but because the control plane cannot react fast enough.


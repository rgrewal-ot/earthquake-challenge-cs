# #17 Add geographic bounding box filter to API

**Points:** 3-points, backend

Allow filtering earthquakes by geographic region.

**Example:** `GET /api/earthquakes?bbox=-125,32,-114,42` (California)

Format: `minLon,minLat,maxLon,maxLat`

**Acceptance Criteria:**
- [ ] API accepts bbox parameter
- [ ] Returns only earthquakes within the bounding box

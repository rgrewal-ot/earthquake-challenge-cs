# #16 Add magnitude filter to API

**Points:** backend, 2-points

Backend should support filtering by magnitude.

**Example:** `GET /api/earthquakes?min_mag=4.0&max_mag=7.0`

**Acceptance Criteria:**
- [ ] API accepts min_mag and/or max_mag parameters
- [ ] Returns only earthquakes within the specified range

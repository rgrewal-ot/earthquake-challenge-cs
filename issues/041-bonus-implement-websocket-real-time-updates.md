# #41 BONUS: Implement WebSocket real-time updates

**Points:** backend, bonus, 5-points

Use WebSockets for real-time earthquake notifications instead of polling.

**Note:** USGS doesn't provide WebSockets, so you'd need to:
- Create your own WebSocket server that polls USGS
- Push new earthquakes to connected clients

**Acceptance Criteria:**
- [ ] Backend maintains WebSocket connections
- [ ] New earthquakes push to clients instantly
- [ ] Gracefully handles connection issues

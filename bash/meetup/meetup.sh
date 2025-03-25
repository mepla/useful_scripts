#!/bin/sh

totalMembers=$(curl -s 'https://www.meetup.com/gql2' \
  --data-raw '{"operationName":"getGroupMembers","variables":{"urlname":"yourexpatfriends","sortOrder":"ASC","sortField":"JOIN_DATE","status":["ACTIVE","LEADER"]},"extensions":{"persistedQuery":{"version":1,"sha256Hash":"1582866b00b96fd3b7a4b25234b452a377d26354d2e0db709efc151ffcf60eb4"}}}' | jq .data.groupByUrlname.memberships.totalCount)
echo totalMembers=$totalMembers

rsvps=$(curl -s 'https://www.meetup.com/gql2' \
  --data-raw '{"operationName":"getEventByIdForAttendees","variables":{"eventId":"303436429","filter":{"rsvpStatus":["YES","ATTENDED"]},"sort":{"sortField":"LOCAL_TIME","sortOrder":"DESC"},"first":10},"extensions":{"persistedQuery":{"version":1,"sha256Hash":"ef700495da25f04fa9d4721ea74b618e88950a6c32958891675a0010be0d1f40"}}}' | jq .data.event.rsvps)

totalAttendees=$(echo $rsvps | jq .totalCount)
totalYes=$(echo $rsvps | jq .yesCount)
totalNo=$(echo $rsvps | jq .noCount)
totalWaitlist=$(echo $rsvps | jq .waitlistCount)

echo totalAttendees=$totalAttendees 
echo totalYes=$totalYes
echo totalNo=$totalNo
echo totalWaitlist=$totalWaitlist 

package gov.healthit.chpl.aqa.api.payLoad;

import gov.healthit.chpl.aqa.api.asserts.ComplaintsAsserts;

public class complaintsPayload {

    public static String postPayload() {
        String payload = "{\r\n" + "  \"acbComplaintId\": \"Test-111\",\r\n"
                + "  \"actions\": \"This is test action\",\r\n" + "  \"certificationBody\": {\r\n"
                + "    \"acbCode\": \"07\",\r\n" + "    \"address\": {\r\n" + "      \"addressId\": 7,\r\n"
                + "      \"city\": \"Mechanicsburg\",\r\n" + "      \"country\": \"USA\",\r\n"
                + "      \"line1\": \"1000 Bent Creek Blvd.\",\r\n" + "      \"line2\": \"Suite 200\",\r\n"
                + "      \"state\": \"PA\",\r\n" + "      \"zipcode\": \"17050\"\r\n" + "    },\r\n"
                + "    \"id\": 6,\r\n" + "    \"name\": \"ISCA Labs\",\r\n" + "    \"retired\": false,\r\n"
                + "    \"retirementDate\": null,\r\n" + "    \"website\": \"https://www.icsalabs.com\"\r\n" + "  },\r\n"
                + "  \"closedDate\": \"\",\r\n" + "  \"complainantContacted\": true,\r\n"
                + "  \"complainantType\": {\r\n" + "    \"description\": null,\r\n" + "    \"id\": 1,\r\n"
                + "    \"name\": \"Developer\"\r\n" + "  },\r\n" + "  \"criteria\": [\r\n" + "    {\r\n"
                + "      \"certificationCriterion\": {\r\n" + "        \"certificationEdition\": \"2015\",\r\n"
                + "        \"certificationEditionId\": 3,\r\n" + "        \"description\": null,\r\n"
                + "        \"id\": 5,\r\n" + "        \"number\": \"170.315 (a)(5)\",\r\n"
                + "        \"removed\": false,\r\n" + "        \"title\": \"Demographics\"\r\n" + "      },\r\n"
                + "      \"certificationCriterionId\": 0,\r\n" + "      \"complaintId\": 0,\r\n" + "      \"id\": 0\r\n"
                + "    }\r\n" + "  ],\r\n" + "  \"developerContacted\": true,\r\n"
                + "  \"flagForOncReview\": false,\r\n" + "  \"id\": 0,\r\n" + "  \"listings\": [\r\n" + "    {\r\n"
                + "      \"chplProductNumber\": \"15.05.07.2637.MY01.01.00.1.180502\",\r\n"
                + "      \"complaintId\": 0,\r\n" + "      \"id\": 0,\r\n" + "      \"listingId\": 9375\r\n"
                + "    }\r\n" + "  ],\r\n" + "  \"oncAtlContacted\": true,\r\n" + "  \"oncComplaintId\": \"ONC-D\",\r\n"
                + "  \"receivedDate\": \"1574121600000\",\r\n" + "  \"summary\": \"This is test complaint\"\r\n"
                + "}\r\n" + " ";
        return payload;
    }

    public static String putPayload() {
        int id = ComplaintsAsserts.postComplaintId;
        String payload = "{\r\n" + "    \"id\": \"" + id + "\",\r\n" + "    \"certificationBody\": {\r\n"
                + "        \"id\": 6,\r\n" + "        \"acbCode\": \"07\",\r\n" + "        \"name\": \"ICSA Labs\",\r\n"
                + "        \"website\": \"https://www.icsalabs.com\",\r\n" + "        \"address\": {\r\n"
                + "            \"addressId\": 7,\r\n" + "            \"line1\": \"1000 Bent Creek Blvd.\",\r\n"
                + "            \"line2\": \"Suite 200\",\r\n" + "            \"city\": \"Mechanicsburg\",\r\n"
                + "            \"state\": \"PA\",\r\n" + "            \"zipcode\": \"17050\",\r\n"
                + "            \"country\": \"USA\"\r\n" + "        },\r\n" + "        \"retired\": false,\r\n"
                + "        \"retirementDate\": null\r\n" + "    },\r\n" + "    \"complainantType\": {\r\n"
                + "        \"id\": 1,\r\n" + "        \"name\": \"Developer\",\r\n"
                + "        \"description\": null\r\n" + "    },\r\n" + "    \"complainantTypeOther\": null,\r\n"
                + "    \"complaintStatusType\": {\r\n" + "        \"id\": 1,\r\n" + "        \"name\": \"Open\",\r\n"
                + "        \"description\": null\r\n" + "    },\r\n" + "    \"oncComplaintId\": \"ONC-Updated\",\r\n"
                + "    \"acbComplaintId\": \"Test-111\",\r\n" + "    \"receivedDate\": 1574121600000,\r\n"
                + "    \"summary\": \"This is test complaint\",\r\n" + "    \"actions\": \"This is test action\",\r\n"
                + "    \"complainantContacted\": true,\r\n" + "    \"developerContacted\": true,\r\n"
                + "    \"oncAtlContacted\": true,\r\n" + "    \"flagForOncReview\": false,\r\n"
                + "    \"closedDate\": null,\r\n" + "    \"listings\": [\r\n" + "        {\r\n"
                + "            \"id\": 270,\r\n" + "            \"complaintId\": 193,\r\n"
                + "            \"listingId\": 9375,\r\n"
                + "            \"chplProductNumber\": \"15.05.07.2637.MY01.01.00.1.180502\"\r\n" + "        }\r\n"
                + "    ],\r\n" + "    \"criteria\": [\r\n" + "        {\r\n" + "            \"id\": 55,\r\n"
                + "            \"complaintId\": 193,\r\n" + "            \"certificationCriterionId\": 5,\r\n"
                + "            \"certificationCriterion\": {\r\n" + "                \"id\": 5,\r\n"
                + "                \"number\": \"170.315 (a)(5)\",\r\n"
                + "                \"title\": \"Demographics\",\r\n"
                + "                \"certificationEditionId\": 3,\r\n"
                + "                \"certificationEdition\": \"2015\",\r\n"
                + "                \"description\": null,\r\n" + "                \"removed\": false\r\n"
                + "            }\r\n" + "        }\r\n" + "    ],\r\n" + "    \"surveillances\": []\r\n" + "}";
        return payload;
    }
}

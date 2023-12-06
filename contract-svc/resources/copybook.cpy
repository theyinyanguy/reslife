      *****************************************************************
       01 DFHCOMMAREA.
           05 BROKER-MESSAGE-AREA.
              10 MI-HDR-VERSION                    PIC X(03).
              10 MI-HDR-MSGID                      PIC X(35).
              10 MI-HDR-LOGGINGID                  PIC X(35).
              10 MI-HDR-SDR-APPL                   PIC X(08).
              10 MI-HDR-SDR-USERID                 PIC X(08).
              10 MI-HDR-SDR-REGION                 PIC X(08).
              10 MI-HDR-SDR-PROCESS                PIC X(11).
              10 MI-HDR-SDR-SVRNAME                PIC X(11).
              10 MI-HDR-PRF-RECEIVED               PIC X(23).
              10 MI-HDR-PRF-SENT                   PIC X(23).
              10 MI-HDR-CORRELID                   PIC X(48).
              10 MI-HDR-OPERATION                  PIC X(14).
              10 MI-HDR-REPLY                      PIC X(01).
              10 MI-HDR-REPLYSTACK OCCURS 00002 TIMES.
                 15 MI-HDR-REPLYQMGR               PIC X(48).
                 15 MI-HDR-REPLYQUEUE              PIC X(48).
              10 FILLER                            PIC X(92).
      ****************************************************************
           05 PROCESS-REQUEST-CONTROL-AREA.
      *****  FORMAT CCYYMMDD                                      *****
              10 PROCESS-REQUEST-DATE              PIC X(8).
      *****  FORMAT HHMMSS                                        *****
              10 PROCESS-REQUEST-TIME              PIC X(6).
              10 USER-IDENTIFY                     PIC X(8).
              10 CICS-TASK-NUMBER                  PIC S9(9).
              10 PROCESS-REQUEST-SEQUENCE-NUMB     PIC S9(4).
              10 PROCESS-REQUEST-MSG-SQNC-NUMB     PIC S9(4).
              10 PROCESS-REQUEST-RETURN-CODE       PIC 9(4).
                 88 SUCCESSFUL                     VALUE 0.
                 88 UNSUCCESSFUL                   VALUE 1.
              10 ERROR-DETAILS
                 OCCURS 00008 TIMES.
                 15 ERROR-CODE                     PIC 9(4).
                 15 ERROR-CONTEXT-TEXT             PIC X(80).

      ****************************************************************
           05 INPUT-HDR-DATA.
              10 SRV-REQ-TYP                       PIC X(10).
              10 SYS-CD                            PIC X(03).
              10 POL-NO                            PIC X(10).
           05 OUTPUT-HDR-DATA.
              10 CLIENT-DETAIL-COUNTER             PIC 9(02).
              10 CLIENT-ROLE OCCURS 20 TIMES.
                 15 BUSINESS-IDENTITY-IDENTIFY     PIC 9(09).
                 15 BUSINESS-IDENTITY-TYPE         PIC X(01).
                    88 PERSON                      VALUE '1'.
                    88 ORGANISATION                VALUE '2'.
                    88 PERSON-NB                   VALUE '3'.
                    88 ORGANIZATION-NB             VALUE '4'.
                 15 CLIENT-ROLE-CLASSIFACTION      PIC 9(02).
                 15 CLIENT-ROLE-TYPE               PIC X(05).
                 15 PRI-LIFE-INSURED-IND           PIC X(01).
                 15 PRI-OWNER-IND                  PIC X(01).
                 15 POLICY-OWNER-TITLE             PIC X(08).
                 15 POLICY-OWNER-SURNAME           PIC X(40).
                 15 POLICY-OWNER-FIRST-GIVEN-NAME  PIC X(40).
                 15 POLICY-OWNER-SECOND-GIVEN-NAME PIC X(40).
                 15 POLICY-OWNER-DOB               PIC X(08).
                 15 POLICY-OWNER-SEX               PIC X(01).
                 15 LIFE-INSURED-TITLE             PIC X(08).
                 15 LIFE-INSURED-SURNAME           PIC X(40).
                 15 LIFE-INSURED-FIRST-GIVEN-NAME  PIC X(40).
                 15 LIFE-INSURED-SECOND-GIVEN-NAME PIC X(40).
                 15 LIFE-INSURED-DOB               PIC X(08).
                 15 LIFE-INSURED-SEX               PIC X(01).
                 15 ORGANISATION-NAME              PIC X(50).
                 15 EMAIL-ADDRESS                  PIC X(50).
                 15 CONTACT-TELEPHONE-NUM          PIC X(20).
                 15 HOME-TELEPHONE-NUM             PIC X(20).
                 15 MOBILE-NUM                     PIC X(12).
                 15 WORK-TELEPHONE-NUM             PIC X(20).
                 15 FAX-TELEPHONE-NUM              PIC X(20).
                 15 TFN-HELD-IND                   PIC X(01).
                 15 DECEASED-IND                   PIC X(01).
                 15 DECEASED-DT                    PIC X(08).
                 15 CLIENT-ADDRESS-COUNTER         PIC 9(02).
                 15 ADDRESS-DETAILS OCCURS 4 TIMES.
                    25 ADDRESS-IDENTIFY            PIC 9(09).
                    25 ADDRESS-TYPE                PIC X(01).
                    25 ADDRESSEE                   PIC X(26).
                    25 ADDRESS-LINE-1              PIC X(26).
                    25 ADDRESS-LINE-2              PIC X(26).
                    25 ADDRESS-LINE-3              PIC X(26).
                    25 SUBURB                      PIC X(26).
                    25 CITY-NAME                   PIC X(26).
                    25 STATE                       PIC X(20).
                    25 POST-CD                     PIC X(09).
                    25 COUNTRY-CD                  PIC X(02).
                    25 COUNTRY-NAME                PIC X(30).
                    25 UNFORMATTED-ADDRESS-IND     PIC X(01).
                    25 OVERSEA-ADDRESS-IND         PIC X(01).
                    25 WRONG-ADDRESS-IND           PIC X(01).
                    25 WRONG-ADDRESS-EFF-FROM-DATE PIC X(08).

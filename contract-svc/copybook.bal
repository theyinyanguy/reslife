// Copyright (c) 2023 WSO2 LLC. (http://www.wso2.com) All Rights Reserved.
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/constraint;

@constraint:String {maxLength: 3}
public type AlphaNumeric3 string;

@constraint:String {maxLength: 35}
public type AlphaNumeric35 string;

@constraint:String {maxLength: 8}
public type AlphaNumeric8 string;

@constraint:String {maxLength: 11}
public type AlphaNumeric11 string;

@constraint:String {maxLength: 23}
public type AlphaNumeric23 string;

@constraint:String {maxLength: 48}
public type AlphaNumeric48 string;

@constraint:String {maxLength: 14}
public type AlphaNumeric14 string;

@constraint:String {maxLength: 1}
public type AlphaNumeric1 string;

@constraint:String {maxLength: 92}
public type AlphaNumeric92 string;

@constraint:String {maxLength: 6}
public type AlphaNumeric6 string;

@constraint:Int {maxDigits: 9}
public type SignedInteger9 int;

@constraint:Int {maxDigits: 4}
public type SignedInteger4 int;

@constraint:Int {minValue: 0, maxDigits: 4}
public type UnsignedInteger4 int;

@constraint:String {maxLength: 80}
public type AlphaNumeric80 string;

@constraint:String {maxLength: 10}
public type AlphaNumeric10 string;

@constraint:Int {minValue: 0, maxDigits: 2}
public type UnsignedInteger2 int;

@constraint:Int {minValue: 0, maxDigits: 9}
public type UnsignedInteger9 int;

@constraint:String {maxLength: 5}
public type AlphaNumeric5 string;

@constraint:String {maxLength: 40}
public type AlphaNumeric40 string;

@constraint:String {maxLength: 50}
public type AlphaNumeric50 string;

@constraint:String {maxLength: 20}
public type AlphaNumeric20 string;

@constraint:String {maxLength: 12}
public type AlphaNumeric12 string;

@constraint:String {maxLength: 26}
public type AlphaNumeric26 string;

@constraint:String {maxLength: 9}
public type AlphaNumeric9 string;

@constraint:String {maxLength: 2}
public type AlphaNumeric2 string;

@constraint:String {maxLength: 30}
public type AlphaNumeric30 string;

public type DFHCOMMAREA record {
    record {AlphaNumeric3 MI\-HDR\-VERSION?; AlphaNumeric35 MI\-HDR\-MSGID?; AlphaNumeric35 MI\-HDR\-LOGGINGID?; AlphaNumeric8 MI\-HDR\-SDR\-APPL?; AlphaNumeric8 MI\-HDR\-SDR\-USERID?; AlphaNumeric8 MI\-HDR\-SDR\-REGION?; AlphaNumeric11 MI\-HDR\-SDR\-PROCESS?; AlphaNumeric11 MI\-HDR\-SDR\-SVRNAME?; AlphaNumeric23 MI\-HDR\-PRF\-RECEIVED?; AlphaNumeric23 MI\-HDR\-PRF\-SENT?; AlphaNumeric48 MI\-HDR\-CORRELID?; AlphaNumeric14 MI\-HDR\-OPERATION?; AlphaNumeric1 MI\-HDR\-REPLY?; record {AlphaNumeric48 MI\-HDR\-REPLYQMGR?; AlphaNumeric48 MI\-HDR\-REPLYQUEUE?;}[2] MI\-HDR\-REPLYSTACK?; AlphaNumeric92 FILLER?;} BROKER\-MESSAGE\-AREA?;
    record {AlphaNumeric8 PROCESS\-REQUEST\-DATE?; AlphaNumeric6 PROCESS\-REQUEST\-TIME?; AlphaNumeric8 USER\-IDENTIFY?; SignedInteger9 CICS\-TASK\-NUMBER?; SignedInteger4 PROCESS\-REQUEST\-SEQUENCE\-NUMB?; SignedInteger4 PROCESS\-REQUEST\-MSG\-SQNC\-NUMB?; UnsignedInteger4 PROCESS\-REQUEST\-RETURN\-CODE?; record {UnsignedInteger4 ERROR\-CODE?; AlphaNumeric80 ERROR\-CONTEXT\-TEXT?;}[8] ERROR\-DETAILS?;} PROCESS\-REQUEST\-CONTROL\-AREA?;
    record {AlphaNumeric10 SRV\-REQ\-TYP?; AlphaNumeric3 SYS\-CD?; AlphaNumeric10 POL\-NO?;} INPUT\-HDR\-DATA?;
    record {UnsignedInteger2 CLIENT\-DETAIL\-COUNTER?; record {UnsignedInteger9 BUSINESS\-IDENTITY\-IDENTIFY?; AlphaNumeric1 BUSINESS\-IDENTITY\-TYPE?; UnsignedInteger2 CLIENT\-ROLE\-CLASSIFACTION?; AlphaNumeric5 CLIENT\-ROLE\-TYPE?; AlphaNumeric1 PRI\-LIFE\-INSURED\-IND?; AlphaNumeric1 PRI\-OWNER\-IND?; AlphaNumeric8 POLICY\-OWNER\-TITLE?; AlphaNumeric40 POLICY\-OWNER\-SURNAME?; AlphaNumeric40 POLICY\-OWNER\-FIRST\-GIVEN\-NAME?; AlphaNumeric40 POLICY\-OWNER\-SECOND\-GIVEN\-NAME?; AlphaNumeric8 POLICY\-OWNER\-DOB?; AlphaNumeric1 POLICY\-OWNER\-SEX?; AlphaNumeric8 LIFE\-INSURED\-TITLE?; AlphaNumeric40 LIFE\-INSURED\-SURNAME?; AlphaNumeric40 LIFE\-INSURED\-FIRST\-GIVEN\-NAME?; AlphaNumeric40 LIFE\-INSURED\-SECOND\-GIVEN\-NAME?; AlphaNumeric8 LIFE\-INSURED\-DOB?; AlphaNumeric1 LIFE\-INSURED\-SEX?; AlphaNumeric50 ORGANISATION\-NAME?; AlphaNumeric50 EMAIL\-ADDRESS?; AlphaNumeric20 CONTACT\-TELEPHONE\-NUM?; AlphaNumeric20 HOME\-TELEPHONE\-NUM?; AlphaNumeric12 MOBILE\-NUM?; AlphaNumeric20 WORK\-TELEPHONE\-NUM?; AlphaNumeric20 FAX\-TELEPHONE\-NUM?; AlphaNumeric1 TFN\-HELD\-IND?; AlphaNumeric1 DECEASED\-IND?; AlphaNumeric8 DECEASED\-DT?; UnsignedInteger2 CLIENT\-ADDRESS\-COUNTER?; record {UnsignedInteger9 ADDRESS\-IDENTIFY?; AlphaNumeric1 ADDRESS\-TYPE?; AlphaNumeric26 ADDRESSEE?; AlphaNumeric26 ADDRESS\-LINE\-1?; AlphaNumeric26 ADDRESS\-LINE\-2?; AlphaNumeric26 ADDRESS\-LINE\-3?; AlphaNumeric26 SUBURB?; AlphaNumeric26 CITY\-NAME?; AlphaNumeric20 STATE?; AlphaNumeric9 POST\-CD?; AlphaNumeric2 COUNTRY\-CD?; AlphaNumeric30 COUNTRY\-NAME?; AlphaNumeric1 UNFORMATTED\-ADDRESS\-IND?; AlphaNumeric1 OVERSEA\-ADDRESS\-IND?; AlphaNumeric1 WRONG\-ADDRESS\-IND?; AlphaNumeric8 WRONG\-ADDRESS\-EFF\-FROM\-DATE?;}[4] ADDRESS\-DETAILS?;}[20] CLIENT\-ROLE?;} OUTPUT\-HDR\-DATA?;
};

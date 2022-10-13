// Copyright (c) 2022 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
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

import ballerina/sql;

# Defines the generic error type for the `persist` module.
public type Error distinct error;

# Represents an error that occurs when an attempt is made to manipulate a field, which does not exist in an entity.
public type FieldDoesNotExistError distinct Error;

# Represents an error that occurs when an attempt is made to insert a value into a record, which cannot be directly
# inserted into.
public type InvalidInsertionError distinct Error;

# Represents an error that occurs when an attempt is to perform an operation, which violates a foreign key constraint.
public type ForeignKeyConstraintViolationError distinct Error;

# Represents an error that occurs when an attempt is made to retrieve a record using a key, which does not exist.
public type InvalidKeyError distinct Error;

# This error is thrown when user invokes an unsupported operation.
public type UnsupportedOperationError distinct Error;

# Represents an error that occurs when an SQL query execution fails. 
public type SQLError distinct (Error & sql:Error);

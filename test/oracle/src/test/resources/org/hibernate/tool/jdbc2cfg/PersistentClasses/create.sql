############################################################################
# Hibernate Tools, Tooling for your Hibernate Projects                     #
#                                                                          #
# Copyright 2004-2025 Red Hat, Inc.                                        #
#                                                                          #
# Licensed under the Apache License, Version 2.0 (the "License");          #
# you may not use this file except in compliance with the License.         #
# You may obtain a copy of the License at                                  #
#                                                                          #
#     http://www.apache.org/licenses/LICENSE-2.0                           #
#                                                                          #
# Unless required by applicable law or agreed to in writing, software      #
# distributed under the License is distributed on an "AS IS" basis,        #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. #
# See the License for the specific language governing permissions and      #
# limitations under the License.                                           #
############################################################################
CREATE TABLE ORDERS (ID NUMBER(8) NOT NULL, NAME VARCHAR(20), PRIMARY KEY (ID))
CREATE TABLE ITEM  (CHILD_ID NUMBER(8) NOT NULL, NAME VARCHAR(50), ORDER_ID NUMBER, RELATED_ORDER_ID NUMBER, PRIMARY KEY (CHILD_ID), FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ID), FOREIGN KEY (RELATED_ORDER_ID) REFERENCES ORDERS(ID) )

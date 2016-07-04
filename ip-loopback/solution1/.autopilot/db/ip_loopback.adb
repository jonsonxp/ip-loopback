<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="11">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>ip_loopback</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>in_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>in.V.V</originalName>
              <rtlName/>
              <coreName>FSL</coreName>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>out_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out.V.V</originalName>
              <rtlName/>
              <coreName>FSL</coreName>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>11</id>
              <name>tmp_V</name>
              <fileName>./src/main.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>16</lineNumber>
              <contextFuncName>ip_loopback</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/home/cho/hCODE/IPs/ip-loopback</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>./src/main.cpp</first>
                        <second>ip_loopback</second>
                      </first>
                      <second>16</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>tmp.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>16</item>
            <item>17</item>
          </oprand_edges>
          <opcode>read</opcode>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>12</id>
              <name/>
              <fileName>./src/main.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>17</lineNumber>
              <contextFuncName>ip_loopback</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/cho/hCODE/IPs/ip-loopback</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/main.cpp</first>
                        <second>ip_loopback</second>
                      </first>
                      <second>17</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>3</count>
            <item_version>0</item_version>
            <item>19</item>
            <item>20</item>
            <item>21</item>
          </oprand_edges>
          <opcode>write</opcode>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>13</id>
              <name/>
              <fileName>./src/main.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>18</lineNumber>
              <contextFuncName>ip_loopback</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/cho/hCODE/IPs/ip-loopback</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/main.cpp</first>
                        <second>ip_loopback</second>
                      </first>
                      <second>18</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </consts>
      <blocks class_id="16" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="17" tracking_level="1" version="0" object_id="_6">
          <Obj>
            <type>3</type>
            <id>14</id>
            <name>ip_loopback</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>3</count>
            <item_version>0</item_version>
            <item>11</item>
            <item>12</item>
            <item>13</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="18" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="19" tracking_level="1" version="0" object_id="_7">
          <id>17</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>11</sink_obj>
        </item>
        <item class_id_reference="19" object_id="_8">
          <id>20</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="19" object_id="_9">
          <id>21</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>12</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="20" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="21" tracking_level="1" version="0" object_id="_10">
        <mId>1</mId>
        <mTag>ip_loopback</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>14</item>
        </basic_blocks>
        <mII>1</mII>
        <mDepth>1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>0</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="23" tracking_level="1" version="0" object_id="_11">
      <states class_id="24" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="25" tracking_level="1" version="0" object_id="_12">
          <id>1</id>
          <operations class_id="26" tracking_level="0" version="0">
            <count>11</count>
            <item_version>0</item_version>
            <item class_id="27" tracking_level="1" version="0" object_id="_13">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_14">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_15">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_16">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_17">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_18">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_19">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_20">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_21">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_22">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_23">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="28" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </transitions>
    </fsm>
    <res class_id="29" tracking_level="1" version="0" object_id="_24">
      <dp_component_resource class_id="30" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="31" tracking_level="0" version="0">
          <first>ap_sig_bdd_29 ( or ) </first>
          <second class_id="32" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="33" tracking_level="0" version="0">
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_CS_fsm</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_component_map class_id="34" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="35" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="36" tracking_level="0" version="0">
        <first>11</first>
        <second class_id="37" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>12</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>13</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="38" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="39" tracking_level="0" version="0">
        <first>14</first>
        <second class_id="40" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="41" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="42" tracking_level="1" version="0" object_id="_25">
        <region_name>ip_loopback</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>14</item>
        </basic_blocks>
        <nodes>
          <count>11</count>
          <item_version>0</item_version>
          <item>3</item>
          <item>4</item>
          <item>5</item>
          <item>6</item>
          <item>7</item>
          <item>8</item>
          <item>9</item>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>2</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
      <item class_id_reference="42" object_id="_26">
        <region_name>ip_loopback</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>14</item>
        </basic_blocks>
        <nodes>
          <count>0</count>
          <item_version>0</item_version>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>8</region_type>
        <interval>1</interval>
        <pipe_depth>1</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="43" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="44" tracking_level="0" version="0">
        <first>34</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>40</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>12</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="47" tracking_level="0" version="0">
        <first>stg_11_write_fu_40</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>12</item>
        </second>
      </item>
      <item>
        <first>tmp_V_read_fu_34</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="48" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="49" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="50" tracking_level="0" version="0">
        <first>in_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>read</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>11</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>write</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="51" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>1</first>
        <second>FSL</second>
      </item>
      <item>
        <first>2</first>
        <second>FSL</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>

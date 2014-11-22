<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:022d951c-cb40-46f8-a28d-daedc51feb46(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="db75545d-4d64-42db-a770-364af8b0316e(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="27" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="6743260208045728251" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch1-Very_Simple_Alarm" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109978981615" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Off" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981626" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981628" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="LOW" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="5961443109978981648" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6073817517002559751" resolveInfo="On" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="5961443109978981650" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="HIGH" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="6743260208045733175" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6073817517002559751" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="On" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6073817517002562105" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6073817517002596988" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6073817517002596990" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109978981615" resolveInfo="Off" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6073817517002596992" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="LOW" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="6743260208045733175" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="6743260208045733175" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="6743260208045733180" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LED" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="6743260208045733196" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="9" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="5961443109979005090" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch_Ext1-Handling_Analogical_Bricks" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6073817517002598218" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6073817517002598224" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6168938315457021831" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6073817517002598226" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109979005259" resolveInfo="FireInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6073817517002598228" nodeInfo="ng">
          <property name="operator" nameId="e532.7566270540795098876" value="&gt;=" />
          <property name="value" nameId="e532.7566270540795075230" value="52" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="5961443109979181421" resolveInfo="TemperatureSensor" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109979005259" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6168938315457612754" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6168938315457021831" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6168938315457612758" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6073817517002598218" resolveInfo="FireNotInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6168938315457612760" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="52" />
          <property name="operator" nameId="e532.7566270540795098876" value="&lt;" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="5961443109979181421" resolveInfo="TemperatureSensor" />
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="5961443109979181421" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="TemperatureSensor" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="6168938315457021831" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="11" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="1289569606770260318" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch_Ext2-Supporting_the_LCD_screen" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6073817517002663882" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponentLCDTemperature" typeId="e532.4954859863373206605" id="6073817517002663890" nodeInfo="ng">
        <property name="sentence" nameId="e532.4954859863373262018" value="No fire" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="1289569606770296209" resolveInfo="LCD" />
        <link role="componentSensorTemperature" roleId="e532.4954859863373569708" targetNodeId="4954859863373669864" resolveInfo="TemperatureSensor" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6073817517002663892" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="4954859863373669868" resolveInfo="FireInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6073817517002663894" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="52" />
          <property name="operator" nameId="e532.7566270540795098876" value="&gt;=" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="4954859863373669864" resolveInfo="TemperatureSensor" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="4954859863373669868" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponentLCDTemperature" typeId="e532.4954859863373206605" id="4954859863373669872" nodeInfo="ng">
        <property name="sentence" nameId="e532.4954859863373262018" value="Fire is inside" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="1289569606770296209" resolveInfo="LCD" />
        <link role="componentSensorTemperature" roleId="e532.4954859863373569708" targetNodeId="4954859863373669864" resolveInfo="TemperatureSensor" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="4954859863373669929" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6073817517002663882" resolveInfo="FireNotInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="4954859863373669938" nodeInfo="ng">
          <property name="operator" nameId="e532.7566270540795098876" value="&lt;" />
          <property name="value" nameId="e532.7566270540795075230" value="52" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="4954859863373669864" resolveInfo="TemperatureSensor" />
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.LCD" typeId="e532.5961443109978642146" id="1289569606770296209" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LCD" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
      <property name="pinLCD" nameId="e532.6966832599821030598" value="12, 11, 5, 4, 3, 2" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="4954859863373669864" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="TemperatureSensor" />
      <property name="pin" nameId="e532.1275236291302728373" value="11" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="7566270540795072619" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch2-Dual_Check_Alarm" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="7566270540795074898" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Off" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7566270540795074902" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="7566270540795072665" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="7566270540795075029" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6073817517002597212" resolveInfo="On" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="7566270540795333994" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="HIGH" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="7566270540795072651" resolveInfo="Button1" />
          <node role="test" roleId="e532.7566270540795098879" type="e532.AndTest" typeId="e532.6743260208045398863" id="7566270540795376797" nodeInfo="ng">
            <property name="value" nameId="e532.7566270540795075230" value="HIGH" />
            <link role="component" roleId="e532.7566270540795122589" targetNodeId="7566270540795072657" resolveInfo="Button2" />
          </node>
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6073817517002597212" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="On" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6073817517002597221" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="7566270540795072665" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6073817517002597223" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="7566270540795074898" resolveInfo="Off" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6073817517002597243" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="LOW" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="7566270540795072651" resolveInfo="Button1" />
          <node role="test" roleId="e532.7566270540795098879" type="e532.OrTest" typeId="e532.7566270540795180411" id="6073817517002667698" nodeInfo="ng">
            <property name="value" nameId="e532.7566270540795075230" value="LOW" />
            <link role="component" roleId="e532.7566270540795122589" targetNodeId="7566270540795072657" resolveInfo="Button2" />
          </node>
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="7566270540795072651" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button1" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="7566270540795072657" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button2" />
      <property name="pin" nameId="e532.1275236291302728373" value="10" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="7566270540795072665" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="476062208239968535" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch3-State_Based_Alarm" />
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="476062208239968776" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="476062208239968789" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="476062208239968781" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Off" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="476062208239971019" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="476062208239968789" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="476062208239971021" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="7122776117853647031" resolveInfo="On" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="476062208239971236" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="HIGH" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="476062208239968776" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="7122776117853647031" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="On" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7122776117853647037" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="476062208239968789" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="7122776117853647039" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="476062208239968781" resolveInfo="Off" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="7122776117853647041" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="LOW" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="476062208239968776" resolveInfo="Button" />
        </node>
      </node>
      <node role="usePreviousState" roleId="e532.7122776117853480333" type="e532.UsePreviousState" typeId="e532.7122776117853128669" id="7122776117853647124" nodeInfo="ng">
        <property name="value" nameId="e532.7122776117853184042" value="LOW" />
        <link role="component" roleId="e532.7122776117853184040" targetNodeId="476062208239968776" resolveInfo="Button" />
      </node>
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="7122776117853649434" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch4-Multi_State_Alarm" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="7122776117853649516" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Off" />
      <node role="usePreviousState" roleId="e532.7122776117853480333" type="e532.UsePreviousState" typeId="e532.7122776117853128669" id="7122776117853649520" nodeInfo="ng">
        <property name="value" nameId="e532.7122776117853184042" value="HIGH" />
        <link role="component" roleId="e532.7122776117853184040" targetNodeId="7122776117853649498" resolveInfo="Button" />
      </node>
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7122776117853649523" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="7122776117853649503" resolveInfo="Buzzer" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7122776117853649525" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="7122776117853649511" resolveInfo="LED" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="7122776117853649527" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="7122776117853649529" resolveInfo="On" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="7122776117853649608" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="HIGH" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="7122776117853649498" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="7122776117853649529" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="On" />
      <node role="usePreviousState" roleId="e532.7122776117853480333" type="e532.UsePreviousState" typeId="e532.7122776117853128669" id="7122776117853649612" nodeInfo="ng">
        <property name="value" nameId="e532.7122776117853184042" value="LOW" />
        <link role="component" roleId="e532.7122776117853184040" targetNodeId="7122776117853649498" resolveInfo="Button" />
      </node>
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7122776117853649615" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="7122776117853649503" resolveInfo="Buzzer" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="7122776117853649637" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="LOW" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="7122776117853649511" resolveInfo="LED" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="7122776117853649639" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="7122776117853649516" resolveInfo="Off" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="7122776117853649641" nodeInfo="ng">
          <property name="value" nameId="e532.7566270540795075230" value="LOW" />
          <link role="component" roleId="e532.7566270540795122589" targetNodeId="7122776117853649498" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="7122776117853649498" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="7122776117853649503" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="11" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="7122776117853649511" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LED" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
</model>


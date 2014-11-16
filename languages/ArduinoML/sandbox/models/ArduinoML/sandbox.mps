<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:022d951c-cb40-46f8-a28d-daedc51feb46(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="db75545d-4d64-42db-a770-364af8b0316e(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="19" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="6743260208045728251" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch1-Very_Simple_Alarm" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109978981613" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="ON" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981618" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981620" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="5961443109978981622" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109978981615" resolveInfo="OFF" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="5961443109978981624" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="LOW" />
          <property name="operator" nameId="e532.6743260208045841836" value="==" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733175" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109978981615" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="OFF" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981626" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="and" roleId="e532.5961443109978821675" type="e532.AndComponent" typeId="e532.5961443109978821638" id="5961443109978981628" nodeInfo="ng">
          <property name="value" nameId="e532.5961443109978887479" value="LOW" />
          <link role="component" roleId="e532.5961443109978837025" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="5961443109978981648" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109978981613" resolveInfo="ON" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="5961443109978981650" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="HIGH" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733175" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="6743260208045733175" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="6743260208045733180" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LED" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="6743260208045733196" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Buzzer" />
      <property name="pin" nameId="e532.1275236291302728373" value="9" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="5961443109979005090" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch_Ext1-Handling_Analogical_Bricks" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109979005259" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6168938315457612754" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="HIGH" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6168938315457021831" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6168938315457612758" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109979005261" resolveInfo="FireNotInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6168938315457612760" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="52" />
          <property name="operator" nameId="e532.6743260208045841836" value="&lt;" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="5961443109979181421" resolveInfo="TemperatureSensor" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="5961443109979005261" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInside" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.AndComponent" typeId="e532.5961443109978821638" id="6168938315457612756" nodeInfo="ng">
        <property name="value" nameId="e532.5961443109978887479" value="LOW" />
        <link role="component" roleId="e532.5961443109978837025" targetNodeId="6168938315457021831" resolveInfo="Buzzer" />
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6168938315457612762" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="5961443109979005259" resolveInfo="FireInside" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.AndTest" typeId="e532.6743260208045398863" id="6168938315457612764" nodeInfo="ng">
          <property name="operator" nameId="e532.6743260208045841836" value="&gt;=" />
          <property name="value" nameId="e532.6743260208045452957" value="52" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="5961443109979181421" resolveInfo="TemperatureSensor" />
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
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="1289569606770260318" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Skecth_Ext2" />
    <node role="components" roleId="e532.1275236291302734514" type="e532.LCD" typeId="e532.5961443109978642146" id="1289569606770296209" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LCD" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
      <property name="signal" nameId="e532.6743260208045728173" value="digital" />
    </node>
  </root>
</model>


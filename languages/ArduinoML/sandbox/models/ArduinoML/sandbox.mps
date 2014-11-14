<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:022d951c-cb40-46f8-a28d-daedc51feb46(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="db75545d-4d64-42db-a770-364af8b0316e(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="15" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="6743260208045728251" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Sketch1-Very_Simple_Alarm" />
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6743260208045785963" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="ON" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045785965" nodeInfo="ng">
        <property name="value" nameId="e532.6743260208045452957" value="HIGH" />
        <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="ands" roleId="e532.6743260208045728021" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045788191" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="HIGH" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6743260208045875515" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6743260208045788200" resolveInfo="OFF" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045875517" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="LOW" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733175" resolveInfo="Button" />
        </node>
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="6743260208045788200" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="OFF" />
      <node role="andComponents" roleId="e532.6743260208045728114" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045788205" nodeInfo="ng">
        <property name="value" nameId="e532.6743260208045452957" value="LOW" />
        <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733180" resolveInfo="LED" />
        <node role="ands" roleId="e532.6743260208045728021" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045788207" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="LOW" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733196" resolveInfo="Buzzer" />
        </node>
      </node>
      <node role="action" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="6743260208045875519" nodeInfo="ng">
        <link role="nextState" roleId="e532.6743260208045728053" targetNodeId="6743260208045785963" resolveInfo="ON" />
        <node role="andTests" roleId="e532.6743260208045728055" type="e532.And" typeId="e532.6743260208045398863" id="6743260208045875521" nodeInfo="ng">
          <property name="value" nameId="e532.6743260208045452957" value="HIGH" />
          <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733175" resolveInfo="Button" />
          <node role="ands" roleId="e532.6743260208045728021" type="e532.And" typeId="e532.6743260208045398863" id="5961443109978689202" nodeInfo="ng">
            <property name="operator" nameId="e532.6743260208045841836" value="&lt;=" />
            <property name="value" nameId="e532.6743260208045452957" value="TEST" />
            <link role="component" roleId="e532.6743260208045728023" targetNodeId="6743260208045733175" resolveInfo="Button" />
          </node>
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
</model>


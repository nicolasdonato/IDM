<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:022d951c-cb40-46f8-a28d-daedc51feb46(ArduinoML.sandbox)">
  <persistence version="8" />
  <language namespace="db75545d-4d64-42db-a770-364af8b0316e(ArduinoML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="14" implicit="yes" />
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="1275236291302744135" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="TurnsOnLight" />
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="1275236291302750484" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Button" />
      <property name="pin" nameId="e532.1275236291302728373" value="11" />
      <link role="signal" roleId="e532.1275236291302756917" targetNodeId="2574346429266233598" resolveInfo="SignalToTurnsLightOn" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="1275236291302750490" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LED" />
      <property name="pin" nameId="e532.1275236291302728373" value="8" />
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="1275236291302772988" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="InitialState_LEDIsOFF" />
      <property name="value" nameId="e532.2574346429266041758" value="LOW" />
      <node role="actions" roleId="e532.1275236291302763265" type="e532.Action" typeId="e532.1275236291302713201" id="2574346429266252528" nodeInfo="ng">
        <property name="value" nameId="e532.1275236291302713202" value="HIGH" />
        <link role="signal" roleId="e532.2574346429266233660" targetNodeId="2574346429266233598" resolveInfo="SignalToTurnsLightOn" />
      </node>
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="1275236291302773002" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FinalState_LEDIsON" />
      <property name="value" nameId="e532.2574346429266041758" value="HIGH" />
    </node>
    <node role="transitions" roleId="e532.1275236291302734539" type="e532.Transition" typeId="e532.1275236291302714847" id="1275236291302773000" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Transition_LEDTurnsON" />
      <property name="value" nameId="e532.7931582971432536080" value="HIGH" />
      <property name="operator" nameId="e532.7931582971432548192" value="==" />
      <link role="machineStates" roleId="e532.1275236291302734563" targetNodeId="1275236291302773002" resolveInfo="FinalState_LEDIsON" />
      <link role="component" roleId="e532.7931582971432503393" targetNodeId="1275236291302750490" resolveInfo="LED" />
    </node>
    <node role="transitions" roleId="e532.1275236291302734539" type="e532.Transition" typeId="e532.1275236291302714847" id="2467399003607334247" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="Transition_LEDTurnsOff" />
      <property name="operator" nameId="e532.7931582971432548192" value="==" />
      <property name="value" nameId="e532.7931582971432536080" value="LOW" />
      <link role="machineStates" roleId="e532.1275236291302734563" targetNodeId="1275236291302772988" resolveInfo="InitialState_LEDIsOFF" />
      <link role="component" roleId="e532.7931582971432503393" targetNodeId="1275236291302750490" resolveInfo="LED" />
    </node>
    <node role="signaux" roleId="e532.2574346429266211313" type="e532.Signal" typeId="e532.1275236291302714858" id="2574346429266233598" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="SignalToTurnsLightOn" />
      <property name="type" nameId="e532.1275236291302714889" value="analogic" />
      <link role="transition" roleId="e532.1275236291302744174" targetNodeId="1275236291302773000" resolveInfo="Transition_LEDTurnsON" />
      <link role="component" roleId="e532.1275236291302769725" targetNodeId="1275236291302750484" resolveInfo="Button" />
    </node>
    <node role="signaux" roleId="e532.2574346429266211313" type="e532.Signal" typeId="e532.1275236291302714858" id="2467399003607334244" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="SignalToTurnsLightOff" />
      <link role="component" roleId="e532.1275236291302769725" targetNodeId="1275236291302750484" resolveInfo="Button" />
      <link role="transition" roleId="e532.1275236291302744174" targetNodeId="2467399003607334247" resolveInfo="Transition_LEDTurnsOff" />
    </node>
  </root>
  <root type="e532.Sketch" typeId="e532.1275236291302713123" id="2467399003607361162" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Handling_Analogical_Bricks " />
    <node role="signaux" roleId="e532.2574346429266211313" type="e532.Signal" typeId="e532.1275236291302714858" id="2467399003607361265" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInsideSignal" />
      <property name="type" nameId="e532.1275236291302714889" value="digital" />
      <link role="transition" roleId="e532.1275236291302744174" targetNodeId="2467399003607361222" resolveInfo="FireInside" />
      <link role="component" roleId="e532.1275236291302769725" targetNodeId="2467399003607361176" resolveInfo="SensorTemperature" />
    </node>
    <node role="signaux" roleId="e532.2574346429266211313" type="e532.Signal" typeId="e532.1275236291302714858" id="2467399003607361267" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInsideSignal" />
      <property name="type" nameId="e532.1275236291302714889" value="digital" />
      <link role="transition" roleId="e532.1275236291302744174" targetNodeId="2467399003607361224" resolveInfo="FireNotInside" />
      <link role="component" roleId="e532.1275236291302769725" targetNodeId="2467399003607361176" resolveInfo="SensorTemperature" />
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="2467399003607361174" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInsideState" />
      <property name="value" nameId="e532.2574346429266041758" value="HIGH" />
    </node>
    <node role="machineStates" roleId="e532.1275236291302731468" type="e532.Machine_State" typeId="e532.1275236291302713118" id="2467399003607361245" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInsideState" />
      <property name="value" nameId="e532.2574346429266041758" value="LOW" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_IN" typeId="e532.1275236291302713134" id="2467399003607361176" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="SensorTemperature" />
      <property name="pin" nameId="e532.1275236291302728373" value="12" />
    </node>
    <node role="components" roleId="e532.1275236291302734514" type="e532.Component_OUT" typeId="e532.1275236291302713193" id="2467399003607361198" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="LED" />
      <property name="pin" nameId="e532.1275236291302728373" value="11" />
    </node>
    <node role="transitions" roleId="e532.1275236291302734539" type="e532.Transition" typeId="e532.1275236291302714847" id="2467399003607361222" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireInside" />
      <property name="operator" nameId="e532.7931582971432548192" value="&gt;=" />
      <property name="value" nameId="e532.7931582971432536080" value="29" />
      <link role="machineStates" roleId="e532.1275236291302734563" targetNodeId="2467399003607361174" resolveInfo="FireInsideState" />
      <link role="component" roleId="e532.7931582971432503393" targetNodeId="2467399003607361198" resolveInfo="LED" />
    </node>
    <node role="transitions" roleId="e532.1275236291302734539" type="e532.Transition" typeId="e532.1275236291302714847" id="2467399003607361224" nodeInfo="ng">
      <property name="name" nameId="e532.1275236291302507178" value="FireNotInside" />
      <property name="operator" nameId="e532.7931582971432548192" value="&lt;=" />
      <property name="value" nameId="e532.7931582971432536080" value="29" />
      <link role="machineStates" roleId="e532.1275236291302734563" targetNodeId="2467399003607361245" resolveInfo="FireNotInsideState" />
      <link role="component" roleId="e532.7931582971432503393" targetNodeId="2467399003607361198" resolveInfo="LED" />
    </node>
  </root>
</model>


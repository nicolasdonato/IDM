<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="14">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="14" implicit="yes" />
  <import index="4fqr" modelUID="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" version="-1" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302451753" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Named_Element" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1275236291302507178" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="name" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713117" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Component" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1275236291302728373" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="pin" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302756917" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="signal" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302714858" resolveInfo="Signal" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713118" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Machine_State" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302763265" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="actions" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713201" resolveInfo="Action" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2574346429266041758" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713123" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Sketch" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1275236291302731449" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7931582971432906936" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4fqr.4666195181811081429" resolveInfo="IMainClass" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302731468" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="machineStates" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713118" resolveInfo="Machine_State" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302734514" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="components" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713117" resolveInfo="Component" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302734539" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="transitions" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302714847" resolveInfo="Transition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2574346429266211313" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="signaux" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302714858" resolveInfo="Signal" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713134" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Component_IN" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302713117" resolveInfo="Component" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713193" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Component_OUT" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302713117" resolveInfo="Component" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713201" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Action" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1275236291302713202" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2574346429266233660" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="signal" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302714858" resolveInfo="Signal" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302714847" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Transition" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302734563" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="machineStates" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713118" resolveInfo="Machine_State" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7931582971432503393" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="component" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713193" resolveInfo="Component_OUT" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7931582971432536080" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7931582971432548192" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="operator" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302714858" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Signal" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1275236291302714889" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="type" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1275236291302714870" resolveInfo="SignalType" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302744174" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="transition" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302714847" resolveInfo="Transition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302769725" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="component" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713117" resolveInfo="Component" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1275236291302714870" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="SignalType" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1275236291302714871" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="analogic" />
      <property name="internalValue" nameId="tpce.1083923523171" value="analogic" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1275236291302714872" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="digital" />
      <property name="externalValue" nameId="tpce.1083923523172" value="digital" />
    </node>
  </root>
</model>


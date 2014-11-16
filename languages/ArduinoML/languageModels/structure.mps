<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="24">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="4fqr" modelUID="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="e532" modelUID="r:1827b833-20af-4e7b-ad14-6906ab759a70(ArduinoML.structure)" version="24" implicit="yes" />
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
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6743260208045728173" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="signal" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1275236291302714870" resolveInfo="SignalType" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1275236291302713118" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Machine_State" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302451753" resolveInfo="Named_Element" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6743260208045728114" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="andComponents" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5961443109978821638" resolveInfo="AndComponent" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1275236291302763265" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="action" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713201" resolveInfo="Action" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2574346429266041758" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="usePreviousValue" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
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
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6743260208045728053" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="nextState" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713118" resolveInfo="Machine_State" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6743260208045728055" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="andTests" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6743260208045398863" resolveInfo="AndTest" />
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
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6743260208045398863" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AndTest" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7566270540795075176" resolveInfo="Test" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="6743260208045728146" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Operator" />
    <property name="hasNoDefaultMember" nameId="tpce.1212080844762" value="false" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="5961443109978730636" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6743260208045728148" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="notEquals" />
      <property name="internalValue" nameId="tpce.1083923523171" value="&lt;&gt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6743260208045728151" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="lesserOrEquals" />
      <property name="internalValue" nameId="tpce.1083923523171" value="&lt;=" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6743260208045728155" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="greaterOrEquals" />
      <property name="internalValue" nameId="tpce.1083923523171" value="&gt;=" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6743260208045728160" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="greaterThan" />
      <property name="internalValue" nameId="tpce.1083923523171" value="&gt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="6743260208045728166" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="lesserThan" />
      <property name="internalValue" nameId="tpce.1083923523171" value="&lt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="5961443109978730636" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="equals" />
      <property name="internalValue" nameId="tpce.1083923523171" value="==" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5961443109978642146" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="LCD" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1275236291302713193" resolveInfo="Component_OUT" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5961443109978821638" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AndComponent" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5961443109978821675" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="and" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5961443109978821638" resolveInfo="AndComponent" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5961443109978837025" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="component" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713117" resolveInfo="Component" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5961443109978887479" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7566270540795075176" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Test" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7566270540795075230" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7566270540795098876" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="operator" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="6743260208045728146" resolveInfo="Operator" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7566270540795098879" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="test" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7566270540795075176" resolveInfo="Test" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7566270540795122589" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="component" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713117" resolveInfo="Component" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7566270540795180411" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="OrTest" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7566270540795075176" resolveInfo="Test" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4954859863373206605" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="AndComponentLCDTemperature" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5961443109978821638" resolveInfo="AndComponent" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4954859863373262018" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sentence" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4954859863373569708" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="componentSensorTemperature" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1275236291302713134" resolveInfo="Component_IN" />
    </node>
  </root>
</model>


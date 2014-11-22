package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.runtime.interpreted.StructureAspectInterpreted;

public class StructureAspectDescriptor implements jetbrains.mps.smodel.runtime.StructureAspectDescriptor {
  public StructureAspectDescriptor() {
  }

  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0b, conceptFqName)) {
      case 0:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Action").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("nextState").children(new String[]{"andTests"}, new boolean[]{false}).create();
      case 1:
        return new ConceptDescriptorBuilder("ArduinoML.structure.And_Component").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value").references("component").children(new String[]{"and"}, new boolean[]{false}).create();
      case 2:
        return new ConceptDescriptorBuilder("ArduinoML.structure.And_Component_LCD_Temperature").super_("ArduinoML.structure.And_Component").parents("ArduinoML.structure.And_Component").properties("sentence").references("componentSensorTemperature").create();
      case 3:
        return new ConceptDescriptorBuilder("ArduinoML.structure.And_Test").super_("ArduinoML.structure.Test").parents("ArduinoML.structure.Test").create();
      case 4:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Component").super_("ArduinoML.structure.Named_Element").parents("ArduinoML.structure.Named_Element").properties("pin", "signal").abstract_().create();
      case 5:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Component_IN").super_("ArduinoML.structure.Component").parents("ArduinoML.structure.Component").create();
      case 6:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Component_OUT").super_("ArduinoML.structure.Component").parents("ArduinoML.structure.Component").create();
      case 7:
        return new ConceptDescriptorBuilder("ArduinoML.structure.LCD").super_("ArduinoML.structure.Component_OUT").parents("ArduinoML.structure.Component_OUT").properties("pinLCD").create();
      case 8:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Machine_State").super_("ArduinoML.structure.Named_Element").parents("ArduinoML.structure.Named_Element").children(new String[]{"andComponents", "action", "usePreviousState"}, new boolean[]{false, false, false}).create();
      case 9:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Named_Element").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("name").abstract_().create();
      case 10:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Or_Test").super_("ArduinoML.structure.Test").parents("ArduinoML.structure.Test").create();
      case 11:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Sketch").super_("ArduinoML.structure.Named_Element").parents("ArduinoML.structure.Named_Element", "jetbrains.mps.lang.core.structure.INamedConcept", "jetbrains.mps.execution.util.structure.IMainClass").children(new String[]{"machineStates", "components"}, new boolean[]{true, true}).create();
      case 12:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Test").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value", "operator").references("component").children(new String[]{"test"}, new boolean[]{false}).abstract_().create();
      case 13:
        return new ConceptDescriptorBuilder("ArduinoML.structure.Use_Previous_State").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").properties("value", "operator").references("component").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"ArduinoML.structure.Action", "ArduinoML.structure.And_Component", "ArduinoML.structure.And_Component_LCD_Temperature", "ArduinoML.structure.And_Test", "ArduinoML.structure.Component", "ArduinoML.structure.Component_IN", "ArduinoML.structure.Component_OUT", "ArduinoML.structure.LCD", "ArduinoML.structure.Machine_State", "ArduinoML.structure.Named_Element", "ArduinoML.structure.Or_Test", "ArduinoML.structure.Sketch", "ArduinoML.structure.Test", "ArduinoML.structure.Use_Previous_State"};
}

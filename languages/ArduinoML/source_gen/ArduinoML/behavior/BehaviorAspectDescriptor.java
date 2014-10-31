package ArduinoML.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }

  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 3:
        return new Machine_State_BehaviorDescriptor();
      case 5:
        return new Sketch_BehaviorDescriptor();
      case 1:
        return new Component_IN_BehaviorDescriptor();
      case 2:
        return new Component_OUT_BehaviorDescriptor();
      case 0:
        return new Action_BehaviorDescriptor();
      case 6:
        return new Transition_BehaviorDescriptor();
      case 4:
        return new Signal_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }

  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"ArduinoML.structure.Action", "ArduinoML.structure.Component_IN", "ArduinoML.structure.Component_OUT", "ArduinoML.structure.Machine_State", "ArduinoML.structure.Signal", "ArduinoML.structure.Sketch", "ArduinoML.structure.Transition"};
}

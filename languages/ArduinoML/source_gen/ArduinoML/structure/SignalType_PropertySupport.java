package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class SignalType_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<SignalType> constants = ListSequence.fromList(SignalType.getConstants()).iterator();
    while (constants.hasNext()) {
      SignalType constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }

  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<SignalType> constants = ListSequence.fromList(SignalType.getConstants()).iterator();
    while (constants.hasNext()) {
      SignalType constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }

  public String fromInternalValue(String value) {
    SignalType constant = SignalType.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}

package ArduinoML.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.backports.LinkedList;

public enum Operator {
  notEquals("notEquals", "<>"),
  lesserOrEquals("lesserOrEquals", "<="),
  greaterOrEquals("greaterOrEquals", ">="),
  greaterThan("greaterThan", ">"),
  lesserThan("lesserThan", "<"),
  equals("equals", "==");

  private String myName;

  public String getName() {
    return this.myName;
  }

  public String getValueAsString() {
    return this.myValue;
  }

  public static List<Operator> getConstants() {
    List<Operator> list = ListSequence.fromList(new LinkedList<Operator>());
    ListSequence.fromList(list).addElement(Operator.notEquals);
    ListSequence.fromList(list).addElement(Operator.lesserOrEquals);
    ListSequence.fromList(list).addElement(Operator.greaterOrEquals);
    ListSequence.fromList(list).addElement(Operator.greaterThan);
    ListSequence.fromList(list).addElement(Operator.lesserThan);
    ListSequence.fromList(list).addElement(Operator.equals);
    return list;
  }

  public static Operator getDefault() {
    return Operator.equals;
  }

  public static Operator parseValue(String value) {
    if (value == null) {
      return Operator.getDefault();
    }
    if (value.equals(Operator.notEquals.getValueAsString())) {
      return Operator.notEquals;
    }
    if (value.equals(Operator.lesserOrEquals.getValueAsString())) {
      return Operator.lesserOrEquals;
    }
    if (value.equals(Operator.greaterOrEquals.getValueAsString())) {
      return Operator.greaterOrEquals;
    }
    if (value.equals(Operator.greaterThan.getValueAsString())) {
      return Operator.greaterThan;
    }
    if (value.equals(Operator.lesserThan.getValueAsString())) {
      return Operator.lesserThan;
    }
    if (value.equals(Operator.equals.getValueAsString())) {
      return Operator.equals;
    }
    return Operator.getDefault();
  }

  private String myValue;

  Operator(String name, String value) {
    this.myName = name;
    this.myValue = value;
  }

  public String getValue() {
    return this.myValue;
  }
}

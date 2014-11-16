package ArduinoML.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Sketch_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    for (SNode component : ListSequence.fromList(SLinkOperations.getTargets(node, "components", true))) {
      {
        SNode lcd = component;
        if (SNodeOperations.isInstanceOf(lcd, "ArduinoML.structure.LCD")) {
          this.appendNewLine();
          this.append("LiquidCrystal lcd(12, 11, 5, 4, 3, 2);");
          break;
        }
      }
    }
    this.appendNewLine();
    this.append("void setup() {");
    this.increaseDepth();
    for (SNode component : ListSequence.fromList(SLinkOperations.getTargets(node, "components", true))) {
      this.appendNewLine();
      {
        SNode lcd = component;
        if (SNodeOperations.isInstanceOf(lcd, "ArduinoML.structure.LCD")) {
          this.append("    ");
          this.append("lcd.begin(16, 2);");
          continue;
        }
      }
      this.append("    ");
      this.append("pinMode(");
      this.append(String.valueOf(SPropertyOperations.getInteger(component, "pin")));
      this.append(", ");
      {
        SNode component_IN = component;
        if (SNodeOperations.isInstanceOf(component_IN, "ArduinoML.structure.Component_IN")) {
          this.append("INPUT");
        }
      }
      {
        SNode component_OUT = component;
        if (SNodeOperations.isInstanceOf(component_OUT, "ArduinoML.structure.Component_OUT")) {
          this.append("OUTPUT");
        }
      }
      this.append(");");
    }
    this.decreaseDepth();
    this.appendNewLine();
    this.append("}");
    this.appendNewLine();
    this.appendNewLine();
    this.append("void loop() {");
    {
      this.increaseDepth();
      boolean isFirst = true;
      for (SNode state : ListSequence.fromList(SLinkOperations.getTargets(node, "machineStates", true))) {
        if (SLinkOperations.getTarget(SLinkOperations.getTarget(state, "action", true), "andTests", true) != null) {
          if (!(isFirst)) {
            this.append(" else ");
          } else {
            this.appendNewLine();
            this.append("    ");
            isFirst = false;
          }
          this.append("if (");
          appendNode(SLinkOperations.getTarget(SLinkOperations.getTarget(state, "action", true), "andTests", true));
          this.append(") {");
          appendNode(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(state, "action", true), "nextState", false), "andComponents", true));
          this.appendNewLine();
          this.append("    ");
          this.append("}");
        }
      }
      this.decreaseDepth();
    }
    this.appendNewLine();
    this.append("}");
  }

  public String getExtension(SNode node) {
    return "txt";
  }

  @Override
  public String getFilename(SNode node) {
    return SPropertyOperations.getString(node, "name");
  }
}

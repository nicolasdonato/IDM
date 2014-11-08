package ArduinoML.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Sketch_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    if (SLinkOperations.getTargets(node, "machineStates", true) != null) {
      for (SNode machineState : ListSequence.fromList(SLinkOperations.getTargets(node, "machineStates", true))) {
        this.appendNewLine();
        this.append("int ");
        this.append(SPropertyOperations.getString(machineState, "name"));
        this.append(" = ");
        this.append(SPropertyOperations.getString(machineState, "value"));
        this.append(";");
      }
    }

    this.appendNewLine();
    this.append("void setup() {");
    this.increaseDepth();
    for (SNode component : ListSequence.fromList(SLinkOperations.getTargets(node, "components", true))) {
      this.appendNewLine();
      this.append("pinMode(");
      this.append(String.valueOf(SPropertyOperations.getInteger(component, "pin")));
      this.append(",");
      if (component instanceof SNode) {
        this.append("INPUT");
      } else if (component instanceof SNode) {
        this.append("OUPUT");
      }
      this.append(");");
    }
    this.decreaseDepth();
    this.appendNewLine();
    this.append("}");

    this.appendNewLine();
    this.append("void loop() {");
    this.increaseDepth();
    for (SNode signal : ListSequence.fromList(SLinkOperations.getTargets(node, "signaux", true))) {
      this.appendNewLine();
      this.append("if (");
      if (SPropertyOperations.getString_def(signal, "type", "analogic") == "analogic") {
        this.append("analogicRead");
      } else if (SPropertyOperations.getString_def(signal, "type", "analogic") == "digital") {
        this.append("digitalRead");
      }
      this.append("(");
      this.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(signal, "component", false), "pin")));
      this.append(")");
      this.append(" ");
      this.append(SPropertyOperations.getString(SLinkOperations.getTarget(signal, "transition", false), "operator"));
      this.append(" ");
      this.append(SPropertyOperations.getString(SLinkOperations.getTarget(signal, "transition", false), "value"));
      this.append(") {");
      if (SPropertyOperations.getString_def(signal, "type", "analogic") == "analogic") {
        this.appendNewLine();
        this.append("analogicWrite");
      } else if (SPropertyOperations.getString_def(signal, "type", "analogic") == "digital") {
        this.appendNewLine();
        this.append("digitalWrite");
      }
      this.append("(");
      this.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(signal, "transition", false), "component", false), "pin")));
      this.append(", ");
      this.append(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(signal, "transition", false), "machineStates", false), "value"));
      this.append(");");
      this.appendNewLine();
      this.append("}");
    }
    this.decreaseDepth();
    this.appendNewLine();
    this.append("}");
  }

  public String getExtension(SNode node) {
    return ".txt";
  }

  @Override
  public String getFilename(SNode node) {
    return SPropertyOperations.getString(node, "name");
  }
}

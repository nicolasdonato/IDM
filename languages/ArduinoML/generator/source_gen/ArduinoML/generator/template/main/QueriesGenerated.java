package ArduinoML.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.generator.template.IfMacroContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;

  public static Object propertyMacro_GetPropertyValue_2574346429265604431(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_2574346429265615765(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(_context.getNode(), "pin"));
  }

  public static Object propertyMacro_GetPropertyValue_2574346429265676213(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(_context.getNode(), "pin"));
  }

  public static Object propertyMacro_GetPropertyValue_2574346429266053169(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_2574346429266037366(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "value");
  }

  public static Object propertyMacro_GetPropertyValue_2574346429266413568(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_2574346429266286101(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(_context.getNode(), "component", false), "pin"));
  }

  public static boolean ifMacro_Condition_2574346429266497575(final IfMacroContext _context) {
    return SPropertyOperations.getString_def(_context.getNode(), "type", "analogic").equalsIgnoreCase("analogic");
  }

  public static boolean ifMacro_Condition_2574346429266519667(final IfMacroContext _context) {
    return SPropertyOperations.getString_def(_context.getNode(), "type", "analogic").equalsIgnoreCase("digital");
  }

  public static Iterable<SNode> sourceNodesQuery_2574346429266067636(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "smodelAttribute", true);
  }

  public static Iterable<SNode> sourceNodesQuery_2574346429266008442(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "components", true);
  }

  public static Iterable<SNode> sourceNodesQuery_2574346429266012432(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "smodelAttribute", true);
  }

  public static Iterable<SNode> sourceNodesQuery_2574346429266389540(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "signaux", true);
  }

  public static Iterable<SNode> sourceNodesQuery_2574346429266390783(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "smodelAttribute", true);
  }
}

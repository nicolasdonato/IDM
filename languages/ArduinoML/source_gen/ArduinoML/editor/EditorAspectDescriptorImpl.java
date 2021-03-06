package ArduinoML.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;

public class EditorAspectDescriptorImpl implements EditorAspectDescriptor {


  public Collection<ConceptEditor> getEditors(ConceptDescriptor descriptor) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0b, descriptor.getConceptFqName())) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new Action_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new And_Component_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new And_Component_LCD_Temperature_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new And_Test_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new Component_IN_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new Component_OUT_Editor());
      case 6:
        return Collections.<ConceptEditor>singletonList(new LCD_Editor());
      case 7:
        return Collections.<ConceptEditor>singletonList(new Machine_State_Editor());
      case 8:
        return Collections.<ConceptEditor>singletonList(new Or_Test_Editor());
      case 9:
        return Collections.<ConceptEditor>singletonList(new Sketch_Editor());
      case 10:
        return Collections.<ConceptEditor>singletonList(new Use_Previous_State_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }



  private static String[] stringSwitchCases_xbvbvu_a0a0b = new String[]{"ArduinoML.structure.Action", "ArduinoML.structure.And_Component", "ArduinoML.structure.And_Component_LCD_Temperature", "ArduinoML.structure.And_Test", "ArduinoML.structure.Component_IN", "ArduinoML.structure.Component_OUT", "ArduinoML.structure.LCD", "ArduinoML.structure.Machine_State", "ArduinoML.structure.Or_Test", "ArduinoML.structure.Sketch", "ArduinoML.structure.Use_Previous_State"};
}

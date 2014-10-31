package ArduinoML.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class Component_OUT_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_cf15ps_a(editorContext, node);
  }

  private EditorCell createCollection_cf15ps_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_cf15ps_a");
    editorCell.setBig(true);
    editorCell.addEditorCell(this.createConstant_cf15ps_a0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_cf15ps_b0(editorContext, node));
    return editorCell;
  }

  private EditorCell createConstant_cf15ps_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Output");
    editorCell.setCellId("Constant_cf15ps_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private EditorCell createComponent_cf15ps_b0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "ArduinoML.editor.Components_Properties");
    return editorCell;
  }
}

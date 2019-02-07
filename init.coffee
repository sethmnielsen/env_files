# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor', 'user:up-10-lines', ->
  return unless editor = atom.workspace.getActiveTextEditor()

  editor.moveUp(10)

atom.commands.add 'atom-text-editor', 'user:down-10-lines', ->
  return unless editor = atom.workspace.getActiveTextEditor()

  editor.moveDown(10)

atom.commands.add 'atom-text-editor', 'user:new-paragraph', ->
  return unless editor = atom.workspace.getActiveTextEditor()

  editor.insertNewlineBelow()
  editor.insertNewlineBelow()
  editor.insertNewlineAbove()

atom.commands.add 'atom-text-editor', 'user:select-line-up', ->
  return unless editor = atom.workspace.getActiveTextEditor()

  col = editor.getCursorBufferPosition().column
  editor.moveToBeginningOfLine() if col != 0
  editor.selectUp()

atom.commands.add 'atom-text-editor', 'user:deselect', (e) ->
  return unless editor = atom.workspace.getActiveTextEditor()
  if editor
    for selection in editor.getSelections()
        if selection.isEmpty()
            e.abortKeyBinding()
        else
            selection.clear()

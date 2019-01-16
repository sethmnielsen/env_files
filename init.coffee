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

atom.commands.add "atom-text-editor", "custom:move-cursor-up", () ->
  return unless editor = atom.workspace.getActiveTextEditor() # If there's no active TextEditor, do nothing.
  editor.moveUp(1) # Move all cursors up one row.
atom.commands.add "atom-text-editor", "custom:move-cursor-down", () ->
  return unless editor = atom.workspace.getActiveTextEditor()
  editor.moveDown(1)
atom.commands.add "atom-text-editor", "custom:move-cursor-left", () ->
  return unless editor = atom.workspace.getActiveTextEditor()
  editor.moveLeft(1)
atom.commands.add "atom-text-editor", "custom:move-cursor-right", () ->
  return unless editor = atom.workspace.getActiveTextEditor()
  editor.moveRight(1)

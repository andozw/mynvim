local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("lspconfig fail")
  return
end

local status_ok, _ = pcall(require, "me.lsp.lsp-installer")
if not status_ok then
  print("me.lsp.lsp-installer fail")
  return
end

local status_ok, handlers = pcall(require, "me.lsp.handlers")
if not status_ok then
  print("me.lsp.handlers fail")
  return
end

handlers.setup()

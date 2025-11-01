local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Function to get current date and time
local function current_datetime()
  return os.date("%d.%m.%Y %H:%M:%S")
end

return {
  s("temp", {
    -- Multiline header
    t({"/**"}),
    t({" *    author:  ancient_Dream "}),
    t({"", " *    created: "}),
    f(current_datetime, {}),        -- Auto date and time
    t({"", " **/", ""}),            -- End of comment

    -- C++ template code
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "#define int long long",
      "",
      'template<typename T> void out(vector<T> a) {for (T t : a) {cout << t << " ";} cout << endl;}',  
      "",
      "void solve() {",
      "    ",
    }),
    i(1, "// your code here"),
    t({
      "",
      "}",
      "",
      "int32_t main() {",
      "    ios::sync_with_stdio(false);",
      "    cin.tie(nullptr);",
      "",
      "    int t = 1;",
      "    cin >> t;",
      "    while (t--) solve();",
      "",
      "    return 0;",
      "}",
    }),
  }),
}

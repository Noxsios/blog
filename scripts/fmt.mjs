#! /usr/bin/env zx

const POST_NAMING_REGEX = new RegExp(/\d{4}-\d{2}-\d{2}.md$/);

let posts = await glob(["content/**/*.md"]);
posts = posts.filter((md) => md.match(POST_NAMING_REGEX));

for (const md of posts) {
  // echo`post --> ${md.replace("content/", "")}`;
  const fp = path.join(process.cwd(), md);
  let txt = fs.readFileSync(fp, "utf8", (err, data) => {
    if (err) throw err;
    return data;
  });
  const has_tabs = txt.includes("\t");
  if (has_tabs) {
    echo`> Removing tabs from ${md.replace("content/", "")}`;
    txt = txt.replaceAll("\t", "  ");
  }
  fs.writeFileSync(fp, txt);
}

await $`zola check`;

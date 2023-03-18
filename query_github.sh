curl -G https://api.github.com/search/repositories \
    --data-urlencode "q=course in:name,description topic:R stars:>=10" \
    --data-urlencode sort=stars \
    --data-urlencode order=desc \
    | jq ".items[] | {name, description, language, watchers_count, stargazers_count, html_url}" \
    > bioinfo_courses.json 

# 
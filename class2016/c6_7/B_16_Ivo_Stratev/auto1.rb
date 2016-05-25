def exec_mqsql (sql, db = "")
    if db != "" then
        connent = File.read sql
        File.open sql, "w" do |file|
            file.write "use " + db + ";\n" +  connent
        end
     end
    `mysql -u ivo < #{sql} > ./out.txt`
end

def run_files
    sqls = ["creates", "inserts", "selects"]
    creates = File.read "./#{sqls[0]}.sql"
    use_db = creates.match /use \w+/im
    db = use_db[0].gsub /use /i, ""
    sqls.each do |sql|
        if sql == sqls[0]
            result = exec_mqsql "./#{sql}.sql"
        else
            result = exec_mqsql "./#{sql}.sql", db
        end
    end    
end

puts run_files()

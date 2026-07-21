import sys, time
sys.path.insert(0, r"E:\unity\SRPG_2026\.opencode\skills\unity-skills~\scripts")
import unity_skills

result = unity_skills.call_skill("script_get", scriptPath="Assets/Script/Core/Data/Data.cs")
print("Touch Data.cs:", result.get("success"))

time.sleep(5)

result = unity_skills.call_skill("debug_check_compilation")
print("Compilation status:", result)

logs = unity_skills.call_skill("console_get_logs", filter="Error")
print("Errors total:", logs.get("totalLogs", 0))
if logs.get("logs"):
    for log in logs["logs"][:10]:
        print(f'  [{log["type"]}] {log["message"][:300]}')

warns = unity_skills.call_skill("console_get_logs", filter="Warning")
print("Warnings total:", warns.get("totalLogs", 0))
if warns.get("logs"):
    for w in warns["logs"][:5]:
        print(f'  [{w["type"]}] {w["message"][:200]}')

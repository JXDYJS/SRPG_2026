import sys, time
sys.path.insert(0, r"E:\unity\SRPG_2026\.opencode\skills\unity-skills~\scripts")
import unity_skills

r = unity_skills.call_skill("asset_refresh")
print("Refresh:", r)

time.sleep(8)

r = unity_skills.call_skill("debug_check_compilation")
print("Compilation:", r)

logs = unity_skills.call_skill("console_get_logs")
print("Total logs:", logs.get("totalLogs"))
for log in (logs.get("logs") or [])[:30]:
    print(f"  [{log['type']}] {log['message'][:200]}")

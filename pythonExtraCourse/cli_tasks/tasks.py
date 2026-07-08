import json
import os

# This is our "Database" file
FILE_PATH = "tasks.json"

# A helper function to load our tasks from the file
def load_tasks():
    # If the file doesn't exist yet, return an empty list
    if not os.path.exists(FILE_PATH):
        return []
    
    # If it exists, open it, read it, and turn the JSON back into a Python list
    with open(FILE_PATH, 'r') as file:
        return json.load(file)

# A helper function to save our list back to the file
def save_tasks(tasks):
    with open(FILE_PATH, 'w') as file:
        json.dump(tasks, file, indent=4) # indent=4 makes it look pretty


# --- C: CREATE ---
def add_task(title):
    tasks = load_tasks()
    
    # We create a new task dictionary
    # We assign an ID based on the current length of the list + 1
    new_task = {
        "id": len(tasks) + 1,
        "title": title,
        "completed": False
    }
    
    tasks.append(new_task)
    save_tasks(tasks)
    print(f"✅ Added task: '{title}'")


# --- R: READ ---
def view_tasks():
    tasks = load_tasks()
    if not tasks:
        print("📭 No tasks found. You're all caught up!")
        return

    print("\n📝 Your Task List:")
    print("-" * 30)
    for task in tasks:
        # If true, show [X], else show [ ]
        status = "✅" if task["completed"] else "❌"
        print(f"[{task['id']}] {status} | {task['title']}")
    print("-" * 30)


# --- U: UPDATE ---
def complete_task(task_id):
    tasks = load_tasks()
    found = False
    
    for task in tasks:
        # Remember: input comes in as strings, so we convert task_id to int
        if task["id"] == int(task_id):
            task["completed"] = True
            found = True
            print(f"🎉 Task '{task['title']}' marked as complete!")
            break
            
    if not found:
        print(f"⚠️ Task with ID {task_id} not found.")
    else:
        save_tasks(tasks)


# --- D: DELETE ---
def delete_task(task_id):
    tasks = load_tasks()
    
    # Filter the list to keep only tasks that DO NOT match the ID we want to delete
    # This is a Python "list comprehension" - a clean way to filter lists.
    updated_tasks = [task for task in tasks if task["id"] != int(task_id)]
    
    # If the length changed, we know we deleted something
    if len(updated_tasks) < len(tasks):
        
        # Optional: Re-assign IDs so they stay sequential (1, 2, 3...)
        for index, task in enumerate(updated_tasks):
            task["id"] = index + 1
            
        save_tasks(updated_tasks)
        print(f"🗑️ Task {task_id} deleted successfully.")
    else:
        print(f"⚠️ Task with ID {task_id} not found.")

# --- MAIN PROGRAM LOOP ---
def main():
    while True:
        print("\n=== CLI Task Manager ===")
        print("1. View Tasks")
        print("2. Add Task")
        print("3. Mark Task as Complete")
        print("4. Delete Task")
        print("5. Exit")
        
        choice = input("\nEnter your choice (1-5): ")
        
        if choice == '1':
            view_tasks()
            
        elif choice == '2':
            title = input("Enter the task title: ")
            if title.strip(): # Ensure they didn't just hit Enter
                add_task(title)
            else:
                print("⚠️ Task title cannot be empty.")
                
        elif choice == '3':
            view_tasks() # Show them the list first so they know the IDs
            task_id = input("Enter the ID of the task to complete: ")
            # Basic validation to ensure they typed a number
            if task_id.isdigit():
                complete_task(task_id)
            else:
                print("⚠️ Please enter a valid number.")
                
        elif choice == '4':
            view_tasks()
            task_id = input("Enter the ID of the task to delete: ")
            if task_id.isdigit():
                delete_task(task_id)
            else:
                print("⚠️ Please enter a valid number.")
                
        elif choice == '5':
            print("👋 Exiting... Have a productive day!")
            break
            
        else:
            print("⚠️ Invalid choice. Please select 1-5.")

# This ensures the main() function only runs if we run this script directly
if __name__ == "__main__":
    main()
        
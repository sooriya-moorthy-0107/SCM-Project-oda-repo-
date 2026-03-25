from Flask import Flask, jsonify, request

app = Flask(__name__)

# Mock Data for Configuration Testing
students = [
    {"id": 1, "name": "Alice", "course": "Software Engineering", "grade": "A"},
    {"id": 2, "name": "Bob", "course": "Data Science", "grade": "B"}
]

@app.route('/api/students', methods=['GET'])
def get_students():
    return jsonify(students)

@app.route('/api/add_student', methods=['POST'])
def add_student():
    new_student = request.json
    students.append(new_student)
    return jsonify({"message": "Student added successfully"}), 201

if __name__ == '__main__':
    app.run(debug=True)
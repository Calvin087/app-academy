class Bootcamp
      def initialize(name, slogan, student_capacity)
          @name = name
          @slogan = slogan
          @student_capacity = student_capacity
          @teachers = []
          @students = []
          @grades = Hash.new { |hash, k| hash[k] = [] }
      end

      def name
        @name
      end

      def slogan
        @slogan
      end

      def teachers
        @teachers
      end

      def students
        @students
      end

      def hire(teacher)
        @teachers << teacher
      end

      def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else 
            false
        end
      end

      def enrolled?(e_student)
        @students.map(&:downcase).include?(e_student.downcase)
      end

      def student_to_teacher_ratio
        return (@students.length / @teachers.length).floor
      end

      def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
      end

      def num_grades(student)
        return @grades[student].length
      end

      def average_grade(student)
        if enrolled?(student) && @grades[student].length > 0
            @grades[student].sum / @grades[student].length
        end
      end

end

# let(:bootcamp) { Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6) }

# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name
    attr_accessor :roster

    def add_student(name, gradeyear)
        if @roster.keys.include?(gradeyear)
            @roster[gradeyear] << name
        else
            @roster[gradeyear] = [name]
        end
    end

    def grade(gradeyear)
        @roster[gradeyear]
    end

    def sort
        @roster.each do |gradeyear, students|
            students.sort!
        end
        @roster
    end
end
def threed(list)
    count3 = 0
    three_was_last = false
    list.each do |n|
        if n == 3
            if three_was_last == true
                return false
            end
            count3 += 1
            three_was_last = true
        else
            three_was_last = false
        end
    end
    if count3 == 3
        return true
    else
        return false
    end
end

#puts threed([4, 7, 5, 3, 5, 3, 5, 3])
#puts threed([3, 3, 4, 3])
#puts threed([3, 2, 3, 4])



def same_first_last(list)
    if list.size < 1
        return false
    end
    if list[0] == list[(list.size - 1)]
        return true
    else
        return false
    end
end

#puts same_first_last([1, 3, 4, 1])
#puts same_first_last([])
#puts same_first_last([1, 2, 1, 3])



def get_sandwich(str)
    bread_positions = []
    (str.size - 4).times do |i|
        if str[i..(i+4)] == "bread"
            bread_positions.push(i)
        end
    end
    if bread_positions.size >= 2
        position1 = bread_positions[0] + 5
        position2 = bread_positions[1] - 1
        return str[position1..position2]
    else
        return "Add more bread to your sandwich"
    end
end

#puts get_sandwich("breadjambread")
#puts get_sandwich("breadjambrea")




def shift_left(list)
    new_array = []
    last = 0
    list.size.times do |i|
        if i == 0
            last = list[i]
        else
            new_array.push(list[i])
        end
    end
    new_array.push(last)
end


#print shift_left([3, 7, 8])
#print shift_left([4, 5, 3])




def count_code(string)
    count = 0
    (string.size - 3).times do |i|
        if string[i..(i+1)] == "co" && string[(i + 3)] == "e"
            count += 1
        end
    end
    return count
end

#puts count_code("coeeeliurghconeletighcodeeilrgu")


def middle_way(list1, list2)
    middle1 = (list1.size/2)
    middle2 = (list2.size/2)
    new_list = []

    new_list.push(list1[middle1])
    new_list.push(list2[middle2])

    return new_list
end

#print middle_way([1, 3, 5, 7, 9], [1, 5, 7, 3, 4])






def either_2_4(list)
    run_2 = false
    run_4 = false
    previous = 0
    list.size.times do |i|
        if list[i] == previous
            if list[i] == 2
                run_2 = true
            end
        end
        if list[i] == previous
            if list[i] == 4
                run_4 = true
            end
        end
        previous = list[i]
    end

    if run_4 && !run_2
        return true
    elsif run_2 && !run_4
        return true
    else
        return false
    end
end


#puts either_2_4([2, 4, 4, 2 ,2])
#puts either_2_4([2, 2, 3])
#puts either_2_4([4, 3, 4, 2, 2, ])
#puts either_2_4([3, 4, 5])




def g_happy(list)
    gs = 0
    happy_gs = 0
    (list.size - 1).times do |i|
        if list[i] == "g"
            gs += 1
            if list[(i + 1)] == "g"
                happy_gs += 1
            end
        end 
    end
    if gs / 2.0 == happy_gs
        return true
    else
        return false
    end
end


#puts g_happy("giggly")
#puts g_happy("smile")
#puts g_happy("ggilsdfjggoa;sieggldk")


def max_span(list)
    max = 0
    temp = 0
    list.size.times do |n|
        list.size.times do|m|
            if list[n] == list[m]
                temp = m - n
                if temp > max
                    max = temp
                end
            end
        end
    end
    if max == 0
        max = 1
    end
    return max
end


#puts max_span([3, 4, 5, 3]) #3
#puts max_span([4, 6, 2, 6, 3]) #2
#puts max_span([7, 1, 7, 1, 2, 7, 1, 7]) #7



def can_balance(list)
    total = 0
    list.each do |n|
        total += n
    end
    total = total / 2
    total2 = 0
    list.each do |m|
        total2 += m
        if total2 == total
            return true
        end
    end
    return false

end

#puts can_balance([2, 4, 2, 4]) #true
#puts can_balance([5, 3, 8]) #true
#puts can_balance([1, 2, 3]) #true
#puts can_balance([2, 4]) #false



def merge1(list, list2)
    list2.each do |n|
        list.push(n)
    end
    temp = list.size + 1
    list.size.times do |i|
        list.size.times do |j|
            if j > i
                if list[i] > list[j]
                    temp = list[i]
                    list[i] = list[j]
                    list[j] = temp
                end
            end
        end
    end
    return list
end


def merge2(list, list2) #no nested loops
    new_array = []
    a_times = 0
    b_times = 0
    a = list[0].to_f
    b = list2[0].to_f
    last1 = list[list.size].to_f
    last2 = list2[list2.size].to_f
    while a != last1 && b != last2
        if a < b
            new_array.push(a)
            a_times +=1
            a = list[a_times].to_f
        else # a > b
            new_array.push(b)
            b_times += 1
            b = list2[b_times].to_f
        end
    end
    if b == last2
        (list.size - a_times).times do |i|
            i += a_times
            new_array.push(list[i].to_f)
        end
    else
        (list2.size - b_times).times do |i|
            i += b_times
            new_array.push(list2[i].to_f)
        end
    end 
    return new_array    

end


print merge2([1, 2, 4], [3, 5, 6])      
puts "\n"
print merge2([1, 3, 5, 7, 9], [2, 4, 6, 8, 10])  
class Array



# Any live cell with two or three live neighbours lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.



min=0
max=16

p = Array.new(max+1) { Array.new(max+1) }
jb = Array.new(max+1) { Array.new(max+1) }


 


 p=[['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-'],
  ['-','-','-','-','0','-','-','-','-','-','-','-','-','-','-','-','-'],
  ['-','-','-','-','0','0','0','-','-','-','0','0','0','-','-','-','-'],
  ['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0','-'],
  ['-','-','-','-','-','-','-','0','-','0','-','-','-','-','-','0','-'],
  ['-','0','-','-','-','-','-','0','-','0','-','-','-','-','-','0','-'],
  ['-','0','-','-','-','-','-','0','-','0','-','-','-','-','-','0','-'],
  ['-','0','-','-','0','0','0','-','0','-','0','0','0','-','-','0','-'],
  ['-','-','-','-','-','-','-','0','0','0','-','-','-','-','-','-','-'],
  ['-','-','-','-','0','0','0','-','0','-','0','0','0','-','-','-','-'],
  ['-','-','-','-','-','-','-','0','-','0','-','-','-','-','-','-','-'],
  ['-','-','-','-','-','-','-','0','-','0','-','-','-','-','-','-','-'],
  ['0','-','-','-','-','-','-','0','-','0','-','-','-','-','-','-','-'],
  ['0','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0','-'],
  ['0','0','-','-','0','0','0','-','-','-','0','0','0','-','-','0','-'],
  ['0','0','-','-','','-','-','-','-','-','-','-','-','-','-','0','-'],
  ['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-'],]



system("clear")
0.upto(p.length-1) do |i|
  0.upto(p.length-1) do |j|
    print p[i][j]+" "
  end
  puts "\n"
end


sleep(0.7)

for i in 1..10

 jb=Array.new(17) { Array.new(17) { |i| i='-'  }  }

sleep(0.5)
system("clear")

0.upto(p.length-1) do |i|
  0.upto(p.length-1) do |j|
    count=0;


# ------NEIGHBOUR CONDITIONS i=max j=min---------


    if i==max && j==min
      if p[i-1][j] == '0'
        count+=1
      end
      if p[i-1][j+1] == '0'
        count+=1
      end
      
      if p[i][j+1] == '0'
        count+=1
      end



#------NEIGHBOUR CONDITIONS i=max j=max---------

    elsif i==max && j==max
      if p[i-1][j-1]=='0'
        count+=1
      end
      if p[i-1][j] == '0'
        count+=1
      end
      if  p[i][j-1] == '0'
        count+=1
      end
            


# ------NEIGHBOUR CONDITIONS i=max---------

    elsif i==max && j!=min && j!=max  
      if p[i-1][j-1]=='0'
        count+=1
      end
      if p[i-1][j]=='0'
        count+=1
      end
      if p[i-1][j+1]=='0'
        count+=1
      end
      if p[i][j-1]=='0'
        count+=1
      end
      if p[i][j+1]=='0'
        count+=1
      end

    
# ------NEIGHBOUR CONDITIONS i=min j=min---------

    elsif i==min && j==min
      if p[i][j+1]=='0'
        count+=1
      end 
      if p[i+1][j]=='0'
        count+=1
      end
      if p[i+1][j+1]=='0'
        count+=1
      end


#------NEIGHBOUR CONDITIONS i=min j=max---------

    elsif i==min && j==max
      
      if p[i][j-1]=='0'
        count+=1
      end
      
      if p[i+1][j-1]=='0'
        count+=1
      end
      if p[i+1][j]=='0'
        count+=1
      end
      
    

# ------NEIGHBOUR CONDITIONS i=min---------

    elsif i==min && j!=min && j!=max
      if p[i][j-1]=='0'
        count+=1
      end
      if p[i][j+1]=='0'
        count+=1
      end
      if p[i+1][j-1]=='0'
        count+=1
      end
      if p[i+1][j]=='0'
        count+=1
      end
      if p[i+1][j+1]=='0'
        count+=1
      end

    
# ------NEIGHBOUR CONDITIONS j=min---------

    elsif j==min && i!=min && i!=max 
      if p[i-1][j]=='0'
        count+=1
      end
      if p[i-1][j+1]=='0'
        count+=1
      end
    
      if p[i][j+1]=='0'
        count+=1
      end
    
      if p[i+1][j]=='0'
        count+=1
      end
      if p[i+1][j+1]=='0'
        count+=1
      end
    

# ------NEIGHBOUR CONDITIONS j=max---------

    elsif j==max && i!=min && i!=max
      if p[i-1][j-1]=='0'
        count+=1
      end
      if p[i-1][j]=='0'
        count+=1
      end
      
      if p[i][j-1]=='0'
        count+=1
      end
      
      if p[i+1][j-1]=='0'
        count+=1
      end
      if p[i+1][j]=='0'
        count+=1
      end
    


#------NEIGHBOUR CONDITIONS  middle---------

    else
      if p[i-1][j-1]=='0'
        count+=1
      end
      if p[i-1][j]=='0'
        count+=1
      end
      if p[i-1][j+1]=='0'
        count+=1
      end
      if p[i][j-1]=='0'
        count+=1
      end
      if p[i][j+1]=='0'
        count+=1
      end
      if p[i+1][j-1]=='0'
        count+=1
      end
      if p[i+1][j]=='0'
        count+=1
      end
      if p[i+1][j+1]=='0'
        count+=1
      end
    end

# --------Rules For lives generation-------------------------    

    
    if p[i][j]=='-'
      if count==3
        jb[i][j]='0'
      end
    
    elsif p[i][j]=='0'
      if
        count<2 || count>3     #It is dead state
        jb[i][j]='-'
      end
      if count==2 || count==3   #Lives genertion
        jb[i][j]=p[i][j]
      end
    end
  end
end

0.upto(jb.length-1) do |i|
  0.upto(jb.length-1) do |j|
    print p[i][j]+" "
  end
  puts "\n"
end


p=jb

end
end

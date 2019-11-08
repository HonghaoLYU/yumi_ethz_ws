import tkinter as tk  # 使用Tkinter前需要先导入
from tkinter import ttk
from PIL import Image, ImageTk
 
# 第1步，实例化object，建立窗口window
window = tk.Tk()
 
# 第2步，给窗口的可视化起名字
window.title('My Window')
 
# 第3步，设定窗口的大小(长 * 宽)
window.geometry('1000x600')  # 这里的乘是小x
 
# 第4步，在图形界面上创建一个标签用以显示内容并放置
tk.Label(window, text='双臂机器人运动状态采集及分析软件', font=('楷体', 16)).pack()   # 和前面部件分开创建和放置不同，其实可以创建和放置一步完成

# 创建选项卡noebook对象
notebook = ttk.Notebook(window, height=600, width=1000)  # notebook属于ttk

# 第5步，创建一个主frame，长在主window窗口上，软件标题下面
frame_main = tk.Frame(window)
frame_main.pack()

# 创建子frame_scr1
frame_scr1 = tk.Frame(notebook)
# 左机械臂
tk.Label(frame_scr1, text='左机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=0,columnspan=6, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=0, padx=10, pady=10, ipadx=10, ipady=10)
lab1 = tk.Label(frame_scr1, text='关节角', font=('Fixdsys', 12, 'bold'))
lab1.grid(row=1, column=1, padx=10, pady=10, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr1,height=1,width=5)
comb1["values"]=("角度制","弧度制")  
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=1, column=2, padx=10, pady=10, ipadx=0, ipady=0)

for i in range(7):
    tk.Label(
        frame_scr1,
        text='Axis' + str(i+1)
    ).grid(row=i+2, column=1, padx=10, pady=0, ipadx=0, ipady=0)
    tk.Text(
        frame_scr1,font=('黑体', 12),height=0.5,width=5
    ).grid(row=i+2, column=2, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=9, column=0, padx=10, pady=10, ipadx=10, ipady=10)

tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=3, padx=10, pady=10, ipadx=10, ipady=10)
tk.Label(frame_scr1, text='TCP位姿', font=('Fixdsys', 12, 'bold')).grid(row=1, column=4, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text='Position', font=('Arial', 12)).grid(row=2, column=4, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr1,font=('黑体', 12),height=1,width=10).grid(row=3, column=4, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text='Orientation', font=('Arial', 12)).grid(row=5, column=4, padx=10, pady=0, ipadx=0, ipady=0)
comb2 = ttk.Combobox(frame_scr1,height=1,width=5)
comb2["values"]=("欧拉角","四元数")  
comb2.current(0)  #选择第一个  
##comb2.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb2.grid(row=6, column=4, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr1,font=('Times New Roman', 12),height=1,width=10).grid(row=7, column=4, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=5, padx=10, pady=10, ipadx=10, ipady=10)

tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=6, padx=10, pady=10, ipadx=10, ipady=10)

sv = ttk.Separator(frame_scr1, orient=tk.VERTICAL)
sv.grid(row=0,column=6,rowspan=9,sticky="ns")

# 右机械臂
tk.Label(frame_scr1, text='右机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=7,columnspan=6, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=7, padx=10, pady=10, ipadx=10, ipady=10)
lab1 = tk.Label(frame_scr1, text='关节角', font=('Fixdsys', 12, 'bold'))
lab1.grid(row=1, column=8, padx=10, pady=10, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr1,height=1,width=5)
comb1["values"]=("角度制","弧度制")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=1, column=9, padx=10, pady=10, ipadx=0, ipady=0)

for i in range(7):
    tk.Label(
        frame_scr1,
        text='Axis' + str(i+1)
    ).grid(row=i+2, column=8, padx=10, pady=0, ipadx=0, ipady=0)
    tk.Text(
        frame_scr1,font=('黑体', 12),height=0.5,width=5
    ).grid(row=i+2, column=9, padx=10, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=10, padx=10, pady=10, ipadx=10, ipady=10)
tk.Label(frame_scr1, text='TCP位姿', font=('Fixdsys', 12, 'bold')).grid(row=1, column=11, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text='Position', font=('Arial', 12)).grid(row=2, column=11, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr1,font=('黑体', 12),height=1,width=10).grid(row=3, column=11, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text='Orientation', font=('Arial', 12)).grid(row=5, column=11, padx=10, pady=0, ipadx=0, ipady=0)
comb2 = ttk.Combobox(frame_scr1,height=1,width=5)
comb2["values"]=("欧拉角","四元数")  
comb2.current(0)  #选择第一个  
##comb2.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb2.grid(row=6, column=11, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr1,font=('Times New Roman', 12),height=1,width=10).grid(row=7, column=11, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr1, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=12, padx=10, pady=10, ipadx=10, ipady=10)


# 创建子frame_scr2
frame_scr2 = tk.Frame(notebook)
# 左机械臂
tk.Label(frame_scr2, text='左机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=0,columnspan=5, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=0, padx=10, pady=0, ipadx=0, ipady=0)

lab1 = tk.Label(frame_scr2, text='关节角', font=('Fixdsys', 12, 'bold'))
lab1.grid(row=1, column=1, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("角度制","弧度制")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=1, column=2, padx=10, pady=0, ipadx=0, ipady=0)
img5 = ImageTk.PhotoImage(Image.open('copy.png'))
tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=1, column=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=2, column=1,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=3, column=0, padx=0, pady=10, ipadx=0, ipady=0)

tk.Label(frame_scr2, text='位置', font=('Fixdsys', 12, 'bold')).grid(row=4, column=1, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("m","mm")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=4, column=2, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=4, column=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=5, column=1,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=6, column=0, padx=0, pady=10, ipadx=0, ipady=0)

tk.Label(frame_scr2, text='姿态', font=('Fixdsys', 12, 'bold')).grid(row=7, column=1, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("Euler弧度","Euler角度","四元数")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=7, column=2, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=7, column=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=8, column=1,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=9, column=0, padx=0, pady=10, ipadx=0, ipady=0)

img6 = ImageTk.PhotoImage(Image.open('update.png'))
tk.Button(frame_scr2, text='状态更新',font=(12), width=100, height=18, image=img6, compound=tk.LEFT).grid(row=10, column=1,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=9, column=5, padx=30, pady=0, ipadx=0, ipady=0)

sv = ttk.Separator(frame_scr2, orient=tk.VERTICAL)
sv.grid(row=0,column=5,rowspan=12,columnspan=2, sticky="ns")

# 右机械臂
tk.Label(frame_scr2, text='右机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=6,columnspan=5, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=6, padx=10, pady=0, ipadx=0, ipady=0)

lab1 = tk.Label(frame_scr2, text='关节角', font=('Fixdsys', 12, 'bold'))
lab1.grid(row=1, column=7, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("角度制","弧度制")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=1, column=8, padx=10, pady=0, ipadx=0, ipady=0)

tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=1, column=9, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=2, column=7,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=3, column=6, padx=0, pady=10, ipadx=0, ipady=0)

tk.Label(frame_scr2, text='位置', font=('Fixdsys', 12, 'bold')).grid(row=4, column=7, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("m","mm")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=4, column=8, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=4, column=9, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=5, column=7,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=6, column=6, padx=0, pady=10, ipadx=0, ipady=0)

tk.Label(frame_scr2, text='姿态', font=('Fixdsys', 12, 'bold')).grid(row=7, column=7, padx=10, pady=0, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr2,height=1,width=10)
comb1["values"]=("Euler弧度","Euler角度","四元数")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=7, column=8, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr2, text='复制',font=(12), width=60, height=18, image=img5, compound=tk.LEFT).grid(row=7, column=9, padx=10, pady=0, ipadx=0, ipady=0)
tk.Text(frame_scr2,font=('Times New Roman', 12),height=1,width=40).grid(row=8, column=7,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr2, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=9, column=6, padx=0, pady=10, ipadx=0, ipady=0)

tk.Button(frame_scr2, text='状态更新',font=(12), width=100, height=18, image=img6, compound=tk.LEFT).grid(row=10, column=7,columnspan=3, padx=10, pady=0, ipadx=0, ipady=0)


# 创建子frame_scr3
frame_scr3 = tk.Frame(notebook)
# 左机械臂
tk.Label(frame_scr3, text='左机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=0,columnspan=4, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr3, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=0, padx=40, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=3, padx=40, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text='记录项选择', font=('Fixdsys', 12, 'bold')).grid(row=1, column=1, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text='单位/格式', font=('Fixdsys', 12, 'bold')).grid(row=1, column=2, padx=10, pady=0, ipadx=0, ipady=0)
var1 = tk.IntVar()  # 定义var1和var2整型变量用来存放选择行为返回值
var2 = tk.IntVar()
var3 = tk.IntVar()
var4 = tk.IntVar()
tk.Checkbutton(frame_scr3, text='关节数据', font=('Fixdsys', 12), variable=var1, onvalue=1, offvalue=0).grid(row=2, column=1, padx=10, pady=5, ipadx=0, ipady=0)    # 传值原理类似于radiobutton部件
tk.Checkbutton(frame_scr3, text='夹具关节', font=('Fixdsys', 12), variable=var2, onvalue=1, offvalue=0).grid(row=3, column=1, padx=10, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr3, text='位置数据', font=('Fixdsys', 12), variable=var3, onvalue=1, offvalue=0).grid(row=4, column=1, padx=10, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr3, text='姿态数据', font=('Fixdsys', 12), variable=var4, onvalue=1, offvalue=0).grid(row=5, column=1, padx=10, pady=5, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr3,height=1,width=10)
comb1["values"]=("角度制","弧度制")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=2, column=2, padx=10, pady=5, ipadx=0, ipady=0)
comb2 = ttk.Combobox(frame_scr3,height=1,width=10)
comb2["values"]=("m","mm")
comb2.current(0)  #选择第一个  
##comb2.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb2.grid(row=3, column=2, padx=10, pady=5, ipadx=0, ipady=0)
comb3 = ttk.Combobox(frame_scr3,height=1,width=10)
comb3["values"]=("m","mm")
comb3.current(0)  #选择第一个  
##comb3.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb3.grid(row=4, column=2, padx=10, pady=5, ipadx=0, ipady=0)
comb4 = ttk.Combobox(frame_scr3,height=1,width=10)
comb4["values"]=("Euler角度","Euler弧度","四元数")
comb4.current(0)  #选择第一个  
##comb4.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb4.grid(row=5, column=2, padx=10, pady=5, ipadx=0, ipady=0)

img7 = ImageTk.PhotoImage(Image.open('start.png'))
img8 = ImageTk.PhotoImage(Image.open('save.png'))
tk.Button(frame_scr3, text='开始记录',font=(12), width=100, height=18, image=img7, compound=tk.LEFT).grid(row=6, column=1,columnspan=2, padx=10, pady=10, ipadx=0, ipady=0)
tk.Button(frame_scr3, text='结束并保存',font=(12), width=100, height=18, image=img8, compound=tk.LEFT).grid(row=7, column=1,columnspan=2, padx=10, pady=10, ipadx=0, ipady=0)

tk.Label(frame_scr3, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=4, padx=40, pady=0, ipadx=0, ipady=0)
sv = ttk.Separator(frame_scr3, orient=tk.VERTICAL)
sv.grid(row=0,column=4,rowspan=12,columnspan=1, sticky="ns")

# 右机械臂
tk.Label(frame_scr3, text='右机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=5,columnspan=4, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr3, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=5, padx=40, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=8, padx=40, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text='记录项选择', font=('Fixdsys', 12, 'bold')).grid(row=1, column=6, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr3, text='单位/格式', font=('Fixdsys', 12, 'bold')).grid(row=1, column=7, padx=10, pady=0, ipadx=0, ipady=0)
var1 = tk.IntVar()  # 定义var1和var2整型变量用来存放选择行为返回值
var2 = tk.IntVar()
var3 = tk.IntVar()
var4 = tk.IntVar()
tk.Checkbutton(frame_scr3, text='关节数据', font=('Fixdsys', 12), variable=var1, onvalue=1, offvalue=0).grid(row=2, column=6, padx=10, pady=5, ipadx=0, ipady=0)    # 传值原理类似于radiobutton部件
tk.Checkbutton(frame_scr3, text='夹具关节', font=('Fixdsys', 12), variable=var2, onvalue=1, offvalue=0).grid(row=3, column=6, padx=10, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr3, text='位置数据', font=('Fixdsys', 12), variable=var3, onvalue=1, offvalue=0).grid(row=4, column=6, padx=10, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr3, text='姿态数据', font=('Fixdsys', 12), variable=var4, onvalue=1, offvalue=0).grid(row=5, column=6, padx=10, pady=5, ipadx=0, ipady=0)
comb1 = ttk.Combobox(frame_scr3,height=1,width=10)
comb1["values"]=("角度制","弧度制")
comb1.current(0)  #选择第一个  
##comb1.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb1.grid(row=2, column=7, padx=10, pady=5, ipadx=0, ipady=0)
comb2 = ttk.Combobox(frame_scr3,height=1,width=10)
comb2["values"]=("m","mm")
comb2.current(0)  #选择第一个  
##comb2.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb2.grid(row=3, column=7, padx=10, pady=5, ipadx=0, ipady=0)
comb3 = ttk.Combobox(frame_scr3,height=1,width=10)
comb3["values"]=("m","mm")
comb3.current(0)  #选择第一个  
##comb3.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb3.grid(row=4, column=7, padx=10, pady=5, ipadx=0, ipady=0)
comb4 = ttk.Combobox(frame_scr3,height=1,width=10)
comb4["values"]=("Euler角度","Euler弧度","四元数")
comb4.current(0)  #选择第一个  
##comb4.bind("<<ComboboxSelected>>",go)  #绑定事件,(下拉列表框被选中时，绑定go()函数)  
comb4.grid(row=5, column=7, padx=10, pady=5, ipadx=0, ipady=0)

tk.Button(frame_scr3, text='开始记录',font=(12), width=100, height=18, image=img7, compound=tk.LEFT).grid(row=6, column=6,columnspan=2, padx=10, pady=10, ipadx=0, ipady=0)
tk.Button(frame_scr3, text='结束并保存',font=(12), width=100, height=18, image=img8, compound=tk.LEFT).grid(row=7, column=6,columnspan=2, padx=10, pady=10, ipadx=0, ipady=0)


# 创建子frame_scr4
frame_scr4 = tk.Frame(notebook)
# 左机械臂
tk.Label(frame_scr4, text='左机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=0,columnspan=7, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=0, padx=20, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=6, padx=20, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text='关节空间变化趋势图', font=('Fixdsys', 12)).grid(row=1, column=1,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_1 = tk.IntVar()  # 定义var1和var2整型变量用来存放选择行为返回值
var4_2 = tk.IntVar()
var4_3 = tk.IntVar()
var4_4 = tk.IntVar()
var4_5 = tk.IntVar()
var4_6 = tk.IntVar()
var4_7 = tk.IntVar()
var4_8 = tk.IntVar()
var4_9 = tk.IntVar()
var4_10 = tk.IntVar()
tk.Checkbutton(frame_scr4, text='Axis1', variable=var4_1, onvalue=1, offvalue=0).grid(row=2, column=1, padx=0, pady=5, ipadx=0, ipady=0)    # 传值原理类似于radiobutton部件
tk.Checkbutton(frame_scr4, text='Axis2', variable=var4_2, onvalue=1, offvalue=0).grid(row=2, column=2, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis3', variable=var4_3, onvalue=1, offvalue=0).grid(row=2, column=3, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis4', variable=var4_4, onvalue=1, offvalue=0).grid(row=2, column=4, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis5', variable=var4_5, onvalue=1, offvalue=0).grid(row=2, column=5, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis6', variable=var4_6, onvalue=1, offvalue=0).grid(row=3, column=1, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis7', variable=var4_7, onvalue=1, offvalue=0).grid(row=3, column=2, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Gripper', variable=var4_8, onvalue=1, offvalue=0).grid(row=3, column=3, padx=0, pady=5, ipadx=0, ipady=0)
img4_1 = ImageTk.PhotoImage(Image.open('plot.png'))
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=3, column=5, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=4, column=0, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='TCP空间轨迹图', font=('Fixdsys', 12)).grid(row=5, column=1,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_11 = tk.IntVar()
tk.Radiobutton(frame_scr4, text='空间轨迹图', variable=var4_11, value=1).grid(row=6, column=1, padx=0, pady=0, ipadx=0, ipady=0)
tk.Radiobutton(frame_scr4, text='单坐标分析', variable=var4_11, value=2).grid(row=7, column=1, padx=0, pady=0, ipadx=0, ipady=0)
var4_12 = tk.IntVar()
var4_13 = tk.IntVar()
var4_14 = tk.IntVar()
tk.Checkbutton(frame_scr4, text='TCP-x', variable=var4_12, onvalue=1, offvalue=0).grid(row=7, column=2, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='TCP-y', variable=var4_13, onvalue=1, offvalue=0).grid(row=7, column=3, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='TCP-z', variable=var4_14, onvalue=1, offvalue=0).grid(row=7, column=4, padx=0, pady=5, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=7, column=5, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=8, column=0, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='姿态空间变化趋势图', font=('Fixdsys', 12)).grid(row=9, column=1,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_15 = tk.IntVar()
tk.Radiobutton(frame_scr4, text='弧度制', variable=var4_15, value=1).grid(row=10, column=1, padx=0, pady=0, ipadx=0, ipady=0)
tk.Radiobutton(frame_scr4, text='角度制', variable=var4_15, value=2).grid(row=10, column=2, padx=0, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=10, column=5, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=11, column=0, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='最大工作空间范围图', font=('Fixdsys', 12)).grid(row=12, column=1,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=13, column=5, padx=10, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=7, padx=0, pady=0, ipadx=0, ipady=0)
# 右机械臂
tk.Label(frame_scr4, text='右机械臂', font=('Fixdsys', 15, 'bold')).grid(row=0, column=8,columnspan=7, padx=10, pady=10, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=8, padx=20, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=1, column=14, padx=20, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text='关节空间变化趋势图', font=('Fixdsys', 12)).grid(row=1, column=9,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_21 = tk.IntVar()  # 定义var1和var2整型变量用来存放选择行为返回值
var4_22 = tk.IntVar()
var4_23 = tk.IntVar()
var4_24 = tk.IntVar()
var4_25 = tk.IntVar()
var4_26 = tk.IntVar()
var4_27 = tk.IntVar()
var4_28 = tk.IntVar()
var4_29 = tk.IntVar()
var4_30 = tk.IntVar()
tk.Checkbutton(frame_scr4, text='Axis1', variable=var4_21, onvalue=1, offvalue=0).grid(row=2, column=9, padx=0, pady=5, ipadx=0, ipady=0)    # 传值原理类似于radiobutton部件
tk.Checkbutton(frame_scr4, text='Axis2', variable=var4_22, onvalue=1, offvalue=0).grid(row=2, column=10, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis3', variable=var4_23, onvalue=1, offvalue=0).grid(row=2, column=11, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis4', variable=var4_24, onvalue=1, offvalue=0).grid(row=2, column=12, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis5', variable=var4_25, onvalue=1, offvalue=0).grid(row=2, column=13, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis6', variable=var4_26, onvalue=1, offvalue=0).grid(row=3, column=9, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Axis7', variable=var4_27, onvalue=1, offvalue=0).grid(row=3, column=10, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='Gripper', variable=var4_28, onvalue=1, offvalue=0).grid(row=3, column=11, padx=0, pady=5, ipadx=0, ipady=0)

tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=3, column=13, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=4, column=8, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='TCP空间轨迹图', font=('Fixdsys', 12)).grid(row=5, column=9,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_31 = tk.IntVar()
tk.Radiobutton(frame_scr4, text='空间轨迹图', variable=var4_31, value=1).grid(row=6, column=9, padx=0, pady=0, ipadx=0, ipady=0)
tk.Radiobutton(frame_scr4, text='单坐标分析', variable=var4_31, value=2).grid(row=7, column=9, padx=0, pady=0, ipadx=0, ipady=0)
var4_32 = tk.IntVar()
var4_33 = tk.IntVar()
var4_34 = tk.IntVar()
tk.Checkbutton(frame_scr4, text='TCP-x', variable=var4_32, onvalue=1, offvalue=0).grid(row=7, column=10, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='TCP-y', variable=var4_33, onvalue=1, offvalue=0).grid(row=7, column=11, padx=0, pady=5, ipadx=0, ipady=0)
tk.Checkbutton(frame_scr4, text='TCP-z', variable=var4_34, onvalue=1, offvalue=0).grid(row=7, column=12, padx=0, pady=5, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=7, column=13, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=8, column=8, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='姿态空间变化趋势图', font=('Fixdsys', 12)).grid(row=9, column=9,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
var4_35 = tk.IntVar()
tk.Radiobutton(frame_scr4, text='弧度制', variable=var4_35, value=1).grid(row=10, column=9, padx=0, pady=0, ipadx=0, ipady=0)
tk.Radiobutton(frame_scr4, text='角度制', variable=var4_35, value=2).grid(row=10, column=10, padx=0, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=10, column=13, padx=10, pady=0, ipadx=0, ipady=0)
tk.Label(frame_scr4, text=' ', font=('Fixdsys', 14, 'bold')).grid(row=11, column=8, padx=20, pady=0, ipadx=0, ipady=0)

tk.Label(frame_scr4, text='最大工作空间范围图', font=('Fixdsys', 12)).grid(row=12, column=9,columnspan=5, padx=10, pady=0, ipadx=0, ipady=0)
tk.Button(frame_scr4, text='绘图',font=(12), width=60, height=18, image=img4_1, compound=tk.LEFT).grid(row=13, column=13, padx=10, pady=0, ipadx=0, ipady=0)

# 读取四个选项卡按钮图标
img1 = ImageTk.PhotoImage(Image.open('ico_state.png'))
img2 = ImageTk.PhotoImage(Image.open('ico_debug.png'))
img3 = ImageTk.PhotoImage(Image.open('ico_record.png'))
img4 = ImageTk.PhotoImage(Image.open('ico_analyse.png'))

# 设置四个选项卡的内容和标题
notebook.add(frame_scr1, text="状态显示", image=img1, compound = tk.TOP)
notebook.add(frame_scr2, text="调试采集", image=img2, compound = tk.TOP)
notebook.add(frame_scr3, text="过程记录", image=img3, compound = tk.TOP)
notebook.add(frame_scr4, text="状态分析", image=img4, compound = tk.TOP)
notebook.pack()
        
# 第8步，主窗口循环显示
window.mainloop()

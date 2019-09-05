# coding=UTF-8
# Author: The dataset points for yumi

def return_joint_state(arm_num, joint_num):

    if arm_num == 'right_arm':
        joint_num_state = joint_num
        if joint_num_state==0:
            # point 0
            return [1.0566515922546387, -0.799830973148346, -0.9934169054031372, 0.24853742122650146, -0.31343844532966614, 0.7838608622550964, -0.1427759975194931]
        if joint_num_state==1:
            # point 1
            return [1.2718786001205444, -0.8155352473258972, -1.3052942752838135, 0.0931183248758316, 0.25190722942352295, 0.999956488609314, -0.6912940144538879]
        if joint_num_state==2:
            # point 2
            return [1.2033720016479492, -0.8444650173187256, -1.2715572118759155, 0.05305938050150871, 0.22989173233509064, 1.0962857007980347, -0.6761065721511841]
        if joint_num_state==3:
            # point 3 xiao fangzhi shangfangdian
            return [0.5576093196868896, -0.808871865272522, -2.188227653503418, 0.4401152729988098, 1.6989686489105225, 0.28035855293273926, -1.561108112335205]
        if joint_num_state==4:
            # point 4 xiao fangzhidian
            return [0.695845901966095, -0.8683164715766907, -2.2640745639801025, 0.35124415159225464, 1.825042724609375, 0.27690035104751587, -1.671383023262024]
        if joint_num_state==5:
            # point 5 grip knife
            return [1.340527057647705, -0.38813069462776184, -0.8841120600700378, 0.26948681473731995, -1.3945189714431763, 1.425450086593628, 1.1228559017181396]
        if joint_num_state==6:
            # point 6 grip dao chouchu point
            return [0.9536132216453552, -0.32186561822891235, -0.39688047766685486, 0.2137400358915329, -1.2159924507141113, 1.5271148681640625, 1.0664063692092896]
        if joint_num_state==7:
            # point 7 dao fangxia shangfang point
            return [0.0819535180926323, -1.2222614288330078, -2.408796787261963, -0.03463158383965492, 0.5175821781158447, 0.811234712600708, -2.5812768936157227]
        if joint_num_state==8:
            # point 8 dao fangxia point
            return [0.5853254199028015, -1.9356813430786133, -1.9323232173919678, -0.6076845526695251, -0.264768123626709, 0.5007398128509521, -2.119152069091797]
        if joint_num_state==9:
            # point 9 后来补充，刀具抽出到放置点上方的过渡点
            return [0.3086787462234497, -0.3356676399707794, 0.2835483253002167, 0.009762777015566826, -0.9870612025260925, 1.741411805152893, 0.8350523114204407]
        if joint_num_state==10:
            # point 10 拾取点位1上方
            return [0.13238024711608887, -1.6817289590835571, -1.688321590423584, 0.8127768039703369, -2.260023593902588, 0.584595799446106, 1.7672985792160034]
        if joint_num_state==11:
            # point 11 拾取点位1下方
            return[0.34323549270629883, -1.7611384391784668, -1.735314130783081, 0.6449372172355652, -2.4278554916381836, 0.6016210317611694, 1.8608454465866089]

    if arm_num == 'left_arm':
        left_joint_total=['joint_1_up','joint_1_down','joint_2_up','joint_2_down','joint_3_up','joint_3_down','joint_4_up','joint_4_down','joint_5_up','joint_5_down','joint_hand_out_low','joint_hand_inside_release']
        joint_num_state=left_joint_total[joint_num]
        if joint_num_state=='joint_1_up':
            # point 0 daoba fangzhi point
            return [-2.320371389389038, -1.289146065711975, 2.109571933746338, -0.8723461627960205, -1.198452115058899, 2.37920880317688, 2.368194341659546]
        if joint_num_state=='joint_1_down':
            return [1.0883876085281372, -1.9833085536956787, -1.599050760269165, 0.3691897988319397, -0.7600559592247009, 1.0360674858093262, -1.5539547204971313]
        if joint_num_state=='joint_2_up':
            return [0.9825114011764526, -1.9874523878097534, -1.6732686758041382, 0.48173320293426514, -0.77818763256073, 1.0077078342437744, -1.5616555213928223]
        if joint_num_state=='joint_2_down':
            return [-1.3363401889801025, -1.0898970365524292, 1.4443535804748535, 0.44336768984794617, -3.420609474182129, 0.9420353174209595, -3.018526554107666]
        if joint_num_state=='joint_3_up':
            return [1.1294848918914795, -1.9716789722442627, -1.556933045387268, 0.2964234948158264, -0.7356072068214417, 1.0755319595336914, -1.5637472867965698]
        if joint_num_state=='joint_3_down':
            return [-1.5736968517303467, -1.0619909763336182, 1.5524935722351074, 0.45445170998573303, -3.3969733715057373, 1.1540648937225342, -3.0895192623138428]
        if joint_num_state=='joint_4_up':
            return [-1.547721982,-0.975123584,1.425058126,0.427137256,-3.43200016,1.116520643,-3.086297512]
        if joint_num_state=='joint_4_down':
            return [-1.6134154797,-1.032587409,1.5367376804,0.3015876412,-3.3316938877,1.0310608149,-3.1173522472]
        if joint_num_state=='joint_5_up':
            return [-1.6798139811,-0.9578893185,1.4970027208,0.4048714936,-3.4262340069,1.2005531788,-3.1135492325]
        if joint_num_state=='joint_5_down':
            return [-1.7620639801,-1.0336602926,1.6182199717,0.2667441964,-3.315778017,1.1212291718,-3.1433637142]
        if joint_num_state=='joint_hand_out_low':
            return [-1.596020221710205, -0.7798439860343933, 1.2379815578460693, -0.14349110424518585, -3.9499971866607666, 0.8009695410728455, -2.5808541774749756]
        if joint_num_state=='joint_hand_inside_release':
            return [-0.42854681611061096, -1.3110144138336182, 1.4462252855300903, 0.8245474696159363, -2.740112543106079, 0.45960697531700134, -3.49589467048645]
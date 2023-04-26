Author: Wei Yu
Date: April 2023
Email: yuwei26@mail2.sysu.edu.cn

【Introduction】：
This is the code for nine unicycles to realize affine formation simulation，and it has been tested in matlab R2020b.


【How to use】:
1、simply run ''exgitNew.slx'' and you can see the error graph in the data display area.
2、If you want to see the results of the actual formation maneuver, you can run ''GitplotTra.m'' after the end of run ''exgitNew.slx''. Red indicates leaders, blue indicates followers and the light blue area represents errors

【Parameters】:
delay： proactively introduced delay parameters.
vxx：    velocity of leaders in x-direction.
A，W，and C：  the parameters of the velocity of leaders in the y-direction.
ka，kb：the parameters in controller.
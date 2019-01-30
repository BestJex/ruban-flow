# ruban-flow
鲁班工作流引擎，基于springboot的分布式高效工作流引擎

## 特性
流程实例id垂直分表，真正意义的分布式流程引擎；  
组织机构数据通过文件同步，热发布，无需系统重启,人员数据会缓存在系统中；  
后处理支持单机bean的方式和集群下fegin的方式；也可扩展成MQ；  
流程图热发布，无需系统重启； 
 
## 流程绘制【完成】
![Image text](https://github.com/figuewang/ruban-flow/blob/master/ruban-studio/src/main/resources/static/images/studio2.png)

## 节点类型
#### 开始节点：
一个流程图有且只能有一个开始节点； 

#### 结束节点：
一个流程图有且只能有一个结束节点；

#### 普通节点:
后面只能有一个节点；

#### 单选节点：
后面可以有一个或者多个节点，但用户最终只能选择一个节点；

#### 条件单选节点：
后面可以有一个或者多个节点；  
用户最终只能选择一个节点；  
根据路由条件决定出现几个节点供选择；  

#### 多选节点：
后面可以有一个或者多个节点；

#### 条件多选节点：
后面可以有一个或者多个节点；  
用户能选择一个节点或者多个节点；  
根据路由条件决定出现几个节点供选择；  

#### 汇总节点：
由多选和条件多选节点引出的分支，必须使用汇总节点聚合；
汇总节点不能连着使用；

#### 自动节点：
流经自动节点时，引擎直接向自动节点的下一节点提交；

## 节点属性
#### 节点名称：
节点的中文名称；
#### 节点标识：
节点的标签，不同节点可以有相同的节点标识；
#### 处理人员：
配置节点由哪种人去处理；
可以选择多个，再根据【人员计算】方式做交集、并集等；
#### 人员指定：
选择[系统指定]时，将把【处理人员】配置的所有人作为此节点的办理人；  
选择[人员列表选择]时，将把【处理人员】配置的所有人列出来，共提交人选择，作为此节点的办理人；  

#### 人员计算：
选择[原始配置]时，对配置的【处理人员】不做任何处理；  
选择[交集]时，对配置的【处理人员】做完人员统计后再做交集，相交的人作为节点处理人；  
选择[并集]时，对配置的【处理人员】做完人员统计后再做并集，合并去重后的人作为节点处理人；  

#### 办理类型：
选择[单人签收办理]时，如果节点处理人有多个，多人均可以看见待办，但一个人签收后，其他人将不会再看见待办，撤销签收后，其他人又能看见待办；   
选择[单人竞争办理]时，如果节点处理人有多个，多人均可以看见待办，一旦有人提交，其他人将不会再看见待办；   
选择[多人顺序办理]时，如果节点处理人有多个，多个人按照顺序挨个可以看见待办，挨个顺序处理完，最后一个人才会往下一节点提交；   
选择[多人顺序可结束]时，如果节点处理人有多个，多个人按照顺序挨个可以看见待办，不许要挨个顺序处理完，过程中处理人可以选择直接往下一节点提交；   
选择[多人并行办理]时，如果节点处理人有多个，多个人可以同时看见待办，多人可以同时办理，过程中最后一个处理人可以选择直接往下一节点提交；   
选择[多人并行可结束]时，选择[多人并行办理]时，如果节点处理人有多个，多个人可以同时看见待办，多人可以同时办理，不许所有人均处理完，过程中任何处理人可以选择直接往下一节点提交；   
选择[多人并行按条件转移]时，根据自定义的【转移条件】决定处理人是否可以直接往下一节点提交；   

#### 转移条件：
当【办理类型】是[多人并行按条件转移]生效；
格式是一个spring的bean的ID或者http的api；

#### 业务处理：
流程由此节点往下一节点提交时，回调的后业务处理；  
格式是一个spring的bean的ID或者http的api；

#### 业务页面：
格式是一个页面的路由id;  
当流程流转到此节点时，作为此节点的展示页面；  
如果此节点不配置，默认使用开始节点配置的展示页面；  

#### 重办人员：
选择[重新发送]时，同一个流程实例下，此节点之前已经办理过，再次经过此节点时，分配节点处理人时将按照节点配置的【处理人员】重新计算；  
选择[上一办理人]时，同一个流程实例下，此节点之前已经办理过，再次经过此节点时，分配节点处理人时直接使用上次的处理人；  

#### 抄送人员：
配置抄送给那些人；

#### 节点级别:
是一个数字，可用于办理意见数据权限控制，越大权限越高；

#### 分配策略：
当【人员指定】选择[系统指定]时生效； 
根据自定义策略重决定节点处理人； 
格式是一个spring的bean的ID或者http的api；

#### 待办通知：
流程提交到此节点时，给节点的处理人发邮件，短信，系统消息等；

### 流转动作
#### 提交：
节点往下一节点提交；
节点的下一节点是汇总节点时，需要将流程实例下所有代办节点查询出来，这些节点如果后续会经过此汇总节点，则无需再往下提交，否则往汇总节点的下一节点提交；

#### 退回：
退回的条件是，退回到节点的前面节点；  
前面节点如果是汇总节点，不允许退回；  
前面节点的后面有多个节点不允许退回；  

#### 打回：
打回可以退回到任何历史已办节点；  
打回节点的后面所有节点的待办都将清除；  

#### 跳转：
跳转可以跳到流程图中的任何节点；  
跳转到的节点的后面所有节点的待办都将清除；  

#### 转办：
流程流转到A节点的B处理人时，B可以将待办转给B一类人中的他人C；  
C将往后续节点提交；

#### 协办：
流程流转到A节点的B处理人时，B可以将待办转给B一类人中的他人C；  
C填完审批意见再提交给B做参考；  
B将往后续节点提交；

#### 催办：
人员A已经提交给人员B的，但B还未往下一节点提交，A在自己的已办列表处可以发邮件等催B处理；

#### 拿回：
人员A已经提交给人员B的，但B还未往下一节点提交，A在自己的已办列表处将实例拿回到自己的待办中；

#### 否决：
将流程直接往结束节点提交，相当于流程提前结束；

#### 抄送：
流程提交给某个节点时，选择抄送人员，待办信息将出现在抄送人员的抄送列表里；

#### 挂起：
本人发起的流程实例本人可以挂起；  
流程实例一但挂起，此实例下的待办均无法处理；  

#### 唤醒：
本人挂起的流程实例本人可以唤醒；  
流程实例一但唤醒，此实例下的待办均可以继续处理；   




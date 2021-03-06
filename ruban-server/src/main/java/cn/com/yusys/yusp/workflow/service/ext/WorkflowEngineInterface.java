package cn.com.yusys.yusp.workflow.service.ext;

import java.util.List;

import cn.com.yusys.yusp.workflow.core.exception.WorkflowException;
import cn.com.yusys.yusp.workflow.dto.WFCommentDto;
import cn.com.yusys.yusp.workflow.dto.WFStratDto;
import cn.com.yusys.yusp.workflow.dto.WFSubmitDto;
import cn.com.yusys.yusp.workflow.dto.WFUserDto;
import cn.com.yusys.yusp.workflow.dto.result.ResultCommentDto;
import cn.com.yusys.yusp.workflow.dto.result.ResultInstanceDto;
import cn.com.yusys.yusp.workflow.dto.result.ResultNodeDto;
import cn.com.yusys.yusp.workflow.dto.result.ResultMessageDto;
/**
 * 节点流转核心接口
 * @author figue
 *
 */
public interface WorkflowEngineInterface {
	
	/**
	 * 发起流程
	 * @param stratDto
	 * @return
	 */
	ResultInstanceDto start(WFStratDto stratDto) throws WorkflowException;
	
	/**
	 * 获取实例基本信息
	 * @param instanceId
	 * @return
	 */
	ResultInstanceDto getInstanceInfo(String instanceId,String nodeId,String currentUserId) throws WorkflowException;
	
	/**
	 * 保存或更新评论
	 * @param comment
	 * @return
	 */
	ResultCommentDto saveComment(WFCommentDto comment)  throws WorkflowException;
	
	/**
	 * 获取实例下所有用户评论
	 * @param comment
	 * @return
	 */
	 List<ResultCommentDto> getComments(String instanceId)  throws WorkflowException;
	
	/**
	 * 获取节点下用户评论
	 * @param instanceId
	 * @param nodeId
	 * @param userId
	 * @return
	 * @throws WorkflowException
	 */
	ResultCommentDto getNodeUserComment(String instanceId,String nodeId,String userId)  throws WorkflowException;
	
	/**
	 * 获取路由后面节点信息
	 * @param nodeId
	 * @return
	 */
	List<ResultNodeDto> getNextNodeInfos(String instanceId,String nodeId) throws WorkflowException;
	
	/**
	 * 获取节点处理人
	 * @param instanceId
	 * @param nodeId
	 * @param orgId
	 * @param systemId
	 * @return
	 */
	List<WFUserDto> getNodeUsers(String instanceId,String nodeId,String orgId,String systemId);
	
	/**
	 * 获取节点真正处理人【不会含有系统指定】
	 * @param instanceId
	 * @param nodeId
	 * @param orgId
	 * @param systemId
	 * @return
	 */
	List<WFUserDto> getNodeRealUsers(String instanceId,String nodeId,String orgId,String systemId);

	
	/**
	 * 流程提交
	 * @param stratDto
	 * @return
	 */
	List<ResultMessageDto> submit(WFSubmitDto submitDto) throws WorkflowException;
	
	/**
	 * 签收
	 * @param instanceId
	 * @param nodeId
	 * @param userId
	 * @return
	 */
	ResultMessageDto signIn(String instanceId,String nodeId,String userId);
	
	/**
	 * 撤销签收
	 * @param instanceId
	 * @param nodeId
	 * @param userId
	 * @return
	 */
	ResultMessageDto unSignIn(String instanceId,String nodeId,String userId);
}

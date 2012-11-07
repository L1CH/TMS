package tms.core.service.admin;

import tms.base.service.BaseService;
import tms.core.model.admin.Admin;
import tms.core.util.Message;

import java.util.List;

public interface AdminService extends BaseService {

	/**
	 * 获取管理员列表
	 * @return List<News>
	 */
	public List<Admin> getAdministrators();

	/**
	 * 增加管理员
	 * @param administrator 管理员
	 * @return Admin or null
	 */
	public Admin addAdministrator(Admin administrator);

	/**
	 * 增加或更新管理员
	 * @param administrator 管理员
	 * @return Admin or null
	 */
	public Admin addOrUpdateAdministrator(Admin administrator);

	/**
	 * 删除管理员
	 * @param newsId 消息ID
	 * @return News
	 */
	public Admin delAdministrator(Long administratorId);

	/**
	 * 进行自动分配
	 * @param message
	 * @return boolean
	 */
	public boolean autoAssign(Message message);
}

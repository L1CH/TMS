package tms.core.dao.admin;

import tms.base.dao.BaseDao;
import tms.core.model.admin.News;

import java.util.List;

public interface NewsDao extends BaseDao<News, Long> {

	public List<News> findByReceiver(String receiver);
}

package tms.core.service.admin;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import tms.base.service.BaseService;
import tms.core.model.admin.Paper;

public interface PaperService extends BaseService {
	/**
	 * 获取优秀论文
	 * @return List<Paper> 优秀论文
	 */
	public List<Paper> getPapers();

	/**
	 * 获取优秀论文(URL编码)
	 * @return List<Paper> 优秀论文
	 */
	public List<Paper> getPapersURLEncoded();

	/**
	 * 保存优秀论文
	 * @param descption 论文描述
	 * @param uploadFile 上传文件
	 * @return Paper
	 * @throws IOException
	 */
	public Paper savePaper(String description, MultipartFile uploadFile) throws IOException;

	/**
	 * 删除优秀论文
	 * @param id ID
	 * @return Paper or null
	 * @throws IOException
	 */
	public Paper delPaper(Long id) throws IOException;
}

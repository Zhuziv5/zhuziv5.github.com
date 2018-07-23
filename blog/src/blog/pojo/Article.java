/**
 * 对应文章表tbl_article_content和tbl_article_info
 */

package blog.pojo;

public class Article {
	//对应表tbl_article_content
	private Long id;
	private String content;
	
	//对应表tbl_article_category
	private Long categoryId;//分类id
	private Long articleId;//文章Id
		
	//对应tbl_article_info
	private String title;
	private String summary;
	private Integer traffic;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Integer getTraffic() {
		return traffic;
	}
	public void setTraffic(Integer traffic) {
		this.traffic = traffic;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public Long getArticleId() {
		return articleId;
	}
	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
	
}

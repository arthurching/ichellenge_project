package tw.ec.jspproject.javabean;

import java.io.Serializable;
import java.util.LinkedList;

public class ShoppingCartJavaBean implements Serializable {
	private static final long serialVersionUID = 1L;
    private LinkedList<String> lists = new LinkedList<String>();
    private LinkedList<String> lists2 = new LinkedList<String>();
    private String submitType = null;
    private String product = null;
    private String count=null;
	
	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public ShoppingCartJavaBean() {
	}
	
	public void addProduct(String name){
		lists.add(name);
	}
	
	public void removeProduct(String name){
		lists.remove(name);
	}
	public void addCount(String name){
		lists2.add(name);
	}
	
	public void removeCount(String name){
		lists2.remove(name);
	}
	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}
	
	public LinkedList<String> getShoppingCartLists(){
		return lists;
	}
	public LinkedList<String> getShoppingCartLists2(){
		return lists2;
	}
	
	public void processSubmitAction(){
		if(submitType==null || submitType.equals("add")){
			addProduct(product);
		}else if(submitType.equals("delete")){
			removeProduct(product);
		}
		
		
		submitType = null;
		product = null;
	}public void processSubmitAction2(){
		if(submitType==null || submitType.equals("add")){
			addCount(count);
		}else if(submitType.equals("delete")){
			removeCount(count);
		}
		
		
		submitType = null;
		count = null;
	}
	

}










<?php
class c_tags extends DtDatabase
{
	public $id;
	public $channelId;
	public $tagName;
	public $title;
	public $custom;
	public $content;
	public $dtTime;

	public $primary_key='id';

	protected $table_name;
	private $im_virgin=false;

	public function __construct()
	{
		$this->table_name = TB_PREFIX.'tags';
		$this->DtDatabase();		
}
	public function get_request($request=array())
	{
		if(!empty($request)){
		if($request['id'])$this->id=$request['id'];
		if($request['channelId'])$this->channelId=$request['channelId'];
		if($request['tagName'])$this->tagName=$request['tagName'];
		$this->title=$request['title'];
		if($request['custom'])$this->custom=$request['custom'];
		$this->content=$request['content'];
		if($request['dtTime'])$this->dtTime=$request['dtTime'];
		}
		}

	public function addnew($request=array())
	{
		$this->im_virgin =true;		if(!empty($request)){
		$this->get_request($request);
		}
		}

	public function save()
	{
		if($this->im_virgin){
		eval("\$this->$this->primary_key=NULL;");
		$sql="INSERT INTO `$this->table_name` (";
		$sql.=isset($this->channelId)?"channelId,":'';
		$sql.=isset($this->tagName)?"tagName,":'';
		$sql.=isset($this->title)?"title,":'';
		$sql.=isset($this->custom)?"custom,":'';
		$sql.=isset($this->content)?"content,":'';
		$sql.=isset($this->dtTime)?"dtTime,":'';
if(substr($sql,strlen($str)-1,1)==',')$sql=substr($sql,0,strlen($str)-1);		$sql.=")VALUES (";
		$sql.=isset($this->channelId)?"'$this->channelId',":'';
		$sql.=isset($this->tagName)?"'$this->tagName',":'';
		$sql.=isset($this->title)?"'$this->title',":'';
		$sql.=isset($this->custom)?"'$this->custom',":'';
		$sql.=isset($this->content)?"'$this->content',":'';
		$sql.=isset($this->dtTime)?"'$this->dtTime',":'';
if(substr($sql,strlen($str)-1,1)==',')$sql=substr($sql,0,strlen($str)-1);		$sql.=')';

		}
		else{

		eval('$pid=$this->'.$this->primary_key.';$this->'.$this->primary_key.'=NULL;');

		$sql.="UPDATE `$this->table_name` SET ";
		$sql.=isset($this->id)?"`id`='$this->id',":'';
		$sql.=isset($this->channelId)?"`channelId`='$this->channelId',":'';
		$sql.=isset($this->tagName)?"`tagName`='$this->tagName',":'';
		$sql.=isset($this->title)?"`title`='$this->title',":'';
		$sql.=isset($this->custom)?"`custom`='$this->custom',":'';
		$sql.=isset($this->content)?"`content`='$this->content',":'';
		$sql.=isset($this->dtTime)?"`dtTime`='$this->dtTime',":'';
if(substr($sql,strlen($str)-1,1)==',')$sql=substr($sql,0,strlen($str)-1);
		$sql.=" WHERE `$this->primary_key` ='$pid' LIMIT 1";
		}
		return $this->query($sql);
	}
}
?>
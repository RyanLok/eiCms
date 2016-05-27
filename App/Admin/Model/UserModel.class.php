<?php
namespace Admin\Model;
use Think\Model;
class UserModel extends Model{
    // 退出登录更新用户信息，更新最后登录IP 最后登录时间
    public function logout(){
      $data = array(
        'logdatetime'=>time(),
        'logip'=>get_client_ip()
      );
      $where['id'] = is_login();
      $this->where($where)->save($data);
    }
}

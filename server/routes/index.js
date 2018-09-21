var express = require('express');
var router = express.Router();
var connection = require('../db/connect');

//登陆
router.post('/login', function(req, res, next) {
  var userName = req.body.userName;
  var password = req.body.password;
  var sql = 'SELECT * FROM user WHERE Username=?';
  var sqlParams = [userName];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    if (result.length === 0) {
      res.json({
        status: 0,
        msg: '用户名不存在',
        data: ''
      });
      return;
    }
    if (password === result[0].Password) {
      res.cookie('username', result[0].Username, {
        path: '/',
        maxAge: 1000 * 60 * 60 * 365
      });
      res.json({
        status: 200,
        msg: 'success',
        data: ''
      });
    } else {
      res.json({
        status: 0,
        msg: '密码错误',
        data: ''
      });
    }
  });
});

//注册
router.post('/reg', function(req, res, next) {
  var userName = req.body.userName;
  var password = req.body.password;
  var sql = 'SELECT * FROM user WHERE Username=?';
  var sqlParams = [userName];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    if (result.length !== 0) {
      res.json({
        status: 0,
        msg: '用户已存在！',
        data: ''
      });
      return;
    }
    sql = 'INSERT INTO user(Username,Password) VALUES(?,?)';
    sqlParams = [userName, password];
    connection.query(sql, sqlParams, function(err, result) {
      if (err) {
        res.json({
          status: 500,
          msg: err,
          data: ''
        });
        return;
      }
      res.json({
        status: 200,
        msg: 'success',
        data: ''
      });
    });
  });
});
// 热销商品
router.post('/hotsale', function(req, res, next) {
  var sql = `SELECT * FROM good WHERE find_in_set('1',GoodItem)`;
  connection.query(sql, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 团购商品
router.post('/salegroup', function(req, res, next) {
  var sql = `SELECT * FROM good WHERE find_in_set('2',GoodItem)`;
  connection.query(sql, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 发现
router.post('/discover', function(req, res, next) {
  var sql = `SELECT * FROM good WHERE find_in_set('3',GoodItem)`;
  connection.query(sql, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 获取购物车里商品数量
router.post('/getCartCount', function(req, res, next) {
  var username = req.cookies.username;
  var sql = `SELECT COUNT(*) as count FROM cart WHERE Username=?`;
  var sqlParams = username;
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 获取购物车所有信息
router.post('/getCart', function(req, res, next) {
  var username = req.cookies.username;
  var sql = `SELECT cart.Cartcount,good.* FROM cart,good WHERE cart.Goodid=good.Goodid AND Username=?`;
  var sqlParams = username;
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 更新购物车商品数目
router.post('/updateCartCount', function(req, res, next) {
  var username = req.cookies.username;
  var id = req.body.id;
  var num = req.body.num;
  var sql = `UPDATE cart SET Cartcount=? WHERE Username=? AND Goodid=?`;
  var sqlParams = [num, username, id];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: ''
    });
  });
});
// 添加到购物车
router.post('/addToCart', function(req, res, next) {
  var username = req.cookies.username;
  var id = req.body.id;
  var num = req.body.num;
  var sql = `SELECT Cartcount FROM cart WHERE Goodid=? AND Username=?`;
  var sqlParams = [id, username];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    if (result.length === 0) {
      sql = `INSERT INTO cart VALUES (?, ?, ?);`;
      sqlParams = [username, id, num];
      connection.query(sql, sqlParams, function(err, res1) {
        if (err) {
          res.json({
            status: 500,
            msg: err,
            data: ''
          });
          return;
        }
        res.json({
          status: 200,
          msg: 'success',
          data: ''
        });
      });
    } else {
      num += result[0].Cartcount;
      sql = `UPDATE cart SET Cartcount=? WHERE Username=? AND Goodid=?`;
      sqlParams = [num, username, id];
      connection.query(sql, sqlParams, function(err, res2) {
        if (err) {
          res.json({
            status: 500,
            msg: err,
            data: ''
          });
          return;
        }
        res.json({
          status: 200,
          msg: 'success',
          data: ''
        });
      });
    }
  });
});
// 删除购物车商品
router.post('/delFromCart', function(req, res, next) {
  var username = req.cookies.username;
  var delId = req.body.delId;
  var delIdStr = '(' + delId.toString() + ')';
  var sql = `DELETE FROM cart WHERE Username=? AND Goodid in ${delIdStr}`;
  var sqlParams = [username];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: ''
    });
  });
});
// 根据id获取商品
router.post('/getGoodById', function(req, res, next) {
  var username = req.cookies.username;
  var goodId = req.body.goodId;
  var goodIdStr = '(' + goodId.toString() + ')';
  var sql = `SELECT * FROM good WHERE Goodid in ${goodIdStr}`;
  var sqlParams = [username];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 获取收货地址
router.post('/getAddress', function(req, res, next) {
  var username = req.cookies.username;
  var sql = `SELECT * FROM address WHERE Username=?`;
  var sqlParams = [username];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 获取订单
router.post('/getOrder', function(req, res, next) {
  var username = req.cookies.username;
  var sql = `SELECT address.*,userorder.* FROM userorder,address WHERE userorder.Username=? AND userorder.Addressid=address.Addressid`;
  var sqlParams = [username];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
// 生成订单
router.post('/createOrder', function(req, res, next) {
  var username = req.cookies.username;
  var goodId = req.body.goodId;
  var cartCount = req.body.cartCount;
  var addressId = req.body.addressId;
  var totalMoney = req.body.totalMoney;
  sql = 'INSERT INTO userorder(Username,Goodid,Ordercount,Addressid,Status,totalMoney) VALUES(?,?,?,?,1,?)';
  var sqlParams = [username, goodId, cartCount, addressId, totalMoney];
  connection.query(sql, sqlParams, function(err, result) {
    if (err) {
      res.json({
        status: 500,
        msg: err,
        data: ''
      });
      return;
    }
    res.json({
      status: 200,
      msg: 'success',
      data: result
    });
  });
});
module.exports = router;

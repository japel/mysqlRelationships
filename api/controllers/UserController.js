/**
 * UserController
 *
 * @description :: Server-side logic for managing Users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  addtodo: function (req, res) {
    var id = req.param('id');
    var todoId = req.param('todoId');

    User.findOne(id)
      .exec(function (error, user) {
        if (error) {
          sails.log.error(error);
        }
        else if (!user) {
          sails.log.info("no user found with id:", id);
        }
        else {
          user.todo.add(todoId);
          user.save(function (error, savedUser) {
            if (error) {
              sails.log.error(error);
            }
            else {
              res.ok(savedUser);
            }
          });

        }
      });

  },
  addgroup:function(req,res){
    var id = req.param('id');
    var groupId = req.param('groupId');

    User.findOne(id)
      .exec(function (error, user) {
        if (error) {
          sails.log.error(error);
        }
        else if (!user) {
          sails.log.info("no user found with id:", id);
        }
        else {
          user.group.add(groupId);
          user.save(function (error, savedUser) {
            if (error) {
              sails.log.error(error);
            }
            else {
              res.ok(savedUser);
            }
          });

        }
      });
  }
};


/**
 * GroupController
 *
 * @description :: Server-side logic for managing Groups
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	adduser:function(req,res){
    var id = req.param('id');
    var userId = req.param('userId');

    Group.findOne(id)
      .exec(function (error, group) {
        if (error) {
          sails.log.error(error);
        }
        else if (!group) {
          sails.log.info("no user found with id:", id);
        }
        else {
          group.user.add(userId);
          group.save(function (error, savedGroup) {
            if (error) {
              sails.log.error(error);
            }
            else {
              res.ok(savedGroup);
            }
          });

        }
      });
  }
};


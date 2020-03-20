const FoldersService = {
    getAllFolders(knex) {
      return knex.select('*').from('folders_noteful')
    },
  
    insertFolder(knex, newFolder) {
      return knex
        .insert(newFolder)
        .into('folders_noteful')
        .returning('*')
        .then(rows => {
          return rows[0]
        })
    },
  
    getById(knex, id) {
      return knex
        .from('folders_noteful')
        .select('*')
        .where('id', id)
        .first()
    },
  
    deleteFolder(knex, id) {
      return knex('folders_noteful')
        .where({ id })
        .delete()
    },
  }
  
  module.exports = FoldersService
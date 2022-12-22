import connection from "../database/db.js";
 
 function getRankingRepository (){    
  const result = connection.query( 
    `  
      SELECT p.id, p.name, COUNT (u."shortUrl") AS linksCount,
        SUM (u."visitCount") AS visitCount
        FROM urls u
        LEFT JOIN users AS p
        ON p.id = u."userId"
        GROUP BY  p.name, p.id
        ORDER BY visitCount DESC
        LIMIT 10
      ; 
    `
  )
  return result
}
export { getRankingRepository}
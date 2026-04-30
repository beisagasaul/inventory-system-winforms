using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class ProductB
    {
        public static int create(Product product)
        {
            using (var context=new INVENTORYDBEntities())
            {
                context.Product.Add(product);
                context.SaveChanges();
                return product.id;
            }
        }

        public static int update(Product product)
        {
            using (var context = new INVENTORYDBEntities())
            {
                var existente = context.Product.Find(product.id);
                if (existente != null)
                {
                    existente.unitOfMeasureId = product.unitOfMeasureId;
                    existente.code = product.code;
                    existente.description = product.description;
                    existente.stock = product.stock;
                    existente.salePrice = product.salePrice;
                    existente.createdBy = product.createdBy;
                    return context.SaveChanges();
                }
             
                return 0;
            }
        }

        public static int delete(int id,string createBy)
        {
            using (var context = new INVENTORYDBEntities())
            {
                var existente = context.Product.Find(id);
                if (existente != null)
                {
                    existente.status = -1;
                    existente.createdBy = createBy;
                    return context.SaveChanges();
                }

                return 0;
            }
        }

        public static Product FindOne(int id)
        {
            using (var context = new INVENTORYDBEntities())
            {
                return context.Product.Find(id);

            }
        }


        public static List<Product> list()
        {
            using (var context = new INVENTORYDBEntities())
            {
                return context.Product
                    .Where(x=>x.status==1)
                    .OrderBy(x=>x.description)
                    .ToList()  ;

            }
        }

        public static List<sp_ProductSearch_Result> listSearch(string parametro)
        {
            using (var context = new INVENTORYDBEntities())
            {
                return context.sp_ProductSearch(parametro.Trim()).ToList();

            }
        }
    }
}

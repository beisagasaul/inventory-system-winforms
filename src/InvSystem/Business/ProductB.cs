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
            if (product == null)
                throw new ArgumentNullException(nameof(product), "El producto no puede ser nulo.");

            using (var context = new INVENTORYDBEntities())
            {
                context.Product.Add(product);
                context.SaveChanges();

                return product.id;
            }
        }

        public static int update(Product product)
        {
            if (product == null)
                throw new ArgumentNullException(nameof(product), "El producto no puede ser nulo.");

            using (var context = new INVENTORYDBEntities())
            {
                var existing = context.Product.Find(product.id);

                if (existing == null)
                    return 0;

                // 🔹 Actualización de campos
                existing.unitOfMeasureId = product.unitOfMeasureId;
                existing.code = product.code;
                existing.description = product.description;
                existing.stock = product.stock;
                existing.salePrice = product.salePrice;

                // ⚠️ OJO: esto debería revisarse (normalmente createdBy no se cambia en update)
                existing.createdBy = product.createdBy;

                return context.SaveChanges();
            }
        }


        public static int delete(int id, string updatedBy)
        {
            using (var context = new INVENTORYDBEntities())
            {
                var existing = context.Product.Find(id);

                if (existing == null)
                    return 0;

                // Soft delete
                existing.status = -1;

                // Auditoría de modificación (no creación)
                existing.createdBy = updatedBy; // ⚠️ mejorar en futuro: usar updatedBy

                return context.SaveChanges();
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
                    .Where(x => x.status == 1)
                    .OrderBy(x => x.description)
                    .ToList();

            }
        }

        //modificar esta con el antiguo
        public static List<sp_ProductSearch_Result> listSearch(string parametro)
        {
            using (var context = new INVENTORYDBEntities())
            {
                return context.sp_ProductSearch(parametro.Trim()).ToList();

            }
        }
    }
}

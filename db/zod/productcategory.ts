import * as z from "zod"
import { CompleteProduct, RelatedProductModel } from "./index"

export const ProductCategoryModel = z.object({
  id: z.number().int(),
  name: z.string(),
})

export interface CompleteProductCategory extends z.infer<typeof ProductCategoryModel> {
  products: CompleteProduct[]
}

/**
 * RelatedProductCategoryModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedProductCategoryModel: z.ZodSchema<CompleteProductCategory> = z.lazy(() => ProductCategoryModel.extend({
  products: RelatedProductModel.array(),
}))

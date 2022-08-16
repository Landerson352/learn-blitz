import * as z from "zod"
import { CompleteImage, RelatedImageModel, CompleteProductCategory, RelatedProductCategoryModel } from "./index"

export const ProductModel = z.object({
  id: z.number().int(),
  name: z.string(),
  productCategoryId: z.number().int().nullish(),
})

export interface CompleteProduct extends z.infer<typeof ProductModel> {
  images: CompleteImage[]
  productCategory?: CompleteProductCategory | null
}

/**
 * RelatedProductModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedProductModel: z.ZodSchema<CompleteProduct> = z.lazy(() => ProductModel.extend({
  images: RelatedImageModel.array(),
  productCategory: RelatedProductCategoryModel.nullish(),
}))

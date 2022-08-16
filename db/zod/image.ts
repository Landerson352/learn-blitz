import * as z from "zod"
import { CompleteProduct, RelatedProductModel } from "./index"

export const ImageModel = z.object({
  id: z.number().int(),
  file: z.string(),
})

export interface CompleteImage extends z.infer<typeof ImageModel> {
  products: CompleteProduct[]
}

/**
 * RelatedImageModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedImageModel: z.ZodSchema<CompleteImage> = z.lazy(() => ImageModel.extend({
  products: RelatedProductModel.array(),
}))

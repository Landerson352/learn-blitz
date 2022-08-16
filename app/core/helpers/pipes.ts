import { resolver } from "@blitzjs/rpc"
import { NotFoundError, paginate } from "blitz"
import db from "db"
import { ProductCategoryModel, ProductModel } from "db/zod"

import { Role } from "./../../../types"

interface Authorization {
  create?: Role[]
  update?: Role[]
  delete?: Role[]
  get?: Role[]
  getMany?: Role[]
}

const config = {
  product: {
    authorization: {} as Authorization,
    manyName: "products",
    db: db.product,
    zod: ProductModel,
  },
  // productCategory: {
  //   authorization: {} as Authorization,
  //   manyName: "productCategories",
  //   db: db.productCategory,
  //   zod: ProductCategoryModel,
  // },
}

type ModelName = keyof typeof config
// type Model<T extends ModelName> = typeof config[T]
// type Db<T extends ModelName> = Model<T>["db"]
// type DbMethod<T extends ModelName> = keyof Db<T>

export const createPipe = <T extends ModelName>(modelName: T) => {
  const model = config[modelName]
  const zod = model.zod.omit({ id: true })
  const callApi = async (input) => {
    return await model.db.create({ data: input })
  }

  const auth = model.authorization?.create

  return auth
    ? resolver.pipe(resolver.zod(zod), resolver.authorize(auth), callApi)
    : resolver.pipe(resolver.zod(zod), callApi)
}

export const updatePipe = <T extends ModelName>(modelName: T) => {
  const model = config[modelName]
  const zod = model.zod
  const callApi = async ({ id, ...data }) => {
    return await model.db.update({ where: { id }, data })
  }

  const auth = model.authorization?.update

  return auth
    ? resolver.pipe(resolver.zod(zod), resolver.authorize(auth), callApi)
    : resolver.pipe(resolver.zod(zod), callApi)
}

export const deletePipe = <T extends ModelName>(modelName: T) => {
  const model = config[modelName]
  const zod = model.zod.pick({ id: true })
  const callApi = async ({ id }) => {
    return await model.db.deleteMany({ where: { id } })
  }

  const auth = model.authorization?.delete

  return auth
    ? resolver.pipe(resolver.zod(zod), resolver.authorize(auth), callApi)
    : resolver.pipe(resolver.zod(zod), callApi)
}

// export const pipe = <T extends ModelName>(modelName: T, modelMethod: DbMethod<T>) => {
//   switch (modelMethod) {
//     case "create":
//       return createPipe(modelName)
//     case "update":
//       return updatePipe(modelName)
//     case "deleteMany":
//       return deleteManyPipe(modelName)
//     default:
//       throw new Error(`Unknown model method: ${String(modelMethod)}`)
//   }
// }

export const getPipe = <T extends ModelName>(modelName: T) => {
  const model = config[modelName]
  const zod = model.zod.pick({ id: true })
  const callApi = async ({ id }) => {
    const entity = await model.db.findFirst({ where: { id } })
    if (!entity) throw new NotFoundError()
    return entity
  }

  const auth = model.authorization?.get

  return auth
    ? resolver.pipe(resolver.zod(zod), resolver.authorize(auth), callApi)
    : resolver.pipe(resolver.zod(zod), callApi)
}

export const getManyPipe = <T extends ModelName>(modelName: T) => {
  const model = config[modelName]

  interface GetManyInput
    extends Pick<
      NonNullable<Parameters<typeof model.db.findMany>[0]>,
      "where" | "orderBy" | "skip" | "take"
    > {}

  const callApi = async ({ where, orderBy, skip = 0, take = 100 }: GetManyInput) => {
    const { items, hasMore, nextPage, count } = await paginate({
      skip,
      take,
      count: () => model.db.count({ where }),
      query: (paginateArgs) => model.db.findMany({ ...paginateArgs, where, orderBy }),
    })

    return {
      [model.manyName || "items"]: items,
      nextPage,
      hasMore,
      count,
    }
  }

  const auth = model.authorization?.getMany

  return auth ? resolver.pipe(resolver.authorize(auth), callApi) : resolver.pipe(callApi)
}

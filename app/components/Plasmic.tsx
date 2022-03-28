import { PlasmicRootProvider, PlasmicComponent } from "@plasmicapp/loader-nextjs"
import { PLASMIC } from "../plasmic-init"

const Provider: React.FC<{ pageProps: any }> = ({ children, pageProps }) => {
  return (
    <PlasmicRootProvider loader={PLASMIC} prefetchedData={pageProps.plasmicData}>
      {children}
    </PlasmicRootProvider>
  )
}

// For production, use Next's static or SSR page methods:
// https://docs.plasmic.app/learn/nextjs-quickstart/

// Statically fetch the data needed to render Plasmic pages or components.
export const getPageProps = async (...args: string[]) => {
  // You can pass in multiple page paths or component names.
  const plasmicData = await PLASMIC.fetchComponentData(...args)
  return {
    props: {
      plasmicData,
    },
  }
}

const Plasmic = {
  Provider,
  Component: PlasmicComponent,
  getPageProps,
}

export default Plasmic

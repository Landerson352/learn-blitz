import React from "react"
import Plasmic from "../components/Plasmic"

/**
 * A page demonstrating how to use Plasmic components in Next.js.
 */

/**
 * Load required components at build time.
 * (Uncomment the block below to load at runtime instead.)
 */
export const getStaticProps = async () => {
  return Plasmic.getPageProps("Blank", "ProductCard")
}

export default function PlasmicDemoPage(props) {
  return (
    <Plasmic.Provider pageProps={props}>
      <Plasmic.Component
        component="Blank"
        componentProps={{
          pageContent: (
            <React.Fragment>
              <p>This is a Plasmic page design...</p>
              <Plasmic.Component component="ProductCard" />
              <p>...with mixed content from Plasmic and Blitz.</p>
            </React.Fragment>
          ),
        }}
      />
    </Plasmic.Provider>
  )
}

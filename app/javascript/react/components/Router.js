import React from 'react'
import { BrowserRouter } from 'react-router-dom'
import { Route } from 'react-router-dom'

import App from './App'

const Router = props => {
  return(
    <BrowserRouter>
      <App/>
    </BrowserRouter>
  )
}

export default Router

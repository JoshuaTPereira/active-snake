import React from 'react'
import { Switch, Route } from 'react-router-dom'

import OpenGamesContainer from '../containers/OpenGamesContainer'

export const App = props => {
  return (
    <Switch>
      <Route exact path='/' component={OpenGamesContainer} />
    </Switch>
  )
}

export default App

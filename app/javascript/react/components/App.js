import React from 'react'
import { Switch, Route } from 'react-router-dom'

import OpenGamesContainer from '../containers/OpenGamesContainer'
import NewGameContainer from '../containers/NewGameContainer'

export const App = props => {
  return (
    <Switch>
      <Route exact path='/games' component={OpenGamesContainer} />
      <Route exact path='/games/new' component={NewGameContainer} />
    </Switch>
  )
}

export default App

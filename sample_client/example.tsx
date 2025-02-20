import "playbook-ui/dist/reset.css"
import "playbook-ui/dist/playbook.css"

import "@fortawesome/fontawesome-free/js/all.min.js"

import { StrictMode } from "react"
import ReactDOM from "react-dom"
import { Title } from "playbook-ui"

import { AudienceEditor } from "."

const audienceKey =
  "eyJfcmFpbHMiOnsiZGF0YSI6ImdpZDovL2F1ZGllbmNlcy1zYW5kYm94L0F1ZGllbmNlczo6Q29udGV4dC8zIiwiZXhwIjoiMjAyNS0wMy0yMFQxODozNjoxMC40NTJaIiwicHVyIjoiYXVkaWVuY2VzIn19--d89c3b8250c326fb95d5e65e4b8db5523e3fee05"

const rootNode = document.getElementById("root")
ReactDOM.render(
  <StrictMode>
    <Title>Audiences Example</Title>
    <AudienceEditor
      uri={`http://localhost:3000/audiences/${audienceKey}`}
      scimUri={`http://localhost:3000/audiences/scim`}
      key={audienceKey}
    />
  </StrictMode>,
  rootNode,
)

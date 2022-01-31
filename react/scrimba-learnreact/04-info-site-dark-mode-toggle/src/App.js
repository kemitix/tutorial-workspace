import Navbar from "./components/Navbar"
import Main from "./components/Main"

export default function App() {
    return (
        <div className="container">
            <Navbar darkMode={true} />
            <Main darkMode={true} />
        </div>
    )
}
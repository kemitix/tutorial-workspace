import Navbar from "./components/Navbar"
import Main from "./components/Main"
import {useState} from "react";

export default function App() {
  const [darkMode, setDarkMode] = useState(true);
  const toggleDarkMode = () => setDarkMode(!darkMode);
    return (
        <div className="container">
            <Navbar darkMode={darkMode} toggleDarkMode={toggleDarkMode} />
            <Main darkMode={darkMode} />
        </div>
    )
}

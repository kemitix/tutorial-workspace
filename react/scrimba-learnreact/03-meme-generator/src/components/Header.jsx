import logo from '../images/troll-face.png';

export default function Header() {
    return (
        <div className="header">
            <img className="header--logo" src={logo} />
            <span className="header--title">MemeGenerator</span>
            <span className="header--subtitle">React Course - Project 3</span>
        </div>
    );
}

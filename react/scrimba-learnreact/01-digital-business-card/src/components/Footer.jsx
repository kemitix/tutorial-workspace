import twitter from '../images/Twitter Icon.png';
import facebook from '../images/Facebook Icon.png';
import instagram from '../images/Instagram Icon.png';
import github from '../images/GitHub Icon.png';

export default function Footer() {
    return (
    <div className="footer">
        <img className='footer--icon' src={twitter} />
        <img className='footer--icon' src={facebook} />
        <img className='footer--icon' src={instagram} />
        <img className='footer--icon' src={github} />
    </div>);
}

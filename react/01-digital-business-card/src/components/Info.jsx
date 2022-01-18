import emailIcon from '../images/email.png';
import linkedinIcon from '../images/linkedin.png';

export default function Info(props) {
    return (
        <div className="info">
            <img className="info--photo" src={props.photo} />
            <div className="info--name">{props.name}</div>
            <div className="info--job">{props.job}</div>
            <div className="info--website">
                <a href={props.url}>{props.website}</a>
            </div>
            <div className="info--buttons">
                <button className="info--email" onClick={props.onClickEmail}>
                    <img src={emailIcon} /> <span className='info--button-text'>Email</span>
                </button>
                <button className="info--linkedin" onClick={props.onClickLinkedin}>
                    <img src={linkedinIcon} /> <span className='info--button-text'>Linkedin</span>
                </button>
            </div>
        </div>
    );
}

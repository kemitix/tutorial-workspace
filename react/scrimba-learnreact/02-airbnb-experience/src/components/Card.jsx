export default function Card(props) {
    return (
        <div className='card'>
            <img src={`/images/${props.coverImg}`} className="card--image" />
            <div className='card--info'>
                <div className='card--info-row'>
                    <img src="/images/star.png" className="card--star" />
                    <span className='card--info-rating'>{props.stats.rating}</span>
                    <span className='card--info-reviews'>({props.stats.reviewCount})</span>
                    &nbsp;•&nbsp;
                    <span className="card--info-location">{props.location}</span>
                </div>
                <div className='card--info-row card--info-title'>
                    <span>{props.title}</span>
                </div>
                <div className='card--info-row card--info-cost'>
                    <strong>From ${props.price}</strong> / person
                </div>
            </div>
        </div>
    );
}
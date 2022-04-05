import { useRouter } from 'next/router';
import { Fragment } from 'react';
import Link from 'next/link';

// list of new items

function DetailPage() {
    const router = useRouter();
    const newsId = router.query.newsId;
    console.log(`newsId = ${newsId}`);
    return (
      <Fragment>
        <h1>The Detail Page {newsId}</h1>
        <Link href="/news/">&lt; Back</Link>
      </Fragment>
    );
}

export default DetailPage;

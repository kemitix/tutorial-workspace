import api, {route} from '@forge/api';

export const run = async ({issue}) => {
    const {key: issueKey} = issue;
    const response = await api.asApp()
        .requestJira(route`/rest/api/3/issue/${issueKey}`);
    const issueJson = await response.json();
    return {
        result: !!issueJson.fields.assignee,
        errorMessage: "The issue must have an assignee before transitioning."
    };
};

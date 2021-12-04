# Bobby B Docker image

Bobby B Bot running in Docker container w/ workflows for CD.

## Setup

1. Get a bot token
2. [Create a Service Principal](https://github.com/Azure/login#configure-a-service-principal-with-a-secret) for your Azure Subscription

   ```bash
    az ad sp create-for-rbac --name "myApp" --role contributor \
                          --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \
                          --sdk-auth
   ```

3. Set the bot token and Service Principal as secrets on your fork of this repository. They should be named `TOKEN` and `AZURE_CREDENTIALS` respectively.
4. Run the `deploy.yaml` workflow to build the image and deploy it to an Azure Container Instance. It pushes the image to GitHub Container Registry.

The workflow assumes your fork of the repository is public, so that the Container Instance can anonymously pull your image. If you decide to make your repo private, you'll need to update the workflow to provide credentials to the registry (likely with a PAT token).

## Credits

- https://github.com/bobby-b-bot/discord
- https://github.com/bobby-b-bot/utils

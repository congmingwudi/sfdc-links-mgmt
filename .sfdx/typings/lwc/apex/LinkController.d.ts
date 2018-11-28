declare module "@salesforce/apex/LinkController.getLinks" {
  export default function getLinks(): Promise<any>;
}
declare module "@salesforce/apex/LinkController.getLinksByCategory" {
  export default function getLinksByCategory(param: {targetCategory: any}): Promise<any>;
}

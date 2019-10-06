// function getParameter(paramName) {
//   let ssm = new AWS.SSM();
//   let params = {
//       Name: paramName,
//       WithDecryption: true
//   };

//   return new Promise((resolve, reject) => {
//       ssm.getParameter(params, (err, data) => {
//           if (err) {
//               reject(err);
//           } else {
//               resolve(data.Parameter['Value']);
//           }
//       });
//   });
// }

const poolId = 'us-east-1_j03Ole3ui'

const clientId = '37efg02gahf33jj7fsp0ai6fvt'

const cognitoSettings = {
  UserPoolId: poolId,
  ClientId: clientId
}

const apiGPrefix = 'https://s17drljvo9.execute-api.us-east-1.amazonaws.com/dev/'

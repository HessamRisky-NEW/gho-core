// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {IVariableDebtToken} from '../../../dependencies/aave-tokens/interfaces/IVariableDebtToken.sol';

interface IAnteiVariableDebtToken is IVariableDebtToken {
  /**
   * @dev Emitted when variable debt contract is set
   * @param aToken Antei aToken contract
   **/
  event ATokenSet(address indexed aToken);

  /**
   * @dev Sets a reference to the Antei AToken contract
   * @dev Only callable by the pool admin
   * @param aToken Antei aToken contract
   **/
  function setAToken(address aToken) external;

  /**
   * @dev Returns the address of the Antei AToken contract
   **/
  function getAToken() external view returns (address);
}

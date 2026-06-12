using System.Collections.Generic;
using UnityEngine;
using Character.data;
using Global;
using GamePlay.Skill;
using GamePlay.Units;
using Managers;
using Command;
using System.Linq;
using static GamePlay.Grid.AStar;

namespace GamePlay.Grid
{
    class BFS
    {
        /// <summary>
        /// 返回目标到所有能到的格子和相应的最短路径，AStar也有类似的函数 但那个不会返回距离
        /// </summary>
        /// <param name="start"></param>
        /// <param name="end"></param>
        /// <param name="grid"></param>
        /// <param name="stats"></param>
        /// <returns></returns>
        // public static Dictionary<Vector3Int,float> FindAllPath(Vector3Int start, int moveRange, LogicalGrid grid, UnitMoveStats stats)
        // {
        //     Dictionary<Vector3Int,float> reachableMap = new Dictionary<Vector3Int, float>();
        //     Dictionary<Vector3Int, float> costSoFar = new Dictionary<Vector3Int, float>();
        //     List<Node> openSet = new List<Node>();

        //     Node startNode = new Node(start) { gCost = 0 };
        //     openSet.Add(startNode);
        //     costSoFar[start] = 0;

        //     while (openSet.Count > 0)
        //     {
        //         Node currentNode = openSet.OrderBy(n => n.gCost).First();
        //         openSet.Remove(currentNode);
        //         reachableMap.Add(currentNode.position,currentNode.gCost);

        //         foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
        //         {
        //             float distCost = 1.0f; 
                    
        //             float currentStandY = currentNode.position.y + grid.GetBlockYSize(currentNode.position);
        //             float targetStandY = neighborPos.y + grid.GetBlockYSize(neighborPos);
        //             float heightCost = Mathf.Abs(targetStandY - currentStandY); 
                    
        //             float newCost = currentNode.gCost + distCost + heightCost;

        //             if (newCost > moveRange) continue;

        //             if (!costSoFar.ContainsKey(neighborPos) || newCost < costSoFar[neighborPos])
        //             {
        //                 costSoFar[neighborPos] = newCost;
        //                 openSet.Add(new Node(neighborPos) { gCost = newCost });
        //             }
        //         }
        //     }
        //     return reachableMap;
        // }        
    }
}
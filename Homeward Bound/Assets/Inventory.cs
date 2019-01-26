using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum ItemID { Stick, Flashlight, Flag, FiveBucks, Baseball, Toys, Keys, CatFood, Cat, Leaves }

public class Inventory : MonoBehaviour
{
    ItemID equipped;


    //Basic inventory {{Item name, has item in inventory}}
    public static Dictionary<ItemID, bool> inventory = new Dictionary<ItemID, bool>()
    {
        {ItemID.Stick, false},
        {ItemID.Flashlight, false},
        {ItemID.Flag, false},
        {ItemID.FiveBucks, false},
        {ItemID.Baseball, false},
        {ItemID.Toys, false},
        {ItemID.Keys, false},
        {ItemID.CatFood, false},
        {ItemID.Cat, false},
        {ItemID.Leaves, false}
        //{ },

    };
    

    public void UpdateInventory()
    {
        foreach(ItemID i in inventory.Keys)
        {
            if(inventory[i])
            {
                //Activate ItemID i in the UI
            }
            else
            {
                //Deactivate ItemID i in the UI
            }
        }
    }
}

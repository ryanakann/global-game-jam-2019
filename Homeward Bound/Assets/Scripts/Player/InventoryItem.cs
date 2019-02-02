using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ItemID {
    Hand,
    Flashlight,
    Flag,
    FiveBucks,
    Baseball,
    Keys,
    CatFood,
    Cat,
    Leaves,
    Stick,
}

[CreateAssetMenu(fileName = "Data", menuName = "Inventory/List", order = 1)]
public class InventoryItem : ScriptableObject
{
    public Sprite sprite;
    public GameObject obj;
    public ItemID id;
    public string header;
    public string body;
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LocationMap : MonoBehaviour
{

    public static LocationMap instance;

    public Transform mountain, cave, forest, lake, castle, home;

    private void Awake()
    {
        if(instance == null) {
            instance = this;
        } else {
            Destroy(this);
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public Transform Waypoint(Location loc) {
        switch(loc) {
            case Location.Castle:
                return castle;
            case Location.Cave:
                return cave;
            case Location.Forest:
                return forest;
            case Location.Lake:
                return lake;
            case Location.Mountain:
                return mountain;
            default:
                return home;
        }
    }
}

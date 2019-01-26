using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void TriggerDel(EventTrigger _trigger);

public class EventTrigger : MonoBehaviour
{
    public TriggerDel TriggerEvent;
}

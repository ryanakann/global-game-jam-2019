using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Messages
{
    static string[] goodboys = new string[] {
        "Today was a good day."
    };

    static string[] badboys = new string[] {
        "Tough luck..."
    };

    public static string Good() {
        return goodboys[Random.Range(0, goodboys.Length)];
    }

    public static string Bad() {
        return badboys[Random.Range(0, badboys.Length)];
    }
}

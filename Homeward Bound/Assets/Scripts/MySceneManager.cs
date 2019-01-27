using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class MySceneManager
{

    public static void NextLevel()
    {
        if (SceneManager.GetActiveScene().buildIndex + 1 <= SceneManager.sceneCount)
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }

    public static void LoadSceneByName(string name)
    {
        SceneManager.LoadScene(name);
    }
}

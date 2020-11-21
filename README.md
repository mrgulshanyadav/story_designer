# story_designer


Show some ❤️ and star the repo to support the project
-

[LinkedIn](https://www.linkedin.com/in/mrgulshanyadav)

------------
If you want to contribute to this project create a pull request.
-------------------------------


A package for creating instagram like story, you can use this package to edit images and make it story ready by adding other contents over it like text.

![Alt Text](https://raw.githubusercontent.com/mrgulshanyadav/story_designer/master/showcase.gif)

## Getting Started

Add this to your package's pubspec.yaml file:

```
dependencies:
  story_designer: ^0.0.8
```

## Use it like this

        File editedFile = await Navigator.of(context).push(
            new MaterialPageRoute(builder: (context)=> StoryDesigner(
              filePath: file.path,
            ))
        );

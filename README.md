# story_designer

A package for creating instagram like story, you can use this package to edit images and make it story ready by adding other contents over it like text.

## Getting Started

Add this to your package's pubspec.yaml file:

dependencies:
  story_designer: ^0.0.2


## Use it like this

        File editedFile = await Navigator.of(context).push(
            new MaterialPageRoute(builder: (context)=> StoryDesigner(
              filePath: file.path,
            ))
        );

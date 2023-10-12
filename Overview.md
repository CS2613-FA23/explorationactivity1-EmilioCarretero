# Package Overview

1. ### **Which package/library did you select?**
	- I selected the Octave Image Processing package. Package found at: [Octave Forge.](https://octave.sourceforge.io/image/ "Image Processing Package found in The Octave Forge")

2. ### **What is the package/library?**
	- This package can import images generates a GUI that can manipulate an imported image. These images are treated like matricies, which allows you to plot over them and use other general matrix functions.
	- I used this package to import a .jpg image from your files and plot over the image to create a two-colour scheme image. In my sample program I use the *imread()* function as well as the *imshow()* function to open the image and display it. I then use the *find()* to select all pixels of a certain intensity, the program then plots a mark on all pixels above this intensity. The same thing is done but with pixels below this intesity. Another useful part of this package is the colour conversion functions. My program could have also been done using these functions, I wanted to explore the use of treating the image as a matrix.

3. ### **What are the functionalities of the package/library?**
	- Functionalities of the package include:
		- **Loading and Saving Images**
			Most image processing programs start with *imread*, the corresponding function *imwrite* is to write images to the disk.
			**Example code:**
			```
			I = imread ("my_input_image.img");
			J = process_my_image (I);
			imwrite (J, "my_output_image.img");
			```
			Sample Code: [Octave Documents.](https://docs.octave.org/latest/Image-Processing.html "The Octave Documentation for Image Processing Package")
		- **Displaying Images**
			Visualizing the image is an obvious part of image processing. The most basic function being *imshow*.
		- **Representing Images**
			Octave supports four kinds of images, grayscale images, RGB images, binary images, and indexed images.
			**Example code:**
			```
			I = imread ("myimage.jpg");
			S = conv2 (I, ones (5, 5) / 25, "same");
			[Dx, Dy] = gradient (S);
			```
			Sample Code: [Octave Documents.](https://docs.octave.org/latest/Image-Processing.html "The Octave Documentation for Image Processing Package")
		- **Plotting on top of Images**
			It is possible to plot on top of images since they are treated like matricies in Octave. To plot points given x, y values, you simply call the function *plot*.
			**Example code:**
			```
			I = rand (100, 100);
			[row, col] = find (I > 0.99);
			hold ("on");
			imshow (I);
			plot (col, row, "ro");
			hold ("off");
			```
			Sample Code: [Octave Documents.](https://docs.octave.org/latest/Image-Processing.html "The Octave Documentation for Image Processing Package")
		- **Colour Conversion**
			It is possible to convert the different kinds of images, from *RGB* to *HSV* and vice versa
			

4. ### **When was it created?**
	- The package was created in **2022-03-26**. Found: [Source Forge.](https://sourceforge.net/projects/octave/files/Octave%20Forge%20Packages/Individual%20Package%20Releases/ "The release of every package in Octave").

5. ### **Why did you select this package/library?**
	- I selected an Octave package because I knew most students would be using a Python package. I also thought this could be good practice in Octave, since it's one of the languages giving me the most trouble at the moment.
	- I picked this package in particular because most of the Octave packages looked very engineering heavy. Since I'm not an engineer I decided to download a package that had a more visual aspect to it.

6. ### **How did learning the package/library influence your learning of the language?** 
	- Using and exploring the functions of this package definetly helped me understand the different uses of Octave. But as for actual practice, no I don't feel I got very much technical practice. However, this was expected since this Exploration Activity is meant to give us an introduction to a new package and is not meant to be a technical exercise.

7. ### **How was your overall experience with the package/library?**
	- I would recommend this package to someone if they were working with visual programs where they either needed to plot on an image or manipulate images. For example I think this package would be very useful in a program that used maps. It would be very easy to plot different points on a map and the GUI allows you to zoom in and out and manipulate the orientation of the image.
	- Yes I would use this package again. I don't believe my sample program was the best use of this package and if I was to do it again I would make some program to plot over maps. I can easily see how you could find the highest and lowest point on an altitude map using the same functions I did.

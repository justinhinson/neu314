picture = imread("el-capitan.png")
imshow(picture)
function getRGB(filename)
    load_pic = imread(filename)
    imshow(load_pic)
    red = load_pic[:, :, 1]
    green = load_pic[:, :, 2]
    blue = load_pic[:, :, 3]
    return red, green, blue
end
getRGB("el-capitan.png")

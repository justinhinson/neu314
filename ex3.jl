picture = imread("el-capitan.png")
# imshow(picture)
function getRGB(filename)
    load_pic = imread(filename)
    imshow(load_pic)
    red = load_pic[:, :, 1]
    green = load_pic[:, :, 2]
    blue = load_pic[:, :, 3]
    return red, green, blue
end
#getRGB("el-capitan.png")
#println("Reset with git reset --mixed")
pic_red, pic_green, pic_blue = getRGB("el-capitan.png")
image2 = zeros((360,640,3))
image2[:, :, 1] = pic_green
image2[:, :, 2] = pic_blue
image2[:, :, 3] = pic_red
figure(figsize=[500,700])
title("Image RGB Comparison")
axis("off")
subplot(1,2,1)
imshow(picture)
subplot(1,2,2)
imshow(image2)

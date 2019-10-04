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
getRGB("el-capitan.png")
println("Reset with git reset --mixed")
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
function circularRotateRed(image, p)
    red_channel = image[:, :, 1]
    num_rows = size(red_channel)[1]
    first = red_channel[1,: ]
    shuffler = 0
    while shuffler < p
        for i=1:num_rows - 1
            if i == num_rows - 1
                red_channel[i,: ] = first
            else
                red_channel[i,: ] = red_channel[i + 1,: ]
            end
        end
        shuffler = shuffler + 1
    end
    return image
end
test_image = circularRotateRed(picture, 180)
figure(figsize=[500,700])
title("Image Rotation Comparison")
axis("off")
subplot(1,2,1)
imshow(picture)
subplot(1,2,2)
imshow(test_image)

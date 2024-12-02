img = imread('image.jpg');  %add your image
%grayscale
grayImg = rgb2gray(img);


[rows, cols] = size(grayImg);


fileID = fopen('image_old.txt', 'w');
for r = 1:rows
    for c = 1:cols
        %rgb value all same 
        intensity = grayImg(r, c);
        binary_value = dec2bin(intensity, 8);  
        fprintf(fileID, '(%s, %s, %s)\n', binary_value, binary_value, binary_value);
    end
end
fclose(fileID);

%---------------------------------------------------------------------------------


file1 = fopen('encrmsg.txt', 'r');
binaryValue = fgetl(file1);
L=length(binaryValue);
fclose(file1);

file2 = fopen('image_old.txt', 'r');
matrixText = textscan(file2, '%s', 'Delimiter', '\n');
fclose(file2);
matrixText = matrixText(1);
matrix_new=matrixText;
matrixText = matrixText{1,1};

for row = 1:64 %considering 64 encryopted message
    line = matrixText{row}; 
    line = strrep(line, '(', '');  %remove brackets
    line = strrep(line, ')', '');
    elements = strsplit(line, ', ');

    bit = binaryValue(row)  ;

    for col = 1:3
        elements{col}(end) = bit; % Replace the last bit with corresponding encr bit   
    end
    
    matrixText{row} = sprintf('(%s, %s, %s)', elements{1}, elements{2}, elements{3});
end

file3 = fopen('encr_image.txt', 'w');
for row = 1:length(matrixText)
    fprintf(file3, '%s\n', matrixText{row});
end
fclose(file3);

%-----------------------------------------


fileID = fopen('encr_image.txt', 'r');
imageData = [];
imageLines = textscan(fileID, '%s'); 
fclose(fileID);

numLines = length(imageLines{1});

for i = 1:numLines
    line = imageLines{1}{i};
    values = sscanf(line, '(%s, %s, %s)'); 
    intensity = bin2dec(char(values(1:end-1)))'; 
    imageData = [imageData, intensity];
end

rows = r; 
cols = c; 
imageData = reshape(imageData, [cols, rows])'; 
imageData = uint8(imageData);
imwrite(imageData, 'encr_image.jpg');






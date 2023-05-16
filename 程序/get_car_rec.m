function res = get_car_rec(Img)
if nargin < 1
    Img = imread(fullfile(pwd, 'images/��NU9K26.jpg'));
end
I_gray=rgb2gray(Img);                       %��ͼ��I���лҶȴ���
I_edge=edge(I_gray,'sobel');              %����Sobel���ӽ��б�Ե���
se=[1;1;1];
I_erode=imerode(I_edge,se);             %�Ա�Եͼ����и�ʴ
se=strel('rectangle',[25,25]);
I_close=imclose(I_erode,se);             %���ͼ��
I_final=bwareaopen(I_close,1500);        %ȥ�����ŻҶ�ֵС��1500�Ĳ���
I_new=zeros(size(I_final,1),size(I_final,2));
location_of_1=[];
for i=1:size(I_final,1)                      %Ѱ�Ҷ�ֵͼ���а׵ĵ��λ��
    for j=1:size(I_final,2)
        if I_final(i,j)==1;
            newlocation=[i,j];
            location_of_1=[location_of_1;newlocation];
        end
    end
end
mini=inf;maxi=0;
for i=1:size(location_of_1,1)    %Ѱ�����а׵��У�x������y����ĺ������С���������λ��
    temp=location_of_1(i,1)+location_of_1(i,2);
    if temp<mini
        mini=temp;
        a=i;
    end
    if temp>maxi
        maxi=temp;
        b=i;
    end
end
first_point=location_of_1(a,:);             %����С�ĵ�Ϊ���Ƶ����Ͻ�
last_point=location_of_1(b,:);             %�����ĵ�Ϊ���Ƶ����½�
x1=first_point(1)+10;                      %����ֵ����
x2=last_point(1)-4;
y1=first_point(2)+10;
y2=last_point(2)-4;
I_plate=Img(x1:x2,y1:y2);
g_max=double(max(max(I_plate)));
g_min=double(min(min(I_plate)));
T=round(g_max-(g_max-g_min)/3);         % T Ϊ��ֵ������ֵ
I_plate =im2bw (I_plate,T/256);
I_plate=bwareaopen(I_plate,20);
I_plate(: ,y2)=0;
I_plate=bwareaopen(I_plate,100);
X=[];                               %�������ˮƽ�ָ��ߵĺ�����
z=0;
flag=0;
for j=1:size(I_plate,2)
    sum_y=sum(I_plate(:,j));
    if logical(sum_y)~=flag          %�к��б仯ʱ����¼�´���
        if(j-z>10)
            X=[X j];
            flag=logical(sum_y);
            z=j;                        %��z��¼��һ��j��ֵ����ֹ������������̫С
        end
    end
    
end

for n=1:7
    res=I_plate(:,X(2*n-1):X(2*n)-1);     %���дַָ�
    for i=1:size(res,1)                  %������forѭ���Էָ��ַ������½��вü�
        if sum(res(i,:))~=0
            top=i;
            break
        end
    end
    for i=1:size(res,1)
        if sum(res(size(res,1)-i,:))~=0
            bottom=size(res,1)-i;
            break
        end
    end
    res=res(top:bottom,:);
    
    %      subplot(2,4,n);imshow(char);
    res=imresize(res,[40,20],'nearest');    %��һ��Ϊ40*20�Ĵ�С���Ա�ģ��ƥ��
    imgchar{n}=res;
    % eval(strcat('Char_',num2str(n),'=char;'));  %���ָ���ַ�����Char_i��
end

res=[];
store1=strcat('��','ԥ','��','��','��','��','³','��','��','��','��','��','��','��','��','��','��','��','��','��','��');  %��������ʶ��ģ���
for j=1:21
    Im=imgchar{1};
    Template=imread(strcat('���ƺ��ֿ�\',num2str(j),'.jpg'));
    Template=im2bw(Template);
    Differ=Im-Template;
    Compare(j)=sum(sum(abs(Differ)));
end
index=find(Compare==(min(Compare)));
res=[res store1(index)];
store2=strcat('A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'); %������ĸ������ʶ��ģ���
for i=2:7
    for j=1:34
        Im=imgchar{i};
        Template=imread(strcat('�����ַ���\',num2str(j),'.jpg'));
        Template=im2bw(Template);
        Differ=Im-Template;
        Compare(j)=sum(sum(abs(Differ)));
    end
    index=find(Compare==(min(Compare)));
    res=[res store2(index)];
end

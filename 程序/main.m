function varargout = main(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @main_OpeningFcn, ...
    'gui_OutputFcn',  @main_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;
clc; warning off all;
axes(handles.axes1); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes2); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes3); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes4); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes5); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes6); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes7); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes8); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes9); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes10); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes11); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes12); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes13); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes14); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes15); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
set(handles.edit1, 'string', []);
handles.Img=[];
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes2); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes3); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes4); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes5); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes6); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes7); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes8); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes9); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes10); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes11); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes12); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes13); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes14); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
axes(handles.axes15); cla reset; box on; set(gca, 'XTickLabel', [], 'YTickLabel', []);
set(handles.edit1, 'string', []);
set(handles.edit2, 'string', []);

[filename, pathname] = uigetfile({'*.jpg;*.tif;*.png;*.gif', 'All Image Files';...
    '*.*', '�����ļ�' }, 'ѡ��ͼ���ļ�', fullfile(pwd, 'images/��F1A666.jpg'));

if filename == 0
    return;
end
% �ļ���
file = fullfile(pathname, filename);
% ͼ�����
Img = imread(file);
%�����һ�������
axes(handles.axes1);
imshow(Img, []);
%����ڶ��������
axes(handles.axes2);
imshow(Img, []);
%����Ϊȫ�ֱ���
handles.Img = Img;
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Img=handles.Img;
%��ͼ��I���лҶȴ���
I_gray=rgb2gray(Img);
axes(handles.axes3);
imshow(I_gray);
title('�Ҷ�ͼ��');
%����Sobel���ӽ��б�Ե���
I_edge=edge(I_gray,'sobel');
axes(handles.axes4);
imshow(I_edge)
title('��Ե����ͼ��');
se=[1;1;1];
%�Ա�Եͼ����и�ʴ
I_erode=imerode(I_edge,se);
axes(handles.axes5);
imshow(I_erode);
title('��ʴ���Եͼ��');
se=strel('rectangle',[25,25]);
%���ͼ��
I_close=imclose(I_erode,se);
axes(handles.axes6);
imshow(I_close)
title('����ͼ��');
%ȥ�����ŻҶ�ֵС��1500�Ĳ���
I_final=bwareaopen(I_close,1500);
axes(handles.axes7);
imshow(I_final);
title('��̬�˲���ͼ��');

I_new=zeros(size(I_final,1),size(I_final,2));
location_of_1=[];
%Ѱ�Ҷ�ֵͼ���а׵ĵ��λ��
for i=1:size(I_final,1)
    for j=1:size(I_final,2)
        if I_final(i,j)==1;
            newlocation=[i,j];
            location_of_1=[location_of_1;newlocation];
        end
    end
end
mini=inf;maxi=0;
%Ѱ�����а׵��У�x������y����ĺ������С���������λ��
for i=1:size(location_of_1,1)
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
%����С�ĵ�Ϊ���Ƶ����Ͻ�
first_point=location_of_1(a,:);
%�����ĵ�Ϊ���Ƶ����½�
last_point=location_of_1(b,:);
%����ֵ����
x1=first_point(1)+10;
x2=last_point(1)-4;
y1=first_point(2)+10;
y2=last_point(2)-4;
I_plate=Img(x1:x2,y1:y2);
g_max=double(max(max(I_plate)));
g_min=double(min(min(I_plate)));
% TΪ��ֵ������ֵ
T=round(g_max-(g_max-g_min)/3);
I_plate =im2bw (I_plate,T/256);
I_plate=bwareaopen(I_plate,20);
I_plate(: ,y2)=0;
axes(handles.axes8);
I_plate=bwareaopen(I_plate,100);
%�������ճ���
imshow(I_plate)
title('������ȡ')


%�������ˮƽ�ָ��ߵĺ�����
X=[];
z=0;
flag=0;

for j=1:size(I_plate,2)
    sum_y=sum(I_plate(:,j));
    %�к��б仯ʱ����¼�´���
    if logical(sum_y)~=flag
        if(j-z>10)
            X=[X j];
            flag=logical(sum_y);
            %��z��¼��һ��j��ֵ����ֹ������������̫С
            z=j;
        end
    end
    
end

for n=1:7
    %���дַָ�
    char=I_plate(:,X(2*n-1):X(2*n)-1);
    %������forѭ���Էָ��ַ������½��вü�
    for i=1:size(char,1)
        if sum(char(i,:))~=0
            top=i;
            break
        end
    end
    for i=1:size(char,1)
        if sum(char(size(char,1)-i,:))~=0
            bottom=size(char,1)-i;
            break
        end
    end
    char=char(top:bottom,:);
    %��һ��Ϊ40*20�Ĵ�С���Ա�ģ��ƥ��
    char=imresize(char,[40,20],'nearest');
    segchar(n,:,:)=char(:,:);
    %���ָ���ַ�����Char_i��
    eval(strcat('Char_',num2str(n),'=char;'));
end
axes(handles.axes9);
imgchar(:,:)=segchar(1,:,:);
imshow(imgchar)
axes(handles.axes10);
imgchar(:,:)=segchar(2,:,:);
imshow(imgchar)
axes(handles.axes11);
imgchar(:,:)=segchar(3,:,:);
imshow(imgchar)
axes(handles.axes12);
imgchar(:,:)=segchar(4,:,:);
imshow(imgchar)
axes(handles.axes13);
imgchar(:,:)=segchar(5,:,:);
imshow(imgchar)
axes(handles.axes14);
imgchar(:,:)=segchar(6,:,:);
imshow(imgchar)
axes(handles.axes15);
imgchar(:,:)=segchar(7,:,:);
imshow(imgchar)
char=[];
store1=strcat('��','ԥ','��','��','��','��','³','��','��','��','��','��','��','��','��','��','��','��','��','��','��');  %��������ʶ��ģ���
for j=1:21
    Im=Char_1;
    Template=imread(strcat('���ƺ��ֿ�\',num2str(j),'.jpg'));
    Template=im2bw(Template);
    Differ=Im-Template;
    Compare(j)=sum(sum(abs(Differ)));
end
index=find(Compare==(min(Compare)));
char=[char store1(index)];
store2=strcat('A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'); %������ĸ������ʶ��ģ���
for i=2:7
    for j=1:34
        Im=eval(strcat('Char_',num2str(i)));
        Template=imread(strcat('�����ַ���\',num2str(j),'.jpg'));
        Template=im2bw(Template);
        Differ=Im-Template;
        Compare(j)=sum(sum(abs(Differ)));
    end
    index=find(Compare==(min(Compare)));
    char=[char store2(index)];
end
set(handles.edit1, 'string', strcat('����Ϊ:',char), 'FontWeight', 'Bold', 'FontSize', 12, 'ForegroundColor', [1 0 0]);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
filename_list = ls(fullfile(pwd, 'images', '*.jpg'));
N = size(filename_list, 1);
err = 0;
% ������
h = waitbar(0, '', 'Name', 'ʶ���� ...');
for i = 1 : N
    % ͼƬ
    filenamei = fullfile(fullfile(pwd, 'images',  strtrim(filename_list(i, :))));
    [~, name, ~] = fileparts(filenamei);
    Img = imread(filenamei);
    res = '';
    try
        % ʶ��
        res = get_car_rec(Img);
    catch e
        disp(e);
    end
    if ~isequal(res, name)
        % ���ʶ���������Ʋ�ͬ
        err = err + 1;
        % ��ӡ���
        fprintf('\nԭ���ƣ�%s��ʶ������%s������\n', name, res);
    else
        % ��ӡ���
        fprintf('\nԭ���ƣ�%s��ʶ������%s����ȷ\n', name, res);
    end
    
    % ��������ʾ
    waitbar(i/N, h, sprintf('�Ѵ���%d%%', round(i/N*100)));
end
% �رս�����
close(h)
rate = (1 - err/N)*100;
str = sprintf('%.2f%%', rate);
set(handles.edit2, 'string', str, 'FontWeight', 'Bold', 'FontSize', 12, 'ForegroundColor', [1 0 0]);


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

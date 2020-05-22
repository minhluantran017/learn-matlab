function varargout = DaPhuongTien(varargin)
% DAPHUONGTIEN MATLAB code for DaPhuongTien.fig
%      DAPHUONGTIEN, by itself, creates a new DAPHUONGTIEN or raises the existing
%      singleton*.
%
%      H = DAPHUONGTIEN returns the handle to a new DAPHUONGTIEN or the handle to
%      the existing singleton*.
%
%      DAPHUONGTIEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DAPHUONGTIEN.M with the given input arguments.
%
%      DAPHUONGTIEN('Property','Value',...) creates a new DAPHUONGTIEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DaPhuongTien_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DaPhuongTien_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DaPhuongTien

% Last Modified by GUIDE v2.5 09-Oct-2016 13:04:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DaPhuongTien_OpeningFcn, ...
                   'gui_OutputFcn',  @DaPhuongTien_OutputFcn, ...
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
function showclock(obj,event,handles)
time=datestr(now,'HH:MM:SS');
set(handles.text1,'string',time);

% --- Executes just before DaPhuongTien is made visible.
function DaPhuongTien_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DaPhuongTien (see VARARGIN)

% Choose default command line output for DaPhuongTien
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DaPhuongTien wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global t;
t=timer('ExecutionMode','FixedRate','Period',1,'TimerFcn',{@showclock,handles});

start (t);
% --- Outputs from this function are returned to the command line.
function varargout = DaPhuongTien_OutputFcn(hObject, eventdata, handles) 
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

%link=get(handles.edit1,'string');
%img=imread(link);
[name path] = uigetfile({'*.jpg';'*.png';'*.bmp';'*.*'},'File Selector');
fullname=strcat(path,name);
img=imread(fullname);
infomation=imfinfo(fullname)
set(handles.edit1,'String',fullname);
imshow(img);

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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%link=get(handles.edit2,'string');
[name1 path1] = uigetfile({'*.wav';'*.mp3';'*.*'},'File Selector');
fullname1=strcat(path1,name1);
wav=audioread(fullname1);
set(handles.edit1,'String',fullname1);
soundsc(wav,10000);

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axis off


% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
stop (t);
delete (t);

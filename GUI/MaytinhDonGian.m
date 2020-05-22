function varargout = MaytinhDonGian(varargin)
% MAYTINHDONGIAN MATLAB code for MaytinhDonGian.fig
%      MAYTINHDONGIAN, by itself, creates a new MAYTINHDONGIAN or raises the existing
%      singleton*.
%
%      H = MAYTINHDONGIAN returns the handle to a new MAYTINHDONGIAN or the handle to
%      the existing singleton*.
%
%      MAYTINHDONGIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAYTINHDONGIAN.M with the given input arguments.
%
%      MAYTINHDONGIAN('Property','Value',...) creates a new MAYTINHDONGIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MaytinhDonGian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MaytinhDonGian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MaytinhDonGian

% Last Modified by GUIDE v2.5 18-Jul-2016 22:36:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MaytinhDonGian_OpeningFcn, ...
                   'gui_OutputFcn',  @MaytinhDonGian_OutputFcn, ...
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


% --- Executes just before MaytinhDonGian is made visible.
function MaytinhDonGian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MaytinhDonGian (see VARARGIN)

% Choose default command line output for MaytinhDonGian
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MaytinhDonGian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MaytinhDonGian_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function varA_Callback(hObject, eventdata, handles)
% hObject    handle to varA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of varA as text
%        str2double(get(hObject,'String')) returns contents of varA as a double


% --- Executes during object creation, after setting all properties.
function varA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to varA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function varB_Callback(hObject, eventdata, handles)
% hObject    handle to varB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of varB as text
%        str2double(get(hObject,'String')) returns contents of varB as a double


% --- Executes during object creation, after setting all properties.
function varB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to varB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttCong.
function buttCong_Callback(hObject, eventdata, handles)
% hObject    handle to buttCong (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.varA,'string'));
b=str2num(get(handles.varB,'string'));
kq1=a+b;
set(handles.varkq,'string',kq1);
% --- Executes on button press in buttTru.
function buttTru_Callback(hObject, eventdata, handles)
% hObject    handle to buttTru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.varA,'string'));
b=str2num(get(handles.varB,'string'));
kq2=a-b;
set(handles.varkq,'string',kq2);

% --- Executes on button press in buttNhan.
function buttNhan_Callback(hObject, eventdata, handles)
% hObject    handle to buttNhan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.varA,'string'));
b=str2num(get(handles.varB,'string'));
kq3=a*b;
set(handles.varkq,'string',kq3);

% --- Executes on button press in buttChia.
function buttChia_Callback(hObject, eventdata, handles)
% hObject    handle to buttChia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.varA,'string'));
b=str2num(get(handles.varB,'string'));
kq4=a/b;
set(handles.varkq,'string',kq4);



function var1_Callback(hObject, eventdata, handles)
% hObject    handle to var1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of var1 as text
%        str2double(get(hObject,'String')) returns contents of var1 as a double


% --- Executes during object creation, after setting all properties.
function var1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to var1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function var2_Callback(hObject, eventdata, handles)
% hObject    handle to var2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of var2 as text
%        str2double(get(hObject,'String')) returns contents of var2 as a double


% --- Executes during object creation, after setting all properties.
function var2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to var2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function var3_Callback(hObject, eventdata, handles)
% hObject    handle to var3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of var3 as text
%        str2double(get(hObject,'String')) returns contents of var3 as a double


% --- Executes during object creation, after setting all properties.
function var3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to var3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hs(1)=str2num(get(handles.var1,'string'));
hs(2)=str2num(get(handles.var2,'string'));
hs(3)=str2num(get(handles.var3,'string'));
x=roots(hs);
set(handles.kq1,'string',num2str(x(1)));
set(handles.kq2,'string',num2str(x(2)));

function varargout = generateConstants(varargin)
% GENERATECONSTANTS MATLAB code for generateConstants.fig
%      GENERATECONSTANTS, by itself, creates a new GENERATECONSTANTS or raises the existing
%      singleton*.
%
%      H = GENERATECONSTANTS returns the handle to a new GENERATECONSTANTS or the handle to
%      the existing singleton*.
%
%      GENERATECONSTANTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERATECONSTANTS.M with the given input arguments.
%
%      GENERATECONSTANTS('Property','Value',...) creates a new GENERATECONSTANTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before generateConstants_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to generateConstants_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help generateConstants

% Last Modified by GUIDE v2.5 30-Jan-2017 18:59:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @generateConstants_OpeningFcn, ...
                   'gui_OutputFcn',  @generateConstants_OutputFcn, ...
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


% --- Executes just before generateConstants is made visible.
function generateConstants_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to generateConstants (see VARARGIN)

% Choose default command line output for generateConstants
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes generateConstants wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = generateConstants_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function omega_input_Callback(hObject, eventdata, handles)
% hObject    handle to omega_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of omega_input as text
%        str2double(get(hObject,'String')) returns contents of omega_input as a double


% --- Executes during object creation, after setting all properties.
function omega_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to omega_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lati_input_Callback(hObject, eventdata, handles)
% hObject    handle to lati_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lati_input as text
%        str2double(get(hObject,'String')) returns contents of lati_input as a double


% --- Executes during object creation, after setting all properties.
function lati_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lati_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g_input_Callback(hObject, eventdata, handles)
% hObject    handle to g_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g_input as text
%        str2double(get(hObject,'String')) returns contents of g_input as a double


% --- Executes during object creation, after setting all properties.
function g_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in savebutton.
function savebutton_Callback(hObject, eventdata, handles)
% hObject    handle to savebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function rho_input_Callback(hObject, eventdata, handles)
% hObject    handle to rho_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rho_input as text
%        str2double(get(hObject,'String')) returns contents of rho_input as a double


% --- Executes during object creation, after setting all properties.
function rho_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rho_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PSOffset_input_Callback(hObject, eventdata, handles)
% hObject    handle to PSOffset_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PSOffset_input as text
%        str2double(get(hObject,'String')) returns contents of PSOffset_input as a double


% --- Executes during object creation, after setting all properties.
function PSOffset_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PSOffset_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PSNoiseVar_input_Callback(hObject, eventdata, handles)
% hObject    handle to PSNoiseVar_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PSNoiseVar_input as text
%        str2double(get(hObject,'String')) returns contents of PSNoiseVar_input as a double


% --- Executes during object creation, after setting all properties.
function PSNoiseVar_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PSNoiseVar_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function acc_corr_time_input_Callback(hObject, eventdata, handles)
% hObject    handle to acc_corr_time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of acc_corr_time_input as text
%        str2double(get(hObject,'String')) returns contents of acc_corr_time_input as a double


% --- Executes during object creation, after setting all properties.
function acc_corr_time_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acc_corr_time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_a_input_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_a_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_a_input as text
%        str2double(get(hObject,'String')) returns contents of sigma_a_input as a double


% --- Executes during object creation, after setting all properties.
function sigma_a_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_a_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_bais_a_input_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_bais_a_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_bais_a_input as text
%        str2double(get(hObject,'String')) returns contents of sigma_bais_a_input as a double


% --- Executes during object creation, after setting all properties.
function sigma_bais_a_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_bais_a_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gyro_corr_time_input_Callback(hObject, eventdata, handles)
% hObject    handle to gyro_corr_time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gyro_corr_time_input as text
%        str2double(get(hObject,'String')) returns contents of gyro_corr_time_input as a double


% --- Executes during object creation, after setting all properties.
function gyro_corr_time_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gyro_corr_time_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_g_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_g as text
%        str2double(get(hObject,'String')) returns contents of sigma_g as a double


% --- Executes during object creation, after setting all properties.
function sigma_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_bais_g_input_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_bais_g_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_bais_g_input as text
%        str2double(get(hObject,'String')) returns contents of sigma_bais_g_input as a double


% --- Executes during object creation, after setting all properties.
function sigma_bais_g_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_bais_g_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

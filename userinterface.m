function varargout = userinterface(varargin)
% USERINTERFACE MATLAB code for userinterface.fig
%      USERINTERFACE, by itself, creates a new USERINTERFACE or raises the existing
%      singleton*.
%
%      H = USERINTERFACE returns the handle to a new USERINTERFACE or the handle to
%      the existing singleton*.
%
%      USERINTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERINTERFACE.M with the given input arguments.
%
%      USERINTERFACE('Property','Value',...) creates a new USERINTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before userinterface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to userinterface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help userinterface

% Last Modified by GUIDE v2.5 19-Nov-2018 17:44:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @userinterface_OpeningFcn, ...
                   'gui_OutputFcn',  @userinterface_OutputFcn, ...
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


% --- Executes just before userinterface is made visible.
function userinterface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to userinterface (see VARARGIN)

% Choose default command line output for userinterface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes userinterface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = userinterface_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Intro_eq_dif_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Intro_eq_dif_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Intro_eq_dif_edit as text
%        str2double(get(hObject,'String')) returns contents of Intro_eq_dif_edit as a double


% --- Executes during object creation, after setting all properties.
function Intro_eq_dif_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Intro_eq_dif_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in euler_push.
function euler_push_Callback(hObject, eventdata, handles)

N=round(str2double(get(handles.num_subinter_edit,'String')));
t_ini=str2double(get(handles.cond_ini_to_edit,'String'));
t_fim=str2double(get(handles.cond_ini_tf_edit,'String'));
y=str2double(get(handles.cond_ini_yo_edit,'String'));
Eq=get(handles.Intro_eq_dif_edit,'String');

disp(Eq)

euler_pro(@(t,y) -y+sin(t),t_ini,y,t_fim,N)


% hObject    handle to euler_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in rk_3_push.
function rk_3_push_Callback(hObject, eventdata, handles)
% hObject    handle to rk_3_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N=round(str2double(get(handles.num_subinter_edit,'String')));
to=str2double(get(handles.cond_ini_to_edit,'String'));
tfinal=str2double(get(handles.cond_ini_tf_edit,'String'));
yo=str2double(get(handles.cond_ini_yo_edit,'String'));
Eq=inline(get(handles.Intro_eq_dif_edit,'String'));

h=calc_passo(to,tfinal,N)

RK3(@(t,y) Eq,t_ini,y,t_fim,N)

function calc_passo(ini,fim,n)
h=(fim-ini)/n;
format shortE
disp(h)

%RK3(Eq,t_ini,y,t_fim,N)



%format bank
%disp(t_ini)
%disp(t_fim)
%disp(y)
%disp(N)
%disp(Eq)


% --- Executes on button press in rk_4_push.
function rk_4_push_Callback(hObject, eventdata, handles)
% hObject    handle to rk_4_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rk_38_push.
function rk_38_push_Callback(hObject, eventdata, handles)
% hObject    handle to rk_38_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on rk_38_push and none of its controls.
function rk_38_push_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to rk_38_push (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function num_subinter_edit_Callback(hObject, eventdata, handles)
% hObject    handle to num_subinter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_subinter_edit as text
%        str2double(get(hObject,'String')) returns contents of num_subinter_edit as a double


% --- Executes during object creation, after setting all properties.
function num_subinter_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_subinter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cond_ini_to_edit_Callback(hObject, eventdata, handles)
% hObject    handle to cond_ini_to_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cond_ini_to_edit as text
%        str2double(get(hObject,'String')) returns contents of cond_ini_to_edit as a double


% --- Executes during object creation, after setting all properties.
function cond_ini_to_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cond_ini_to_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cond_ini_yo_edit_Callback(hObject, eventdata, handles)
% hObject    handle to cond_ini_yo_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cond_ini_yo_edit as text
%        str2double(get(hObject,'String')) returns contents of cond_ini_yo_edit as a double


% --- Executes during object creation, after setting all properties.
function cond_ini_yo_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cond_ini_yo_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in todos_push.
function todos_push_Callback(hObject, eventdata, handles)
% hObject    handle to todos_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rk_2_push.
function rk_2_push_Callback(hObject, eventdata, handles)
% hObject    handle to rk_2_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)








% --- Executes on key release with focus on figure1 or any of its controls.
function figure1_WindowKeyReleaseFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was released, in lower case
%	Character: character interpretation of the key(s) that was released
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) released
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


function cond_ini_tf_edit_Callback(hObject, eventdata, handles)
% hObject    handle to cond_ini_tf_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cond_ini_tf_edit as text
%        str2double(get(hObject,'String')) returns contents of cond_ini_tf_edit as a double


% --- Executes during object creation, after setting all properties.
function cond_ini_tf_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cond_ini_tf_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function euler_pro(fun,to,x0,tf,n)    % numero de intervalos
% np=n+1    % numero de intervalos
%  intervalo b-a
h = (tf-to)/n;    % defina o passo
y(1) = x0;  % condi�ao inicial tem indice 1
x(1) = to;
for i=1: n-1
    y(i+1) = y(i)+h*fun(x(i),y(i));  %  Regra de Gauss-Radau
    x(i+1) = x(i)+h;
end
    solucao_exacta=3/2*exp(-x)+1/2*(sin(x)-cos(x));     %  solu��o exacta para comparar
    erro = y-solucao_exacta;   % erro absoluto
%     plot(x,y,x,solucao_exacta)
    plot(x,y,x,solucao_exacta)


function RK3(fun,to,x0,tf,n)
    %   Metodo de Heun de terceira ordem (RK3) exercio a)
    close all    % numero de intervalos
    % np=n+1    % numero de intervalos
    %  intervalo b-a
    h = (tf-to)/n;    % defina o passo
    y(1) = x0;  % condi�ao inicial tem indice 1
    x(1) = to;
    for i=1: n-1
        k1 = fun(x(i),y(i));     % calcula fun��o f(x,y)
        %   preveja y a 1/3 do passo
        y13 = y(i) + h/3*k1;
        x13 = x(i) + h/3;
        k2 = fun(x13,y13);     % calcula fun��o f(x,y) a 1/3 do passo
        y23 = y(i) + 2*h/3*k2;       % preveja com a regra do ponto medio
        x23 = x(i) + 2*h/3;
        %   calcular F3 = f(x2/3,y2/3)
        k3 =fun(x23,y23);     % calcula fun��o f(x,y) a 2/3 do passo
        y(i+1) = y(i) + h/4*(k1 + 3*k3);  %  Regra de Gauss-Radau
        x(i+1) = x(i) + h;
    end
    solucao_exacta=3/2*exp(-x)+1/2*(sin(x)-cos(x));     %  solu��o exacta para comparar
    erro = y-solucao_exacta;   % erro absoluto
%     plot(x,y,x,solucao_exacta)
   plot(x,y,x,solucao_exacta)

N=round(str2double(get(handles.num_subinter_edit,'String')));
t0=str2double(get(handles.cond_ini_t0_edit,'String'));
tfinal=str2double(get(handles.cond_ini_tf_edit,'String'));
yo=str2double(get(handles.cond_ini_yo_edit,'String'));
fun=inline(get(handles.Intro_eq_dif_edit,'String'));

rk_3=get(handles.cbrk_3)

if
  body
elseif condition
  body
elseif

elseif
  body
end

fun=inline(str);
g = VALOR_EXACTO(fun, to, yo, tfinal, N);

import overload_extend.*

f = overload_extend.Foo();
if (f.test() ~= 0)
  error('Failed!')
end
if (f.test(3) ~= 1)
    error('Failed!')
end
if (f.test('hello') ~= 2)
    error('Failed!')
end
if (f.test(3,2) ~= 5)
    error('Failed!')
end
if (f.test(3.0) ~= 1003)
    error('Failed!')
end
%if (f.test(4.0) ~= 1004)
%    error('Failed to use "double" overload!')
%end


import streamlit as st
st.title('Hello Good morning')
st.text('We are good, good morning')
a=st.text_input('Enter a Number a:')
b=st.text_input('Enter a Number b:')
if st.button('enter the button'):
    c=eval(a)+eval(b)
    st.success(c)
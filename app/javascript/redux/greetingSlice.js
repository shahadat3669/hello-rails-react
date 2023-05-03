import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';

export const fetchGreeting = createAsyncThunk(
  'greeting/fetchGreeting',
  async () => {
    const response = await fetch('/api/v1/greetings/random');
    const data = await response.json();
    return data.message;
  },
);

const greetingSlice = createSlice({
  name: 'greeting',
  initialState: {
    greeting: '',
  },

  extraReducers: {
    [fetchGreeting.fulfilled]: (state, action) => {
      state.greeting = action.payload;
    },
  },
});

export default greetingSlice.reducer;

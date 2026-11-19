
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders the Zomato application', () => {
  render(<App />);

  expect(document.body).toBeInTheDocument();
});


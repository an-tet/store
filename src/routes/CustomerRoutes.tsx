import { Navigate, Outlet, RouteObject } from 'react-router-dom';
import {
  CreateCustomerPage,
  ListCustomerPage,
  UpdateCustomerPage,
} from '../pages';

export const CustomerRoutes: RouteObject = {
  path: 'customer',
  element: <Outlet />,
  children: [
    { path: '', element: <Navigate to='list' /> },
    { index: true, path: 'list', element: <ListCustomerPage /> },
    { path: 'create', element: <CreateCustomerPage /> },
    { path: 'update/:id', element: <UpdateCustomerPage /> },
  ],
};

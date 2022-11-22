import './index.scss'
import UserSidebar from '../UserSidebar'
import SearchBar from '../SearchBar'
import { Outlet } from 'react-router-dom'

const UserHomepageLayout = () =>
{
    return(
        <>
            <div className='homepage'>
                <UserSidebar />
                <SearchBar />
                <div>
                    <Outlet />
                </div>
            </div>
        </>
    )
}

export default UserHomepageLayout
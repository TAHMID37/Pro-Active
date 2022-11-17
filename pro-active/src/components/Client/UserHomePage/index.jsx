import { Route, Routes } from 'react-router-dom'
import './index.scss'
import UserHomepageLayout from '../UserHomepageLayout'
import Explore from '../Explore'
import MyAccount from '../MyAccount'
import TrainingPlans from '../TrainingPlans'
import NutritionPlan from '../NutritionPlans'

const UserHomePage = () =>
{
    return(
        <>
            <Routes>
                <Route path='/' element={<UserHomepageLayout />}>
                    <Route index element={<Explore />} />
                    <Route path='/training_plan' element={<TrainingPlans />} />
                    <Route path='/nutrition_plan' element={<NutritionPlan />} />
                    <Route path='/my_ac' element={<MyAccount />} />
                </Route>
            </Routes>
        </>
    )
}

export default UserHomePage
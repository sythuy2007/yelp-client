import axios from "axios";

// NODE_ENV
// neu o production thi url la api/v1/restaurants con khong thi mac dinh url
const baseURL = process.env.NODE_ENV === 'production' ? "http://192.168.88.130:3001/api/v1/restaurants/" : "http://192.168.88.130:3001/api/v1/restaurants/"



export default axios.create({
    baseURL: baseURL,

});
import { Service } from "@sap/cds";

export default (srv: Service) => {
    this.on("UPDATE", "Peoples" ,async (res, req) => {debugger});
    this.after("UPDATE", "Peoples", async (res, req) => {debugger});
};
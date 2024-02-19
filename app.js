console.log("Hello World...🫠🥲😒");
const cron = require("node-cron");

cron.schedule("* * * * * *", () => {
  console.log("running a task every second");
});

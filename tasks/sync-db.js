let times = 0;
const syncDB = () => {
  times++;
  console.log("Tick cada multiplo de 5: ", times);
  //   console.log("running a task every second");
  return times;
};

module.exports = {
  syncDB,
};

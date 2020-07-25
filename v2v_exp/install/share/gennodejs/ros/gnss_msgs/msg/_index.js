
"use strict";

let GPGGA = require('./GPGGA.js');
let PSAT = require('./PSAT.js');
let VehStat = require('./VehStat.js');
let UTM = require('./UTM.js');
let GPRMC = require('./GPRMC.js');
let GPVTG = require('./GPVTG.js');
let GPFPD = require('./GPFPD.js');
let GNHDT = require('./GNHDT.js');
let GTIMU = require('./GTIMU.js');

module.exports = {
  GPGGA: GPGGA,
  PSAT: PSAT,
  VehStat: VehStat,
  UTM: UTM,
  GPRMC: GPRMC,
  GPVTG: GPVTG,
  GPFPD: GPFPD,
  GNHDT: GNHDT,
  GTIMU: GTIMU,
};

//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package experiments.Fig1.ats.MM.TC3_1;

import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth1G;

network mm
{
    submodules:
        ES1: ES1 {
            @display("p=108,117");
        }

        ES2: ES2 {
            @display("p=95,71");
        }

        ES3: ES3 {
            @display("p=147,46");
        }

        ES4: ES4 {
            @display("p=321,32");
        }

        ES5: ES5 {
            @display("p=384,53");
        }

        ES6: ES6 {
            @display("p=384,117");
        }

        ES7: ES7 {
            @display("p=384,196");
        }

        ES8: ES8 {
            @display("p=384,245");
        }

        ES9: ES9 {
            @display("p=366,303");
        }

        ES10: ES10 {
            @display("p=147,313");
        }

        ES11: ES11 {
            @display("p=102,288");
        }

        ES12: ES12 {
            @display("p=95,238");
        }



        SW1: SW1 {
            parameters:
                @display("p=196,117");
            gates:
                ethg[6];
        }

        SW2: SW2 {
            parameters:
                @display("p=289,117");
            gates:
                ethg[6];
        }

        SW3: SW3 {
            parameters:
                @display("p=289,245");
            gates:
                ethg[6];
        }

        SW4: SW4 {
            parameters:
                @display("p=196,245");
            gates:
                ethg[6];
        }


    connections:
        ES1.ethg <--> Eth100M {  length = 20m; } <--> SW1.ethg[0];
        ES2.ethg <--> Eth100M {  length = 10m; } <--> SW1.ethg[1];
        ES3.ethg <--> Eth100M {  length = 10m; } <--> SW1.ethg[2];


        ES4.ethg <--> Eth100M {  length = 20m; } <--> SW2.ethg[0];
        ES5.ethg <--> Eth100M {  length = 10m; } <--> SW2.ethg[1];
        ES6.ethg <--> Eth100M {  length = 10m; } <--> SW2.ethg[2];


        ES7.ethg <--> Eth100M {  length = 20m; } <--> SW3.ethg[0];
        ES8.ethg <--> Eth100M {  length = 10m; } <--> SW3.ethg[1];
        ES9.ethg <--> Eth100M {  length = 10m; } <--> SW3.ethg[2];


        ES10.ethg <--> Eth100M {  length = 20m; } <--> SW4.ethg[0];
        ES11.ethg <--> Eth100M {  length = 10m; } <--> SW4.ethg[1];
        ES12.ethg <--> Eth100M {  length = 10m; } <--> SW4.ethg[2];


        SW1.ethg[3] <--> Eth100M {  length = 5m; } <--> SW2.ethg[5];
        SW1.ethg[4] <--> Eth100M {  length = 5m; } <--> SW3.ethg[4];
        SW1.ethg[5] <--> Eth100M {  length = 5m; } <--> SW4.ethg[3];


        SW2.ethg[3] <--> Eth100M {  length = 5m; } <--> SW3.ethg[5];
        SW2.ethg[4] <--> Eth100M {  length = 5m; } <--> SW4.ethg[4];


        SW3.ethg[3] <--> Eth100M {  length = 5m; } <--> SW4.ethg[5];


}

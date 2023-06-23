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

package ICC.IN.ats.tc12;


import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth1G;

network ats
{
    @display("bgb=744,385");
    submodules:
        ES0: ES0 {
            @display("p=161,26");
        }

        SW0: SW0 {
            parameters:
                @display("p=155,93");
            gates:
                ethg[3];
        }

        SW1: SW1 {
            parameters:
                @display("p=224,132");
            gates:
                ethg[4];
        }

        SW2: SW2 {
            parameters:
                @display("p=224,206");
            gates:
                ethg[3];
        }

        SW3: SW3 {
            parameters:
                @display("p=161,251");
            gates:
                ethg[3];
        }

        SW4: SW4 {
            parameters:
                @display("p=88,212");
            gates:
                ethg[3];
        }

        SW5: SW5 {
            parameters:
                @display("p=88,138");
            gates:
                ethg[3];
        }

        SW6: SW6 {
            parameters:
                @display("p=392,75");
            gates:
                ethg[3];
        }

        SW7: SW7 {
            parameters:
                @display("p=467,132");
            gates:
                ethg[3];
        }

        SW8: SW8 {
            parameters:
                @display("p=467,206");
            gates:
                ethg[3];
        }

        SW9: SW9 {
            parameters:
                @display("p=384,245");
            gates:
                ethg[3];
        }

        SW10: SW10 {
            parameters:
                @display("p=323,206");
            gates:
                ethg[4];
        }

        SW11: SW11 {
            parameters:
                @display("p=323,132");
            gates:
                ethg[3];
        }

        ES1: ES1 {
            @display("p=284,75");
        }

        ES2: ES2 {
            @display("p=161,337");
        }

        ES3: ES3 {
            @display("p=28,283");
        }

        ES4: ES4 {
            @display("p=21,100");
        }

        ES5: ES5 {
            @display("p=392,17");
        }

        ES6: ES6 {
            @display("p=529,86");
        }

        ES7: ES7 {
            @display("p=545,238");
        }

        ES8: ES8 {
            @display("p=384,324");
        }

        ES9: ES9 {
            @display("p=284,283");
        }



    connections:
        ES0.ethg <--> Eth100M <--> SW0.ethg[0];
        ES1.ethg <--> Eth100M <--> SW1.ethg[0];
        ES2.ethg <--> Eth100M <--> SW3.ethg[0];
        SW0.ethg[1] <--> Eth100M <--> SW1.ethg[1];
        SW1.ethg[2] <--> Eth100M <--> SW2.ethg[0];
        SW2.ethg[1] <--> Eth100M <--> SW3.ethg[1];
        SW4.ethg[2] <--> Eth100M <--> SW3.ethg[2];
        SW5.ethg[1] <--> Eth100M <--> SW4.ethg[1];
        SW0.ethg[2] <--> Eth100M <--> SW5.ethg[2];
        SW1.ethg[3] <--> Eth100M <--> SW11.ethg[0];
        SW2.ethg[2] <--> Eth100M <--> SW10.ethg[3];
        SW11.ethg[1] <--> Eth100M <--> SW6.ethg[1];
        SW6.ethg[2] <--> Eth100M <--> SW7.ethg[1];
        SW7.ethg[2] <--> Eth100M <--> SW8.ethg[1];
        SW8.ethg[2] <--> Eth100M <--> SW9.ethg[1];
        SW9.ethg[2] <--> Eth100M <--> SW10.ethg[1];
        SW11.ethg[2] <--> Eth100M <--> SW10.ethg[2];
        SW5.ethg[0] <--> Eth100M <--> ES4.ethg;
        SW4.ethg[0] <--> Eth100M <--> ES3.ethg;
        SW10.ethg[0] <--> Eth100M <--> ES9.ethg;
        SW9.ethg[0] <--> Eth100M <--> ES8.ethg;
        SW8.ethg[0] <--> Eth100M <--> ES7.ethg;
        SW7.ethg[0] <--> Eth100M <--> ES6.ethg;
        SW6.ethg[0] <--> Eth100M <--> ES5.ethg;
}

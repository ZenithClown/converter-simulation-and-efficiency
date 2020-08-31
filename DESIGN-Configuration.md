<h1 align = "center">Design Configuration</h1>

<p align = "justify"><b>Objective:</b> Design a Power Converter and Integrate it with PV Module, finally check its performance using (i) Ćuk Converter, and (ii) SEPIC Converter. However, before designing the performance and efficiency of a PV Module is checked with Buck-Boost Converter and the results are compared.</p>

<p align = "justify"><b>NOTE:</b> Before Desiging, please note the following <i>Modelling Configuration Parameters</i>:

- **Type:** _Fixed Step_,
- **Solver:** _discrete (no continuous states)_,
- **Solver Details:** Sampling Time `10e-6` (i.e. $t = 10 \mu s$), and
- Also, set the **_powergui_** with same configuration

## PV Module
<p align = "justify">PV Array in Simulink has many in-built pre-developed module configured, one such is the <a href = "http://www.solarhub.com/product-catalog/pv-modules/5623-1STH-215-P-1Soltech">1Soltech - 1STH-215-P</a>. Here, this module has been used whose electrical properties is as follows:</p>

| | Value |
| :--- | ---: |
| Max. Power ($P_{max}$) | 213.13 W |
| Open Circuit Voltage ($V_{oc}$) | 36.3 V |
| Sc. Current ($I_{sc}$) | 7.84 A |
| Max. Voltage @MPP ($V_{mp}$) | 29 V |
| Max. Current@MPP ($I_{mp}$) | 7.35 A |

<p align = "justify"><b>PV Array Configuration:</b> Approx. 1 kW Array (with 5 Parallel Strings, and 1 Series Connected Module/String). Charecteristic Curve is as below:</p>

![1Soltech - 1STH-215-P PV Array Configuration in Sumulink](./output/PVModule.png)

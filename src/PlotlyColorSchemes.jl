import ColorSchemes: viridis, inferno, twilight, deep, matter, ice, algae,  balance, curl
import Colors.hex
function plotly_cs(colorscheme; n_entries=11)
    scale = LinRange(0, 1, n_entries) 
    colors =[get(colorscheme, s) for s in scale]
    return [[s, hex(color)] for (s, color) in zip(scale, colors)]
end


pl_hsv=[[0.0, "rgb(0, 242, 242)"], #S=1, V=0.95, 
 [0.083, "rgb(0, 121, 242)"],
 [0.166, "rgb(0, 0, 242)"],
 [0.25, "rgb(121, 0, 242)"],
 [0.333, "rgb(242, 0, 242)"],
 [0.416, "rgb(242, 0, 121)"],
 [0.5, "rgb(242, 0, 0)"],
 [0.583, "rgb(242, 121, 0)"],
 [0.666, "rgb(242, 242, 0)"],
 [0.75, "rgb(121, 242, 0)"],
 [0.833, "rgb(0, 242, 0)"],
 [0.916, "rgb(0, 242, 121)"],
 [1.0, "rgb(0, 242, 242)"]];

pl_ehtcmap = [[0.0, "#342724"],
 [0.1, "#682018"],
 [0.2, "#8e1d15"],
 [0.3, "#a82c21"],
 [0.4, "#c33d26"],
 [0.5, "#da560f"],
 [0.6, "#e87500"],
 [0.7, "#f49600"],
 [0.8, "#fbb71c"],
 [0.9, "#fadb74"],
 [1.0, "#fef7e7"]]; 
pl_BrBG=[[0.0,"#543005"],
[0.1,"#8c510a"],
[0.2, "#bf812d"],
[0.3, "#dfc27d"],
[0.4, "#f6e8c3"],
[0.5, "#f5f5f5"],
[0.6, "#c7eae5"],
[0.7, "#80cdc1"],
[0.8, "#35978f"],
[0.9, "#01665e"],
[1.0, "#003c30"]];
pl_viridis = plotly_cs(viridis, n_entries=13)
pl_inferno = plotly_cs(inferno)
pl_twilight = plotly_cs(twilight, n_entries=21)
pl_deep = plotly_cs(deep)
pl_matter = plotly_cs(matter)
pl_algae = plotly_cs(algae)
pl_ice = plotly_cs(ice)
pl_balance = plotly_cs(balance)
pl_curl = plotly_cs(curl);


using PlotlyJS

plotlyju = let
    axis = attr(
              gridcolor="white",
              linecolor="white",
              title_standoff=15,
              zeroline=false,
              ticks = "")
    axis3d = attr(
                showbackground=true,
                backgroundcolor="#E5ECF6",
                zerolinecolor="white",
                gridcolor="white",
                gridwidth = 2)  
    ternary_axis =  attr(
                       gridcolor= "white",
                       linecolor= "white",
                       ticks =" ")                   
    plasma = [[0.0, "#0c0786"],
              [0.1, "#40039c"],
              [0.2, "#6a00a7"],
              [0.3, "#8f0da3"],
              [0.4, "#b02a8f"],
              [0.5, "#cb4777"],
              [0.6, "#e06461"],
              [0.7, "#f2844b"],
              [0.8, "#fca635"],
              [0.9, "#fcce25"],
              [1.0, "#eff821"]]         
    mycolorbar = attr(
                    outlinewidth=0, 
                    thickness=23, 
                    ticks="")            
    layout = Layout(
                 plot_bgcolor="#E5ECF6",
                 paper_bgcolor="white",
                 font_size=10,
                 xaxis=axis,
                 yaxis=axis,
                 scene_xaxis=axis3d,
                 scene_yaxis=axis3d,
                 scene_zaxis=axis3d,
                 coloraxis_colorscale=plasma,
                 coloraxis_colorbar=mycolorbar,
                 hovermode="closest",
                 title_font_size=16,
                 margin_t=100, margin_l=60,
                 ternary= attr(
                            bgcolor= "#E5ECF6",
                            aaxis=ternary_axis,
                            baxis=ternary_axis,
                            caxis=ternary_axis)
               )             
        

    colors = Cycler([ "#636efa",
                      "#EF553B",
                      "#00cc96",
                      "#ab63fa",
                      "#FFA15A",
                      "#19d3f3",
                      "#FF6692",
                      "#B6E880",
                      "#FF97FF",
                      "#FECB52"])
                      
    gtrace = attr(
                marker_line_width=0.5, 
                marker_line_color="#E5ECF6",
                marker_color=colors,
                colorscale=plasma,
                colorbar=mycolorbar
    )
    Style(layout=layout, global_trace=gtrace)
end;





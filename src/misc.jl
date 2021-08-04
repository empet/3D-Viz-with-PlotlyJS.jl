using PlotlyJS

function tri_edges(verts_matr::AbstractMatrix, tri_matr::AbstractMatrix; 
                   linecolor="rgb(70,70,70)", linewidth=1)
    #def triangulation edges from vertices and triangles, of size (m, 3), resp (n,3)
    if minimum(tri_matr) == 0
        tri_verts = [hcat(verts_matr[t, :]) for t in eachrow(tri_matr .+ 1)]
    else
        tri_verts = [hcat(verts_matr[t, :]) for t in eachrow(tri_matr)]
    end
    Xe = []
    Ye = []
    Ze = []
    for T in tri_verts
        append!(Xe, T[:, 1])
        append!(Xe, [T[1,1], NaN])
        append!(Ye, T[:, 2])
        append!(Ye, [T[1,2], NaN])
        append!(Ze, T[:, 3])
        append!(Ze, [T[1,3], NaN])
    end
    return PlotlyJS.scatter3d(
                   x=Xe,
                   y=Ye,
                   z=Ze,
                   mode="lines",
                   name=" ",
                   line=attr(color=linecolor, width=1.5))  
end; 

function black_bg(; bg_color = "rgb(20, 20, 20)",
                    grid_color="rgb(150, 150, 150)", 
                    zeroline=false)
return  Dict{Any, Any}( #black background
        :showbackground => true, 
        :backgroundcolor => bg_color, 
        :gridcolor => grid_color,   
        :zeroline => zeroline)
end;


let case1 = (~color) => `
:doodle {
    @grid: 5x5 / 250px;
    background-color: ${color};
    border-radius: 4px;
}
transition: .5s ease all;
@even {
    transform: rotate(@p(90deg, 270deg));
}
@odd {
    transform: rotate(@p(0deg, 180deg));
}
::before,
::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: @m(2, linear-gradient(
    calc(90deg * @n()),
    transparent 10%,
    #fff 10%,
    #fff calc(10% + 2px),
    ${color} calc(10% + 2px),
    ${color} 20%,
    #fff 20%,
    #fff calc(20% + 2px),
    ${color} calc(20% + 2px),
    ${color} 30%,
    #fff 30%,
    #fff calc(30% + 2px),
    ${color} calc(30% + 2px),
    ${color} 40%,
    #fff 40%,
    #fff calc(40% + 2px),
    transparent calc(40% + 2px)
    ));
    clip-path: polygon(0 0, 100% 0 ,0 100%);
}
::after {
    transform: rotate(180deg);
}
`

let case2 = `
:doodle {
@grid: 10x10 / 500px;
background-color: #3e3d3d;
border-radius: 4px;
overflow: hidden;
}
:container {
left: -25%;
transform-origin: 50% 0;
transform: scale(1.8);
}
::before {
content: "";
position: absolute;
top: 0;
right: 0;
bottom: 0;
left: 0;
margin: auto;
width: 10%;
height: 10%;
background-color: #fff;
border-radius: 100%;
box-shadow: 0 0 0 2.2px #3e3d3d, 0 0 0 calc(2.2px * 2) #fff, 0 0 0 calc(2.2px * 3) #3e3d3d, 0 0 0 calc(2.2px * 4) #fff, 0 0 0 calc(2.2px * 5) #3e3d3d, 0 0 0 calc(2.2px * 6) #fff;
}
@row(even) {
transform: scale(1.8) translate3d(28%, calc(-40% * (@row() - 1)), 0);
}
@row(odd) {
transform: scale(1.8) translate3d(0, calc(-40% * (@row() - 1)), 0);
}
`

let case3 = `
:doodle {
    @grid: 18x1 / 250px;
    background-color: #527b75;
    border-radius: 4px;
    font-size: 14px;
    overflow: hidden;
}
@place-cell: center;
width: 100%;
height: 100%;
::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background:
    radial-gradient(1.15em 1.5714275em at 1.95em, rgba(255, 255, 255, 0) 47%, rgba(255, 255, 255, .9) 47%, rgba(255, 255, 255, .9) 60%, rgba(255, 255, 255, 0) 60%) calc(50% - .725em) 0,
    radial-gradient(1.15em 1.5714275em at -0.47em, rgba(255, 255, 255, 0) 47%, rgba(255, 255, 255, .9) 47%, rgba(255, 255, 255, .9) 60%, rgba(255, 255, 255, 0) 60%) calc(50% + .725em) 1.2em;
    background-size: 1.5em 2.4em, 1.5em 2.4em;
    background-repeat: repeat-y;
}
@nth(1, 2, 3, 4, 5, 6, 7, 8, 9) {
    ::before {
    transform: scale(2.3) rotate(45deg);
    }
}
@nth(10, 11, 12, 13, 14, 15, 16, 17, 18) {
    ::before {
    transform: scale(2.3) rotate(-45deg);
    }
}
@nth(2, 10) {
    transform: translateX(calc(-22% * 1));
}
@nth(3, 11) {
    transform: translateX(calc(-22% * 2));
}
@nth(4, 12) {
    transform: translateX(calc(-22% * 3));
}
@nth(5, 13) {
    transform: translateX(calc(-22% * 4));
}
@nth(6, 14) {
    transform: translateX(calc(22% * 1));
}
@nth(7, 15) {
    transform: translateX(calc(22% * 2));
}
@nth(8, 16) {
    transform: translateX(calc(22% * 3));
}
@nth(9, 17) {
    transform: translateX(calc(22% * 4));
}
`
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: peliculas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE peliculas_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE peliculas_final OWNER TO postgres;

\connect peliculas_final

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: peliculas; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA peliculas;


ALTER SCHEMA peliculas OWNER TO postgres;

--SET default_tablespace = '';

--SET default_table_access_method = heap;

--
-- Name: actor; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.actor (
    nombre_personal character varying NOT NULL
);


ALTER TABLE peliculas.actor OWNER TO postgres;

--
-- Name: actua; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.actua (
    nombre_personal_actor character varying NOT NULL,
    anno_peliculas smallint NOT NULL,
    titulo_peliculas character varying NOT NULL
);


ALTER TABLE peliculas.actua OWNER TO postgres;

--
-- Name: caratulas; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.caratulas (
    tipo character varying NOT NULL,
    tamanno smallint,
    anno_peliculas smallint NOT NULL,
    titulo_peliculas character varying NOT NULL,
    nombre_pag_web character varying NOT NULL
);


ALTER TABLE peliculas.caratulas OWNER TO postgres;

--
-- Name: criticas; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.criticas (
    critico character varying NOT NULL,
    puntuacion smallint,
    texto text,
    anno_peliculas smallint NOT NULL,
    titulo_peliculas character varying NOT NULL,
    nombre_pag_web character varying NOT NULL,
    fecha date
);


ALTER TABLE peliculas.criticas OWNER TO postgres;

--
-- Name: director; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.director (
    nombre_personal character varying NOT NULL
);


ALTER TABLE peliculas.director OWNER TO postgres;

--
-- Name: generos; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.generos (
    genero character varying NOT NULL,
    anno_peliculas smallint NOT NULL,
    titulo_peliculas character varying NOT NULL
);


ALTER TABLE peliculas.generos OWNER TO postgres;

--
-- Name: pag_web; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.pag_web (
    nombre character varying NOT NULL,
    url character varying,
    tipo character varying
);


ALTER TABLE peliculas.pag_web OWNER TO postgres;

--
-- Name: peliculas; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.peliculas (
    anno smallint NOT NULL,
    titulo character varying NOT NULL,
    duracion smallint,
    idioma character(2),
    calificacion character varying,
    nombre_personal_director character varying
);


ALTER TABLE peliculas.peliculas OWNER TO postgres;

--
-- Name: personal; Type: TABLE; Schema: peliculas; Owner: postgres
--

CREATE TABLE peliculas.personal (
    nombre character varying NOT NULL,
    nacionalidad character varying,
    f_nacimiento date
);


ALTER TABLE peliculas.personal OWNER TO postgres;

--
-- Name: actor_pelicula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actor_pelicula (
    anno integer,
    titulo text,
    actor text
);


ALTER TABLE public.actor_pelicula OWNER TO postgres;

--
-- Name: actores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actores (
    nombre text,
    anno_nacimiento date
);


ALTER TABLE public.actores OWNER TO postgres;

--
-- Name: comentarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentarios (
    anno integer,
    titulo text,
    rating real,
    autor text,
    texto text,
    hash text,
    pagina text
);


ALTER TABLE public.comentarios OWNER TO postgres;

--
-- Name: director_pelicula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.director_pelicula (
    titulo text,
    anno integer,
    director text
);


ALTER TABLE public.director_pelicula OWNER TO postgres;

--
-- Name: directores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directores (
    nombre text,
    anno_nacimiento date
);


ALTER TABLE public.directores OWNER TO postgres;

--
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    anno character(4),
    titulo character varying,
    genero character varying,
    puntuacion real,
    duracion_min character varying,
    idioma character varying,
    calificacion character varying
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- Data for Name: actor; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.actor (nombre_personal) FROM stdin;
Chris Hemsworth
Michael Lerner
Rosario Dawson
Jeffrey Wright
Emily Watson
Patrick Swayze
Nicholas Hoult
Marcello Mastroianni
Famke Janssen
Abbie Cornish
Carole Lombard
Nick Nolte
Pierce Brosnan
Rose Byrne
Jason Robards
Lake Bell
Hugo Weaving
Sean Penn
Henry Fonda
Lillian Gish
Hugh Grant
Josh Hutcherson
Catalina Sandino Moreno
Ida Lupino
Greg Kinnear
Jason Statham
Catherine Keener
Justin Bartha
Andrew Garfield
Ned Beatty
Ethan Hawke
Antonio Banderas
Norman Reedus
James Stewart
Jennifer Garner
Jean Arthur
Zoe Saldana
Robert Forster
Shia LaBeouf
Faye Dunaway
Ava Gardner
John Houseman
Claire Danes
Kirsten Dunst
Greta Garbo
Jennifer Jones
Emily Browning
Thomas Mitchell
Javier Bardem
Sam Waterston
Martin Balsam
James Franco
Emma Watson
Spencer Tracy
Sophie Marceau
Chiwetel Ejiofor
Bruce Willis
Joey King
Emilia Clarke
Tatum O'Neal
Queen Latifah
Oscar Isaac
Alec Guinness
Naomi Watts
Doris Day
Janet Leigh
Tyrese Gibson
Stellan Skarsgård
Donald Sutherland
Léa Seydoux
Marion Cotillard
Michelle Rodriguez
Melanie Griffith
Michelle Trachtenberg
Benedict Cumberbatch
Steve Carell
Rashida Jones
Joe Pesci
Rebecca Hall
Suraj Sharma
Felicity Jones
William Shatner
Mercedes McCambridge
Jude Law
Evangeline Lilly
Christopher Lee
Alexander Skarsgård
Piper Laurie
Sam Elliott
Ellen Burstyn
Rosie Huntington-Whiteley
Simone Signoret
Charlize Theron
Jackie Chan
Rinko Kikuchi
Jay Baruchel
Celeste Holm
Liza Minnelli
Andy Samberg
Keira Knightley
Deborah Kerr
George Burns
Armin Mueller-Stahl
Virginia Madsen
Katharine Hepburn
Aaron Taylor-Johnson
Eva Mendes
Bryan Cranston
Richard Jenkins
Setsuko Hara
Richard Gere
Kaley Cuoco
Johnny Depp
Mila Kunis
Richard Dreyfuss
Jack Palance
Robin Weigert
Jessica Chastain
Michael Rooker
Rod Steiger
Paddy Considine
Joseph Cotten
Jane Wyman
Lindsay Lohan
Evan Rachel Wood
Thora Birch
Robert Mitchum
Bernie Mac
George Kennedy
Tim Roth
Olivia Wilde
Ashley Judd
Eric Bana
Albert Brooks
Elisabeth Moss
Robert Shaw
Cameron Diaz
Ashley Greene
Judy Davis
Paul Lukas
Cate Blanchett
Adam Sandler
Olivia Thirlby
Julia Stiles
Anthony Perkins
Gal Gadot
Dean Stockwell
George Chakiris
Donald Crisp
Vivien Leigh
Giovanni Ribisi
Lee Marvin
Sarah Michelle Gellar
Linda Hamilton
Hugh Jackman
Mae West
Nathan Lane
Saoirse Ronan
Scarlett Johansson
Imelda Staunton
Susan Hayward
Robert Downey Jr.
Myrna Loy
Bill Hader
David Niven
Priyanka Chopra
Chris Pratt
Mélanie Laurent
Bette Midler
Garrett Hedlund
Marlon Brando
Jennifer Coolidge
Albert Finney
Alan Arkin
Montgomery Clift
Peter Sellers
Rutger Hauer
Guy Pearce
Djimon Hounsou
Louise Fletcher
Janet Gaynor
Teresa Wright
Carol Burnett
Harvey Keitel
Debbie Reynolds
Louis Gossett Jr.
Ziyi Zhang
Philip Seymour Hoffman
Johnny Knoxville
Katherine Heigl
Errol Flynn
Kate Mara
Natalie Portman
Tim Robbins
Meryl Streep
Bruce Davison
Fredric March
Marlene Dietrich
Marsha Mason
Christopher Plummer
Amanda Seyfried
Maria Falconetti
Isabelle Huppert
Patricia Arquette
Tom Wilkinson
Al Pacino
Samuel L. Jackson
Daniel Day-Lewis
Peggy Ashcroft
Wallace Beery
Christian Bale
Roy Scheider
Liam Neeson
Shirley MacLaine
Catherine Zeta-Jones
Gillian Anderson
Rosalind Russell
Noomi Rapace
AnnaSophia Robb
Natalie Wood
Richard Harris
Anthony Mackie
Lesley Manville
Alec Baldwin
Maya Rudolph
Lili Taylor
Sally Hawkins
Romain Duris
Clark Gable
Robin Wright
James Mason
Mary Elizabeth Winstead
Linda Hunt
Emmanuelle Riva
Mo'Nique
Christina Ricci
Diane Keaton
Woody Harrelson
Gary Busey
Edmund Gwenn
Claude Rains
Josh Duhamel
Vincent Cassel
Billy Crystal
William Powell
Jennifer Connelly
Jason Bateman
Isabelle Adjani
Greer Garson
Maximilian Schell
Helen Hayes
Jon Hamm
Ryan Gosling
Takashi Shimura
Paul Giamatti
Jessica Alba
Greta Gerwig
Peter Lorre
Cary Grant
Olympia Dukakis
Lucy Liu
Teresa Palmer
James Marsden
Jeanne Moreau
Gloria Grahame
Kathy Bates
Christopher Lloyd
Ray Stevenson
Chuck Norris
Lionel Barrymore
Angela Lansbury
Jodie Foster
Mark Hamill
Billy Crudup
Thomas Haden Church
Drew Barrymore
Richard Burton
Josh Hartnett
Christine Taylor
Amanda Crew
Geraldine Page
Josh Gad
John Leguizamo
Adriana Barraza
Heath Ledger
Kiefer Sutherland
Orlando Bloom
Chris Cooper
Marisa Tomei
Don Ameche
Felicity Huffman
Whoopi Goldberg
Hilary Swank
Mira Sorvino
Joaquin Phoenix
Benjamin Bratt
Hayden Christensen
Marion Davies
Franka Potente
Chloë Sevigny
Charlie Day
Jennifer Aniston
Hilary Duff
John Gielgud
Linda Fiorentino
Gloria Stuart
Kristen Wiig
Matthew McConaughey
James Coburn
Michael Cera
Julianne Hough
Elizabeth Taylor
James Gandolfini
Beyoncé
Jeff Daniels
Bradley Cooper
Edward Norton
Judy Holliday
Grace Kelly
Shelley Winters
Mads Mikkelsen
Estelle Parsons
Tom Conti
Art Carney
Groucho Marx
Joan Fontaine
Uma Thurman
Charlie Sheen
Olga Kurylenko
Billy Bob Thornton
Mia Farrow
Hugh Griffith
Ralph Fiennes
Julia Roberts
Nicole Kidman
Mercedes Ruehl
James Cagney
Red Buttons
Jena Malone
Jill Clayburgh
Mandy Moore
Steve Coogan
Luke Wilson
Jessica Tandy
Benicio Del Toro
Maggie Smith
Taraji P. Henson
Ruby Dee
Richard Farnsworth
Burl Ives
Jake Gyllenhaal
Brendan Fraser
Haley Joel Osment
David Oyelowo
Nick Swardson
Tom Hanks
Sophia Loren
Mike Vogel
Chris Evans
Logan Lerman
Jamie Chung
Cobie Smulders
Orson Welles
Richard E. Grant
Margot Robbie
Lauren Bacall
Warner Baxter
Ray Milland
Billy Burke
Danny Aiello
Elisabeth Shue
Jane Fonda
Rhys Ifans
Ellen DeGeneres
Hailee Steinfeld
Ben Kingsley
Sean Astin
Björk
Gig Young
Laurence Fishburne
Renée Zellweger
Jet Li
Sam Rockwell
Lee Grant
Robert Donat
Tyler Perry
Sarah Polley
Keisha Castle-Hughes
Frank Langella
Ellen Page
Jessica Biel
Dudley Moore
Clark Gregg
Mary Tyler Moore
Sacha Baron Cohen
Daryl Hannah
Samantha Morton
Ethel Barrymore
Seth Rogen
Michael Douglas
Woody Allen
Judi Dench
Tom Courtenay
Seth MacFarlane
Cuba Gooding Jr.
Tim Allen
Terrence Howard
Mireille Enos
Cam Gigandet
Janet McTeer
Eva Marie Saint
Brenda Fricker
Alice Eve
Jon Heder
Christopher Guest
Wesley Snipes
Alicia Vikander
Debra Winger
Timothy Hutton
Paul Rudd
James McAvoy
Russell Crowe
Melissa McCarthy
Meg Ryan
Dave Franco
Eddie Redmayne
Patrick Wilson
Emil Jannings
Josh Lucas
Brian Cox
Patty Duke
John Turturro
Alexandra Daddario
Adrianne Palicki
Zach Galifianakis
Michael Fassbender
Val Kilmer
Gwyneth Paltrow
Mark Strong
Andy Garcia
Josh Brolin
Vin Diesel
Barbra Streisand
Sarah Jessica Parker
Patrick Stewart
Kate Winslet
Ernest Borgnine
Jason Sudeikis
Owen Wilson
Leonardo DiCaprio
Catherine Deneuve
Alexis Thorpe
Michael Keaton
Jeff Goldblum
Martin Lawrence
Gloria Swanson
Jo Van Fleet
Christina Applegate
John Travolta
Nia Long
Charles Chaplin
Ben Stiller
Melissa Leo
Gene Kelly
Walter Matthau
Christoph Waltz
Anjelica Huston
Emma Thompson
Fred Astaire
Ray Liotta
Raquel Welch
Kate Beckinsale
Miranda Richardson
Rebecca Romijn
Michelle Monaghan
Jon Favreau
Broderick Crawford
Jared Leto
Jean Dujardin
Paul Walker
John Hawkes
Ali Larter
Erich von Stroheim
Hattie McDaniel
Mary McDonnell
Liam Hemsworth
January Jones
Amanda Peet
Taylor Kitsch
Jean-Louis Trintignant
Parker Posey
Salma Hayek
Boris Karloff
Vanessa Hudgens
Brittany Snow
Klaus Kinski
Neve Campbell
Norma Shearer
Ed Begley
Michael C. Hall
Sue Lyon
Gerard Butler
Amanda Bynes
David Spade
Jeremy Renner
Roberto Benigni
John Wayne
Rooney Mara
Anna Paquin
Gary Sinise
Talia Shire
Kevin Costner
Jamie Bell
Julie Christie
James Dean
Cillian Murphy
Kristen Stewart
Jim Carrey
Fairuza Balk
John Mills
Danny Glover
Chris Rock
Channing Tatum
Tobey Maguire
Shohreh Aghdashloo
Sean Connery
Jacki Weaver
Mark Wahlberg
Rene Russo
Christopher Walken
Casey Affleck
Kim Hunter
George Clooney
Robin Williams
Jean Harlow
Yun-Fat Chow
Nicolas Cage
Jason Schwartzman
Courteney Cox
Alan Alda
Tom Hardy
Miyoshi Umeki
Toshirô Mifune
Patricia Neal
Dennis Hopper
Abigail Breslin
Jamie Lee Curtis
Julianne Moore
Bonnie Hunt
Julia Louis-Dreyfus
Jack Davenport
Michael Ealy
John Krasinski
Pam Grier
Jim Caviezel
Juliette Binoche
Patricia Clarkson
Miles Teller
Gabourey Sidibe
Bette Davis
Matt Dillon
Dean Jagger
Dakota Johnson
John Cusack
Gale Sondergaard
Nastassja Kinski
Harrison Ford
Shah Rukh Khan
Edmond O'Brien
Burt Lancaster
Jean-Claude Van Damme
Craig Robinson
Emily Blunt
Emma Stone
Alfred Molina
Seth Green
Nigel Hawthorne
Common
Judy Garland
Charlton Heston
Zooey Deschanel
Diane Lane
Robert Redford
Goldie Hawn
Jennifer Lopez
Thandie Newton
Don Cheadle
José Ferrer
Ioan Gruffudd
Rob Lowe
Demi Moore
Bill Pullman
Reese Witherspoon
Rufus Sewell
Sophie Okonedo
Jack Black
Stockard Channing
Mindy Kaling
Walter Huston
Denzel Washington
Paul Dano
Julie Andrews
Paul Muni
Donna Reed
Joel McCrea
Jared Harris
Dorothy Malone
Shirley Jones
Arnold Schwarzenegger
Helena Bonham Carter
Carrie Fisher
Chazz Palminteri
Leslie Mann
Gena Rowlands
Keanu Reeves
Tom Cruise
Pete Postlethwaite
David Strathairn
Mickey Rourke
Gary Cooper
Angela Bassett
Jean Reno
Mia Wasikowska
Jon Voight
Octavia Spencer
Joan Crawford
Jonathan Pryce
Danny DeVito
Chris Klein
Anne Hathaway
Clive Owen
Juliette Lewis
Carrie-Anne Moss
Carey Mulligan
Malcolm McDowell
Timothy Olyphant
Anne Bancroft
Laurence Olivier
Ginger Rogers
Teri Garr
Sandy Dennis
Charles Laughton
Jennifer Love Hewitt
Dick Van Dyke
Susan Sarandon
Joan Allen
Danny McBride
Chris Pine
Marie Dressler
Elizabeth Olsen
Frank Sinatra
Paul Scofield
Lance Henriksen
Brendan Gleeson
Loretta Young
Penélope Cruz
James Spader
Warren Beatty
Cher
Colin Firth
Lena Headey
Jonah Hill
Holly Hunter
Kerry Washington
Adrien Brody
Kathleen Turner
Kate Hudson
Dustin Hoffman
Frances McDormand
Anthony Quinn
Jackie Earle Haley
Audrey Hepburn
Jack Albertson
Mike Myers
Hal Holbrook
Edward G. Robinson
Emma Roberts
Mark Ruffalo
Fernanda Montenegro
Wendy Hiller
Jonathan Rhys Meyers
William Hurt
Lupita Nyong'o
Justin Timberlake
Bruno Ganz
Elizabeth Banks
Paula Patton
Kathleen Quinlan
Miley Cyrus
Tommy Lee Jones
Laura Dern
Jamie Foxx
Edward James Olmos
Dakota Fanning
Peter Dinklage
Helen Mirren
Jack Lemmon
Analeigh Tipton
Keri Russell
Chris Tucker
Michelle Williams
Lenny Kravitz
Anna Magnani
John Hurt
Jai Courtney
Matthew Broderick
Julie Walters
Jason Segel
Rob Schneider
Anne Baxter
Peter Fonda
Kenneth Branagh
Henry Cavill
Eileen Heckart
Kristen Bell
Jennifer Jason Leigh
Michael Shannon
Jennifer Hudson
Matt Damon
Sharon Stone
Barry Pepper
Leslie Nielsen
Justin Long
Michael J. Fox
James Cromwell
Melvyn Douglas
John Malkovich
Mahershala Ali
Kellan Lutz
Victor McLaglen
Sidney Poitier
Martin Sheen
Kevin Kline
Rachel Griffiths
Pauline Collins
Ginnifer Goodwin
Dennis Quaid
Alicia Silverstone
Yul Brynner
William H. Macy
Chloë Grace Moretz
Kirk Douglas
Joseph Gordon-Levitt
Idris Elba
Robert De Niro
Sean Bean
Will Smith
Barry Fitzgerald
Liv Tyler
Beatrice Straight
Forest Whitaker
Shailene Woodley
Ian Holm
Bob Hoskins
Sofía Vergara
Ian McKellen
Kat Dennings
Brie Larson
Elijah Wood
Daniel Radcliffe
Hugh Laurie
Natalie Dormer
Charlie Hunnam
Kevin James
John Rhys-Davies
Freddie Prinze Jr.
Andrea Riseborough
Alan Rickman
Marcia Gay Harden
Tilda Swinton
Martin Landau
Michael Sheen
Sigourney Weaver
Michael Clarke Duncan
Bruce Dern
Ashton Kutcher
River Phoenix
Jack Nicholson
Craig T. Nelson
Sam Worthington
Robert Pattinson
Kate Bosworth
Chris O'Donnell
Kevin Hart
Irrfan Khan
Willem Dafoe
Anna Faris
Brenda Blethyn
Mary Pickford
Claire Trevor
Bruce Lee
Sandra Bullock
Maureen Stapleton
Maggie Grace
Steve Martin
Burt Reynolds
Paul Bettany
John Cleese
Glenda Jackson
Bill Paxton
Claudette Colbert
Dan Aykroyd
Nick Frost
Liev Schreiber
Russell Brand
Randy Quaid
Rita Moreno
Liv Ullmann
Jane Alexander
Ed Helms
Dianne Wiest
Clint Eastwood
Kevin Spacey
Molly Ringwald
Rebel Wilson
Macaulay Culkin
Jessica Lange
James Garner
Cloris Leachman
Olivia de Havilland
William Holden
Ben Johnson
Jesse Eisenberg
Toni Collette
Lily Collins
Anthony Hopkins
Alex Pettyfer
Daniel Brühl
Halle Berry
Leighton Meester
Whitney Houston
Peter O'Toole
Barbara Stanwyck
Sylvester Stallone
Gemma Arterton
Rex Harrison
Angelina Jolie
Jeff Bridges
Will Ferrell
Karl Urban
Graham Greene
Joseph Schildkraut
Lily Tomlin
Christopher Reeve
Piper Perabo
Mark Rylance
Claudia Cardinale
Sissy Spacek
Betty White
Kate Capshaw
Ryan Reynolds
Morgan Freeman
Jane Darwell
Kristin Scott Thomas
Robert Duvall
Humphrey Bogart
Jim Broadbent
Max von Sydow
J.K. Simmons
Olivia Newton-John
Mary Astor
Minnie Driver
Amy Adams
June Squibb
Marlon Wayans
Min-sik Choi
Audrey Tautou
Kim Novak
David Thewlis
Van Heflin
Daniel Craig
Marilyn Monroe
Anna Friel
Topher Grace
Sally Field
George C. Scott
Glenn Close
Freddie Highmore
Kevin Bacon
James Woods
Michael B. Jordan
Jada Pinkett Smith
Blake Lively
Ben Foster
Ruth Gordon
Bill Murray
Jean-Paul Belmondo
Charlotte Rampling
James Caan
Rob Riggle
Maggie Gyllenhaal
Shirley Temple
Kurt Russell
Vanessa Redgrave
Jessica Lucas
Freida Pinto
Zac Efron
Vera Farmiga
Ed Harris
John Goodman
Bing Crosby
Viggo Mortensen
George Sanders
Peter Sarsgaard
Rachel Weisz
Gael García Bernal
Michelle Yeoh
John C. Reilly
Breckin Meyer
Christopher Mintz-Plasse
Maria Bello
Jennifer Lawrence
Lucille Ball
Lisa Kudrow
Michael Caine
Eddie Murphy
Katie Holmes
Paul Newman
Stanley Tucci
Mary Steenburgen
Luise Rainer
Anna Kendrick
Cliff Robertson
Julie Delpy
Geoffrey Rush
Brad Pitt
Mel Gibson
Marlee Matlin
Neil Patrick Harris
Helen Hunt
Cary Elwes
Aaron Eckhart
Colin Farrell
Harpo Marx
Steve McQueen
Laura Linney
Cedric the Entertainer
Jean Seberg
Joanne Woodward
Ingrid Bergman
Amber Heard
Ice Cube
Simon Pegg
Kim Basinger
Winona Ryder
Carmen Miranda
Ronald Colman
Rosamund Pike
Emmy Rossum
Eva Green
Tina Fey
Shirley Booth
Milla Jovovich
Vincent Gallo
Lynn Redgrave
Dwayne Johnson
Andy Serkis
Rachel McAdams
Vince Vaughn
Viola Davis
Isla Fisher
Tom Hiddleston
Rita Hayworth
Buster Keaton
Gregory Peck
Bérénice Bejo
Megan Fox
F. Murray Abraham
Sally Kirkland
Geena Davis
Eliza Dushku
Tom Hulce
Haing S. Ngor
Gérard Depardieu
Ben Affleck
Ken Watanabe
Gene Hackman
Jeremy Irons
Peter Finch
Charles Coburn
Steve Buscemi
Gene Wilder
Stephen Rea
Annette Bening
Amy Ryan
Maureen O'Hara
Jerry Lewis
Andrew Lincoln
Harold Russell
Walter Brennan
Peter Ustinov
Téa Leoni
Michelle Pfeiffer
Ewan McGregor
Ray Winstone
Ryan Phillippe
Selena Gomez
\.


--
-- Data for Name: actua; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.actua (nombre_personal_actor, anno_peliculas, titulo_peliculas) FROM stdin;
Sean Connery	1990	The Hunt for Red October
Stellan Skarsgård	2011	Thor
Dan Aykroyd	2001	Pearl Harbor
Stellan Skarsgård	2015	Avengers: Age of Ultron
Stellan Skarsgård	2018	The Man Who Killed Don Quixote
Alec Baldwin	2018	A Star Is Born
Alec Baldwin	2012	To Rome with Love
Anthony Hopkins	2011	Thor
Alec Baldwin	2000	State and Main
Alec Baldwin	2005	Elizabethtown
Alec Baldwin	1988	Working Girl
Stellan Skarsgård	1996	Breaking the Waves
Natalie Portman	2011	Thor
Stellan Skarsgård	1997	Insomnia
Alec Baldwin	1988	Married to the Mob
Ian McKellen	2021	Infinitum: Subject Unknown
Stellan Skarsgård	2015	Cinderella
Alec Baldwin	2018	The Public
Alec Baldwin	2013	Seduced and Abandoned
Stellan Skarsgård	2017	Return to Montauk
Alec Baldwin	2006	The Good Shepherd
Rene Russo	2011	Thor
Alec Baldwin	2011	Hick
Stellan Skarsgård	2014	In Order of Disappearance
Alec Baldwin	2020	Pixie
Alec Baldwin	2019	Crown Vic
Alec Baldwin	2016	Back in the Day
Stellan Skarsgård	2012	The Avengers
Stellan Skarsgård	2000	Dancer in the Dark
James Woods	1994	The Getaway
Idris Elba	2013	Thor: The Dark World
Alec Baldwin	2019	Before You Know It
Alec Baldwin	2003	The Cooler
Alec Baldwin	2020	Chick Fight
Alec Baldwin	2016	Rules Don't Apply
Ian McKellen	2005	Neverwas
Alec Baldwin	1988	Talk Radio
Ian McKellen	2006	Flushed Away
Anthony Hopkins	1997	Amistad
Alec Baldwin	2017	The Boss Baby
Alec Baldwin	2018	BlacKkKlansman
Michael Shannon	2001	Pearl Harbor
Alec Baldwin	2003	The Cat in the Hat
Joe Pesci	2006	The Good Shepherd
Chris Hemsworth	2015	Avengers: Age of Ultron
Ian McKellen	2007	Stardust
Alec Baldwin	1996	The Juror
Rene Russo	2013	Thor: The Dark World
Christian Bale	2016	The Promise
Alec Baldwin	1998	Mercury Rising
Stellan Skarsgård	2009	Angels & Demons
Ian McKellen	1995	Restoration
Stellan Skarsgård	2011	Melancholia
Jeff Goldblum	2021	The Boss Baby: Family Business
Alec Baldwin	2004	Along Came Polly
Alec Baldwin	2016	Paris Can Wait
Ian McKellen	1993	Six Degrees of Separation
Stellan Skarsgård	1999	Deep Blue Sea
Stellan Skarsgård	1997	Amistad
Ian McKellen	1993	Last Action Hero
Harrison Ford	1988	Working Girl
Alec Baldwin	1999	Notting Hill
Sean Connery	1998	The Avengers
Alec Baldwin	2016	Blind
Alec Baldwin	1992	Glengarry Glen Ross
Chris Hemsworth	2013	Thor: The Dark World
Alec Baldwin	2019	Motherless Brooklyn
Alec Baldwin	1988	Beetlejuice
Alec Baldwin	2015	Concussion
Alec Baldwin	1997	The Edge
Matt Damon	2006	The Departed
Alec Baldwin	2021	The Boss Baby: Family Business
Tom Cruise	1985	Legend
Alec Baldwin	1990	Alice
Tom Cruise	2012	Rock of Ages
Ian McKellen	2012	The Hobbit: An Unexpected Journey
Stellan Skarsgård	1984	Dune
Sharon Stone	1993	Last Action Hero
Alec Baldwin	1999	The Confession
Alec Baldwin	1990	Miami Blues
Stellan Skarsgård	2002	No Good Deed
Ben Affleck	2001	Pearl Harbor
Ian McKellen	2013	The Wolverine
James Woods	2001	Final Fantasy: The Spirits Within
Alec Baldwin	2006	Running with Scissors
Alec Baldwin	1991	The Marrying Man
Idris Elba	2011	Thor
Tom Cruise	2005	Elizabethtown
Alec Baldwin	2002	The Adventures of Pluto Nash
Alec Baldwin	2001	Cats & Dogs
Alec Baldwin	1993	Malice
Kate Beckinsale	2001	Pearl Harbor
Stellan Skarsgård	1988	The Unbearable Lightness of Being
Stellan Skarsgård	1987	Jim & Piraterna Blom
Anthony Hopkins	2013	Thor: The Dark World
Ian McKellen	2016	The Promise
Alec Baldwin	2012	Rock of Ages
Ian McKellen	1985	Plenty
Stellan Skarsgård	2000	Timecode
Stellan Skarsgård	2013	Thor: The Dark World
Stellan Skarsgård	1990	The Hunt for Red October
Alec Baldwin	2019	Drunk Parents
Chris Hemsworth	2011	Thor
Natalie Portman	2013	Thor: The Dark World
Kate Beckinsale	2004	The Aviator
Idris Elba	2015	Avengers: Age of Ultron
Stellan Skarsgård	2006	Pirates of the Caribbean: Dead Man's Chest
Ian McKellen	2015	Mr. Holmes
Stellan Skarsgård	1982	The Simple-Minded Murderer
Alec Baldwin	1988	She's Having a Baby
Stellan Skarsgård	2008	Mamma Mia!
Al Pacino	2002	Insomnia
Matt Damon	2006	The Good Shepherd
Ian McKellen	2014	X-Men: Days of Future Past
Stellan Skarsgård	1997	Good Will Hunting
Alec Baldwin	1990	The Hunt for Red October
Matt Damon	1997	Good Will Hunting
Alec Baldwin	2014	Still Alice
Alec Baldwin	2019	Arctic Dogs
Alec Baldwin	2000	Thomas and the Magic Railroad
Al Pacino	1995	Two Bits
Stellan Skarsgård	2003	Dogville
Joe Pesci	1992	Home Alone 2: Lost in New York
Stellan Skarsgård	1998	Ronin
Ian McKellen	2019	The Good Liar
Alec Baldwin	1994	The Shadow
Alec Baldwin	1992	Prelude to a Kiss
Ian McKellen	2013	The Hobbit: The Desolation of Smaug
Alec Baldwin	2020	Beast Beast
Alec Baldwin	1996	Ghosts of Mississippi
Ian McKellen	1998	Gods and Monsters
Alec Baldwin	2009	My Sister's Keeper
Alec Baldwin	1996	Heaven's Prisoners
Chris Hemsworth	1998	The Avengers
Uma Thurman	1998	The Avengers
Alec Baldwin	2015	Andron
Alec Baldwin	2006	Mini's First Time
Ian McKellen	1994	The Shadow
Alec Baldwin	2006	The Departed
Stellan Skarsgård	2011	The Girl with the Dragon Tattoo
Alec Baldwin	2013	Blue Jasmine
Stellan Skarsgård	2019	Out Stealing Horses
Ian McKellen	2006	X-Men: The Last Stand
Ian McKellen	1981	Priest of Love
Stellan Skarsgård	2000	Harlan County War
Alec Baldwin	1989	Great Balls of Fire!
Ian McKellen	2001	The Lord of the Rings: The Fellowship of the Ring
Al Pacino	1992	Glengarry Glen Ross
Ben Affleck	1997	Good Will Hunting
Ian McKellen	1997	Swept from the Sea
Ian McKellen	2014	The Hobbit: The Battle of the Five Armies
James Woods	2001	Scary Movie 2
Anthony Hopkins	1997	The Edge
Alec Baldwin	2001	Final Fantasy: The Spirits Within
James Woods	1996	Ghosts of Mississippi
Alec Baldwin	1994	The Getaway
Alec Baldwin	1999	Outside Providence
Idris Elba	2014	No Good Deed
Alec Baldwin	2001	Pearl Harbor
Stellan Skarsgård	2016	Our Kind of Traitor
Ian McKellen	1989	Scandal
Ian McKellen	1998	Apt Pupil
Alec Baldwin	2004	The Aviator
Alec Baldwin	2001	The Royal Tenenbaums
Jeff Goldblum	2006	Mini's First Time
Alec Baldwin	2015	Aloha
Alec Baldwin	2008	My Best Friend's Girl
Ian McKellen	2003	The Lord of the Rings: The Return of the King
Alec Baldwin	2007	Suburban Girl
Ian McKellen	2006	The Da Vinci Code
Alec Baldwin	2012	Rise of the Guardians
Alec Baldwin	1995	Two Bits
\.


--
-- Data for Name: caratulas; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.caratulas (tipo, tamanno, anno_peliculas, titulo_peliculas, nombre_pag_web) FROM stdin;
\.


--
-- Data for Name: criticas; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.criticas (critico, puntuacion, texto, anno_peliculas, titulo_peliculas, nombre_pag_web, fecha) FROM stdin;
Andy Connor	8	A good movie even for a Documentary	2021	You're Watching Video Music Box	https://andysreviews.org/wordpress/andy_connor/you're_watching_video_music_box_2021	\N
Andy Connor	8	I didn't understand the dialogues cause i don't speak swedish	1982	The Simple-Minded Murderer	https://andysreviews.org/wordpress/andy_connor/the_simple-minded_murderer_1982	\N
Andy Connor	6	A good Documentary	2022	Gabby Giffords Won't Back Down	https://andysreviews.org/wordpress/andy_connor/gabby_giffords_won't_back_down_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	Wedding Season	https://andysreviews.org/wordpress/andy_connor/wedding_season_2022	\N
Andy Connor	6	That's what I call a great choice!	2021	The Man from Nowhere	https://andysreviews.org/wordpress/andy_connor/the_man_from_nowhere_2021	\N
Andy Connor	7	A good Documentary	2022	Loving Highsmith	https://andysreviews.org/wordpress/andy_connor/loving_highsmith_2022	\N
Andy Connor	7	A good Documentary	2022	The Day the Music Died/American Pie	https://andysreviews.org/wordpress/andy_connor/the_day_the_music_died/american_pie_2022	\N
Andy Connor	7	A good movie even for a Documentary	2022	How Did We Get Here?	https://andysreviews.org/wordpress/andy_connor/how_did_we_get_here?_2022	\N
Andy Connor	7	A good movie even for a Documentary	2021	Too Soon: Comedy After 9/11	https://andysreviews.org/wordpress/andy_connor/too_soon:_comedy_after_9/11_2021	\N
Andy Connor	7	A good movie to watch with your couple	2004	Kinsey	https://andysreviews.org/wordpress/andy_connor/kinsey_2004	\N
Andy Connor	6	That's what I call a great choice!	2021	V.C. Andrews' Landry Family V.C. Andrews' Hidden Jewel	https://andysreviews.org/wordpress/andy_connor/v.c._andrews'_landry_family_v.c._andrews'_hidden_jewel_2021	\N
Andy Connor	7	A good movie even for a Documentary	2022	The Janes	https://andysreviews.org/wordpress/andy_connor/the_janes_2022	\N
Andy Connor	5	That's what I call a great choice!	2022	Losing Addison	https://andysreviews.org/wordpress/andy_connor/losing_addison_2022	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	Life After You	https://andysreviews.org/wordpress/andy_connor/life_after_you_2022	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	Dating the Delaneys	https://andysreviews.org/wordpress/andy_connor/dating_the_delaneys_2022	\N
Andy Connor	7	A good movie even for a Documentary	2021	Rise Again: Tulsa and the Red Summer	https://andysreviews.org/wordpress/andy_connor/rise_again:_tulsa_and_the_red_summer_2021	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2021	Red Notice	https://andysreviews.org/wordpress/andy_connor/red_notice_2021	\N
Andy Connor	6	That's what I call a great choice!	2022	Love on Fire	https://andysreviews.org/wordpress/andy_connor/love_on_fire_2022	\N
Andy Connor	8	it is a bit far fetched but a good movie overall	2021	Psych 3: This Is Gus	https://andysreviews.org/wordpress/andy_connor/psych_3:_this_is_gus_2021	\N
Andy Connor	6	That's what I call a great choice!	2022	Gabriel's Rapture: Part Two	https://andysreviews.org/wordpress/andy_connor/gabriel's_rapture:_part_two_2022	\N
Andy Connor	8	A good movie even for a Documentary	2021	River's End: California's Latest Water War	https://andysreviews.org/wordpress/andy_connor/river's_end:_california's_latest_water_war_2021	\N
Andy Connor	6	Too long! i got asleep	2016	Rules Don't Apply	https://andysreviews.org/wordpress/andy_connor/rules_don't_apply_2016	\N
Andy Connor	6	That's what I call a great choice!	2022	Family Squares	https://andysreviews.org/wordpress/andy_connor/family_squares_2022	\N
Andy Connor	5	Not bad but definitely overrated	2021	The Resonator: Miskatonic U	https://andysreviews.org/wordpress/andy_connor/the_resonator:_miskatonic_u_2021	\N
Andy Connor	6	That's what I call a great choice!	2022	Tyson's Run	https://andysreviews.org/wordpress/andy_connor/tyson's_run_2022	\N
Andy Connor	6	Too long! i got asleep	2021	The Little Things	https://andysreviews.org/wordpress/andy_connor/the_little_things_2021	\N
Andy Connor	6	Not really a Scary movie	2022	Flux Gourmet	https://andysreviews.org/wordpress/andy_connor/flux_gourmet_2022	\N
Andy Connor	7	A good choice to spent the Sunday evening	2021	Ron's Gone Wrong	https://andysreviews.org/wordpress/andy_connor/ron's_gone_wrong_2021	\N
Andy Connor	7	Too long! i got asleep	2019	Motherless Brooklyn	https://andysreviews.org/wordpress/andy_connor/motherless_brooklyn_2019	\N
Andy Connor	8	Yeahh! This movie is definitely a must see	2022	Ricky Gervais: SuperNature	https://andysreviews.org/wordpress/andy_connor/ricky_gervais:_supernature_2022	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2021	Those Who Wish Me Dead	https://andysreviews.org/wordpress/andy_connor/those_who_wish_me_dead_2021	\N
Andy Connor	7	A good movie even for a Documentary	2021	The New York Times Presents Framing Britney Spears	https://andysreviews.org/wordpress/andy_connor/the_new_york_times_presents_framing_britney_spears_2021	\N
Andy Connor	5	That's what I call a great choice!	2021	Our Father	https://andysreviews.org/wordpress/andy_connor/our_father_2021	\N
Andy Connor	6	Awesome movie! It scared the hell out of me	2021	Son	https://andysreviews.org/wordpress/andy_connor/son_2021	\N
Andy Connor	5	That's what I call a great choice!	2021	Outside the Wire	https://andysreviews.org/wordpress/andy_connor/outside_the_wire_2021	\N
Andy Connor	8	A good movie to watch with your couple	1996	Breaking the Waves	https://andysreviews.org/wordpress/andy_connor/breaking_the_waves_1996	\N
Andy Connor	6	That's what I call a great choice!	2021	Sunday Mornings	https://andysreviews.org/wordpress/andy_connor/sunday_mornings_2021	\N
Andy Connor	8	A good movie even for a Documentary	2021	Patrice O'Neal: Killing Is Easy	https://andysreviews.org/wordpress/andy_connor/patrice_o'neal:_killing_is_easy_2021	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	1994	The Getaway	https://andysreviews.org/wordpress/andy_connor/the_getaway_1994	\N
Andy Connor	6	Not really a Scary movie	2021	Werewolves Within	https://andysreviews.org/wordpress/andy_connor/werewolves_within_2021	\N
Andy Connor	7	A good movie even for a Documentary	2022	And Just Like That... The Documentary	https://andysreviews.org/wordpress/andy_connor/and_just_like_that..._the_documentary_2022	\N
Andy Connor	5	That's what I call a great choice!	2021	Voyagers	https://andysreviews.org/wordpress/andy_connor/voyagers_2021	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2000	Charlie's Angels	https://andysreviews.org/wordpress/andy_connor/charlie's_angels_2000	\N
Andy Connor	6	That's what I call a great choice!	2021	Trees of Peace	https://andysreviews.org/wordpress/andy_connor/trees_of_peace_2021	\N
Andy Connor	8	A good choice to spent the Sunday evening	2014	X-Men: Days of Future Past	https://andysreviews.org/wordpress/andy_connor/x-men:_days_of_future_past_2014	\N
Andy Connor	5	That's what I call a great choice!	2021	The Killer in My Backyard	https://andysreviews.org/wordpress/andy_connor/the_killer_in_my_backyard_2021	\N
Andy Connor	7	it is a bit far fetched but a good movie overall	1985	Clue	https://andysreviews.org/wordpress/andy_connor/clue_1985	\N
Andy Connor	6	A good movie even for a Documentary	2021	Who We Are: A Chronicle of Racism in America	https://andysreviews.org/wordpress/andy_connor/who_we_are:_a_chronicle_of_racism_in_america_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	Secret Agent Dingledorf and His Trusty Dog Splat	https://andysreviews.org/wordpress/andy_connor/secret_agent_dingledorf_and_his_trusty_dog_splat_2021	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	Presence of Love	https://andysreviews.org/wordpress/andy_connor/presence_of_love_2022	\N
Andy Connor	7	it is a bit far fetched but a good movie overall	2021	The Chronicle Mysteries Helped to Death	https://andysreviews.org/wordpress/andy_connor/the_chronicle_mysteries_helped_to_death_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	The Fabulous Filipino Brothers	https://andysreviews.org/wordpress/andy_connor/the_fabulous_filipino_brothers_2021	\N
Andy Connor	8	A good movie even for a Documentary	2021	Untold: Breaking Point	https://andysreviews.org/wordpress/andy_connor/untold:_breaking_point_2021	\N
Andy Connor	6	Awesome movie! It scared the hell out of me	2021	The Righteous	https://andysreviews.org/wordpress/andy_connor/the_righteous_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	Secret Santa	https://andysreviews.org/wordpress/andy_connor/secret_santa_2021	\N
Andy Connor	8	A good movie even for a Documentary	2021	The Sparks Brothers	https://andysreviews.org/wordpress/andy_connor/the_sparks_brothers_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	The Trick	https://andysreviews.org/wordpress/andy_connor/the_trick_2021	\N
Andy Connor	8	A good choice to spent the Sunday evening	2021	The Mitchells vs the Machines	https://andysreviews.org/wordpress/andy_connor/the_mitchells_vs_the_machines_2021	\N
Andy Connor	7	A good movie even for a Documentary	2022	Not Just a Girl	https://andysreviews.org/wordpress/andy_connor/not_just_a_girl_2022	\N
Andy Connor	5	Awesome movie! It scared the hell out of me	2021	Strings	https://andysreviews.org/wordpress/andy_connor/strings_2021	\N
Andy Connor	5	Not bad but definitely overrated	2020	Chick Fight	https://andysreviews.org/wordpress/andy_connor/chick_fight_2020	\N
Andy Connor	6	That's what I call a great choice!	2021	One and the Same	https://andysreviews.org/wordpress/andy_connor/one_and_the_same_2021	\N
Andy Connor	7	That's what I call a great choice!	2022	The Modern Way	https://andysreviews.org/wordpress/andy_connor/the_modern_way_2022	\N
Andy Connor	7	A good movie even for a Documentary	2021	Terry Venables: A Man Can Dream	https://andysreviews.org/wordpress/andy_connor/terry_venables:_a_man_can_dream_2021	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2021	The Guilty	https://andysreviews.org/wordpress/andy_connor/the_guilty_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	Women Is Losers	https://andysreviews.org/wordpress/andy_connor/women_is_losers_2021	\N
Andy Connor	5	That's what I call a great choice!	2022	Master	https://andysreviews.org/wordpress/andy_connor/master_2022	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2021	Symphoria	https://andysreviews.org/wordpress/andy_connor/symphoria_2021	\N
Andy Connor	6	That's what I call a great choice!	2022	Samaritan	https://andysreviews.org/wordpress/andy_connor/samaritan_2022	\N
Andy Connor	8	A good Documentary	2022	In Search of Tomorrow	https://andysreviews.org/wordpress/andy_connor/in_search_of_tomorrow_2022	\N
Andy Connor	5	That's what I call a great choice!	2022	Trevor: The Musical	https://andysreviews.org/wordpress/andy_connor/trevor:_the_musical_2022	\N
Andy Connor	7	That's what I call a great choice!	2021	People Just Do Nothing: Big in Japan	https://andysreviews.org/wordpress/andy_connor/people_just_do_nothing:_big_in_japan_2021	\N
Andy Connor	6	I didn't understand the dialogues cause i don't speak spanish	2022	Backpackers	https://andysreviews.org/wordpress/andy_connor/backpackers_2022	\N
Andy Connor	6	That's what I call a great choice!	2021	True Things	https://andysreviews.org/wordpress/andy_connor/true_things_2021	\N
Andy Connor	6	A good movie even for a Documentary	2022	We Met in Virtual Reality	https://andysreviews.org/wordpress/andy_connor/we_met_in_virtual_reality_2022	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	North to Home	https://andysreviews.org/wordpress/andy_connor/north_to_home_2022	\N
Andy Connor	8	it is a bit far fetched but a good movie overall	2022	The Batman	https://andysreviews.org/wordpress/andy_connor/the_batman_2022	\N
Andy Connor	7	it is a bit far fetched but a good movie overall	2021	The Unforgivable	https://andysreviews.org/wordpress/andy_connor/the_unforgivable_2021	\N
Andy Connor	7	That's what I call a great choice!	1996	Muppet Treasure Island	https://andysreviews.org/wordpress/andy_connor/muppet_treasure_island_1996	\N
Andy Connor	6	A good movie even for a Documentary	2022	Machine Gun Kelly's Life in Pink	https://andysreviews.org/wordpress/andy_connor/machine_gun_kelly's_life_in_pink_2022	\N
Andy Connor	8	Yeahh! This movie is definitely a must see	2022	Norm Macdonald: Nothing Special	https://andysreviews.org/wordpress/andy_connor/norm_macdonald:_nothing_special_2022	\N
Andy Connor	5	A good movie even for a Documentary	2021	Pharma Bro	https://andysreviews.org/wordpress/andy_connor/pharma_bro_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	The Secret Lives of College Freshmen	https://andysreviews.org/wordpress/andy_connor/the_secret_lives_of_college_freshmen_2021	\N
Andy Connor	7	A good choice to spent the Sunday evening	2013	Thor: The Dark World	https://andysreviews.org/wordpress/andy_connor/thor:_the_dark_world_2013	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	Cha Cha Real Smooth	https://andysreviews.org/wordpress/andy_connor/cha_cha_real_smooth_2022	\N
Andy Connor	7	A good Documentary	2021	The Super Bob Einstein Movie	https://andysreviews.org/wordpress/andy_connor/the_super_bob_einstein_movie_2021	\N
Andy Connor	6	A good movie even for a Documentary	2022	Joel Kim Booster: Psychosexual	https://andysreviews.org/wordpress/andy_connor/joel_kim_booster:_psychosexual_2022	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2022	Silverton Siege	https://andysreviews.org/wordpress/andy_connor/silverton_siege_2022	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2022	The Sea Beast	https://andysreviews.org/wordpress/andy_connor/the_sea_beast_2022	\N
Andy Connor	6	A good movie even for a Documentary	2021	The Legend of the Underground	https://andysreviews.org/wordpress/andy_connor/the_legend_of_the_underground_2021	\N
Andy Connor	5	it is a bit far fetched but a good movie overall	2021	The Cleaner	https://andysreviews.org/wordpress/andy_connor/the_cleaner_2021	\N
Andy Connor	5	I didn't understand the dialogues cause i don't speak spanish	2021	¡A todo tren! Destino Asturias	https://andysreviews.org/wordpress/andy_connor/¡a_todo_tren!_destino_asturias_2021	\N
Andy Connor	7	Too long! i got asleep	2022	The Valet	https://andysreviews.org/wordpress/andy_connor/the_valet_2022	\N
Andy Connor	6	A good movie even for a Documentary	2021	The Day Sports Stood Still	https://andysreviews.org/wordpress/andy_connor/the_day_sports_stood_still_2021	\N
Andy Connor	5	That's what I call a great choice!	2021	The Laureate	https://andysreviews.org/wordpress/andy_connor/the_laureate_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	PAW Patrol: The Movie	https://andysreviews.org/wordpress/andy_connor/paw_patrol:_the_movie_2021	\N
Andy Connor	6	That's what I call a great choice!	2021	Together Together	https://andysreviews.org/wordpress/andy_connor/together_together_2021	\N
Andy Connor	5	That's what I call a great choice!	2021	Theo Von: Regular People	https://andysreviews.org/wordpress/andy_connor/theo_von:_regular_people_2021	\N
Andy Connor	8	A good choice to spent the Sunday evening	2022	DC League of Super-Pets	https://andysreviews.org/wordpress/andy_connor/dc_league_of_super-pets_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	A Tail of Love	https://andysreviews.org/wordpress/andy_connor/a_tail_of_love_2022	\N
Andy Connor	6	A good movie even for a Documentary	2021	Tulsa: The Fire and the Forgotten	https://andysreviews.org/wordpress/andy_connor/tulsa:_the_fire_and_the_forgotten_2021	\N
Andy Connor	6	I didn't understand the dialogues cause i don't speak spanish	2021	Our Lady of San Juan Four Centuries of Miracles	https://andysreviews.org/wordpress/andy_connor/our_lady_of_san_juan_four_centuries_of_miracles_2021	\N
Andy Connor	7	it is a bit far fetched but a good movie overall	1998	Apt Pupil	https://andysreviews.org/wordpress/andy_connor/apt_pupil_1998	\N
Andy Connor	7	That's what I call a great choice!	2021	Spencer	https://andysreviews.org/wordpress/andy_connor/spencer_2021	\N
Andy Connor	6	That's what I call a great choice!	2022	Sweet as Pie	https://andysreviews.org/wordpress/andy_connor/sweet_as_pie_2022	\N
Andy Connor	6	A good movie even for a Documentary	2022	Last Exit: Space	https://andysreviews.org/wordpress/andy_connor/last_exit:_space_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	Dog	https://andysreviews.org/wordpress/andy_connor/dog_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	Borrego	https://andysreviews.org/wordpress/andy_connor/borrego_2022	\N
Andy Connor	8	it is a bit far fetched but a good movie overall	2003	Dogville	https://andysreviews.org/wordpress/andy_connor/dogville_2003	\N
Andy Connor	5	That's what I call a great choice!	2021	Soccer Mom Madam	https://andysreviews.org/wordpress/andy_connor/soccer_mom_madam_2021	\N
Andy Connor	5	it is a bit far fetched but a good movie overall	2022	Spiderhead	https://andysreviews.org/wordpress/andy_connor/spiderhead_2022	\N
Andy Connor	6	A good movie even for a Documentary	2021	The Act of Reading	https://andysreviews.org/wordpress/andy_connor/the_act_of_reading_2021	\N
Andy Connor	7	A good movie even for a Documentary	2022	The Tinder Swindler	https://andysreviews.org/wordpress/andy_connor/the_tinder_swindler_2022	\N
Andy Connor	6	it is a bit far fetched but a good movie overall	2019	Crown Vic	https://andysreviews.org/wordpress/andy_connor/crown_vic_2019	\N
Andy Connor	6	That's what I call a great choice!	2022	I Challenger	https://andysreviews.org/wordpress/andy_connor/i_challenger_2022	\N
Andy Connor	6	A good choice to spent the Sunday evening	2021	The Spine of Night	https://andysreviews.org/wordpress/andy_connor/the_spine_of_night_2021	\N
Andy Connor	7	Yeahh! This movie is definitely a must see	2015	Concussion	https://andysreviews.org/wordpress/andy_connor/concussion_2015	\N
Andy Connor	6	That's what I call a great choice!	2022	Lightyear	https://andysreviews.org/wordpress/andy_connor/lightyear_2022	\N
Andy Connor	6	Too long! i got asleep	1996	Heaven's Prisoners	https://andysreviews.org/wordpress/andy_connor/heaven's_prisoners_1996	\N
Andy Connor	6	Awesome movie! It scared the hell out of me	2022	Glorious	https://andysreviews.org/wordpress/andy_connor/glorious_2022	\N
Andy Connor	7	A good movie even for a Documentary	2022	Look at Me: XXXTentacion	https://andysreviews.org/wordpress/andy_connor/look_at_me:_xxxtentacion_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	Better Nate Than Ever	https://andysreviews.org/wordpress/andy_connor/better_nate_than_ever_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	The Perfect Pairing	https://andysreviews.org/wordpress/andy_connor/the_perfect_pairing_2022	\N
Andy Connor	6	That's what I call a great choice!	2021	Resort to Love	https://andysreviews.org/wordpress/andy_connor/resort_to_love_2021	\N
Andy Connor	5	That's what I call a great choice!	2022	Slash/Back	https://andysreviews.org/wordpress/andy_connor/slash/back_2022	\N
Andy Connor	7	That's what I call a great choice!	2021	Wildhood	https://andysreviews.org/wordpress/andy_connor/wildhood_2021	\N
Andy Connor	5	That's what I call a great choice!	2022	Run & Gun	https://andysreviews.org/wordpress/andy_connor/run_&_gun_2022	\N
Andy Connor	6	That's what I call a great choice!	2022	Dirty Daddy: The Bob Saget Tribute	https://andysreviews.org/wordpress/andy_connor/dirty_daddy:_the_bob_saget_tribute_2022	\N
Andy Connor	6	That's what I call a great choice!	2021	Rumble	https://andysreviews.org/wordpress/andy_connor/rumble_2021	\N
Andy Connor	6	Too long! i got asleep	1993	Last Action Hero	https://andysreviews.org/wordpress/andy_connor/last_action_hero_1993	\N
Andy Connor	5	That's what I call a great choice!	2021	The Clue to Love	https://andysreviews.org/wordpress/andy_connor/the_clue_to_love_2021	\N
Andy Connor	7	A good movie even for a Documentary	2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn	https://andysreviews.org/wordpress/andy_connor/wework:_or_the_making_and_breaking_of_a_$47_billion_unicorn_2021	\N
Andy Connor	6	A good movie even for a Documentary	2021	Pray Away	https://andysreviews.org/wordpress/andy_connor/pray_away_2021	\N
Andy Connor	5	That's what I call a great choice!	2021	Trippin' with the Kandasamys	https://andysreviews.org/wordpress/andy_connor/trippin'_with_the_kandasamys_2021	\N
Andy Connor	5	Too long! i got asleep	2022	The 64th Annual Grammy Awards	https://andysreviews.org/wordpress/andy_connor/the_64th_annual_grammy_awards_2022	\N
Claire Johnson	7	Not really a Scary movie	1975	The Rocky Horror Picture Show	https://myspace.us/claires_word/movies/claire_johnson/the_rocky_horror_picture_show_1975	\N
Claire Johnson	7	A good movie even for a Documentary	2021	Who Killed the KLF?	https://myspace.us/claires_word/movies/claire_johnson/who_killed_the_klf?_2021	\N
Claire Johnson	7	A good movie to watch with your couple	2021	The Souvenir: Part II	https://myspace.us/claires_word/movies/claire_johnson/the_souvenir:_part_ii_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Where Is Anne Frank	https://myspace.us/claires_word/movies/claire_johnson/where_is_anne_frank_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2002	Insomnia	https://myspace.us/claires_word/movies/claire_johnson/insomnia_2002	\N
Claire Johnson	7	Awesome movie! It scared the hell out of me	1978	The Shout	https://myspace.us/claires_word/movies/claire_johnson/the_shout_1978	\N
Claire Johnson	8	A good movie even for a Documentary	2021	The One and Only Dick Gregory	https://myspace.us/claires_word/movies/claire_johnson/the_one_and_only_dick_gregory_2021	\N
Claire Johnson	9	A good choice to spent the Saturday evening	2003	The Lord of the Rings: The Return of the King	https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_return_of_the_king_2003	\N
Claire Johnson	6	That's what I call a great choice!	2021	The Voyeurs	https://myspace.us/claires_word/movies/claire_johnson/the_voyeurs_2021	\N
Claire Johnson	6	That's what I call a great choice!	2022	Book of Love	https://myspace.us/claires_word/movies/claire_johnson/book_of_love_2022	\N
Claire Johnson	7	A good movie even for a Documentary	2022	Picabo	https://myspace.us/claires_word/movies/claire_johnson/picabo_2022	\N
Claire Johnson	8	A good choice to spent the Saturday evening	2022	The Inside Outtakes	https://myspace.us/claires_word/movies/claire_johnson/the_inside_outtakes_2022	\N
Claire Johnson	5	That's what I call a great choice!	2022	Paradise Highway	https://myspace.us/claires_word/movies/claire_johnson/paradise_highway_2022	\N
Claire Johnson	6	A good movie even for a Documentary	2021	The Phantom	https://myspace.us/claires_word/movies/claire_johnson/the_phantom_2021	\N
Claire Johnson	7	That's what I call a great choice!	2021	Plan B	https://myspace.us/claires_word/movies/claire_johnson/plan_b_2021	\N
Claire Johnson	8	A good movie even for a Documentary	2021	President	https://myspace.us/claires_word/movies/claire_johnson/president_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2021	The Big Rant	https://myspace.us/claires_word/movies/claire_johnson/the_big_rant_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	Mrs Harris Goes to Paris	https://myspace.us/claires_word/movies/claire_johnson/mrs_harris_goes_to_paris_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	The Wedding Trip	https://myspace.us/claires_word/movies/claire_johnson/the_wedding_trip_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Small Engine Repair	https://myspace.us/claires_word/movies/claire_johnson/small_engine_repair_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	What?	https://myspace.us/claires_word/movies/claire_johnson/what?_2021	\N
Claire Johnson	5	A good movie even for a Documentary	2021	Prince Philip: The Man Behind the Throne	https://myspace.us/claires_word/movies/claire_johnson/prince_philip:_the_man_behind_the_throne_2021	\N
Claire Johnson	8	A good choice to spent the Sunday evening	2021	Zack Snyder's Justice League	https://myspace.us/claires_word/movies/claire_johnson/zack_snyder's_justice_league_2021	\N
Claire Johnson	6	Too long! i got asleep	2022	Fantastic Beasts: The Secrets of Dumbledore	https://myspace.us/claires_word/movies/claire_johnson/fantastic_beasts:_the_secrets_of_dumbledore_2022	\N
Claire Johnson	7	I didn't understand the dialogues cause i don't speak spanish	2021	Otra forma de entender la vida	https://myspace.us/claires_word/movies/claire_johnson/otra_forma_de_entender_la_vida_2021	\N
Claire Johnson	6	A good movie even for a Documentary	2022	Fittest on Earth: Next Gen	https://myspace.us/claires_word/movies/claire_johnson/fittest_on_earth:_next_gen_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	Sometime Other Than Now	https://myspace.us/claires_word/movies/claire_johnson/sometime_other_than_now_2021	\N
Claire Johnson	6	That's what I call a great choice!	2022	The Great American Tag Sale with Martha Stewart	https://myspace.us/claires_word/movies/claire_johnson/the_great_american_tag_sale_with_martha_stewart_2022	\N
Claire Johnson	8	A good Documentary	2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)	https://myspace.us/claires_word/movies/claire_johnson/summer_of_soul_(...or_when_the_revolution_could_not_be_televised)_2021	\N
Claire Johnson	8	A good movie even for a Documentary	2021	The Art of Incarceration	https://myspace.us/claires_word/movies/claire_johnson/the_art_of_incarceration_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Songs for a Sloth	https://myspace.us/claires_word/movies/claire_johnson/songs_for_a_sloth_2021	\N
Claire Johnson	7	A good movie even for a Documentary	2021	This Is Francis X. Bushman	https://myspace.us/claires_word/movies/claire_johnson/this_is_francis_x._bushman_2021	\N
Claire Johnson	8	Yeahh! This movie is definitely a must see	2022	Thirteen Lives	https://myspace.us/claires_word/movies/claire_johnson/thirteen_lives_2022	\N
Claire Johnson	6	That's what I call a great choice!	2022	Jessie and the Elf Boy	https://myspace.us/claires_word/movies/claire_johnson/jessie_and_the_elf_boy_2022	\N
Claire Johnson	7	Awesome movie! It scared the hell out of me	2022	Nope	https://myspace.us/claires_word/movies/claire_johnson/nope_2022	\N
Claire Johnson	5	Awesome movie! It scared the hell out of me	2021	Seance	https://myspace.us/claires_word/movies/claire_johnson/seance_2021	\N
Claire Johnson	6	I didn't understand the dialogues cause i don't speak spanish	2021	The Grandmother	https://myspace.us/claires_word/movies/claire_johnson/the_grandmother_2021	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	2021	Peter Rabbit 2: The Runaway	https://myspace.us/claires_word/movies/claire_johnson/peter_rabbit_2:_the_runaway_2021	\N
Claire Johnson	5	That's what I call a great choice!	2007	Suburban Girl	https://myspace.us/claires_word/movies/claire_johnson/suburban_girl_2007	\N
Claire Johnson	5	That's what I call a great choice!	2022	Spin Me Round	https://myspace.us/claires_word/movies/claire_johnson/spin_me_round_2022	\N
Claire Johnson	9	A good choice to spent the Saturday evening	2001	The Lord of the Rings: The Fellowship of the Ring	https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_fellowship_of_the_ring_2001	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2021	The Fallout	https://myspace.us/claires_word/movies/claire_johnson/the_fallout_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Rhapsody of Love	https://myspace.us/claires_word/movies/claire_johnson/rhapsody_of_love_2021	\N
Claire Johnson	7	Too long! i got asleep	2021	Operation Mincemeat	https://myspace.us/claires_word/movies/claire_johnson/operation_mincemeat_2021	\N
Claire Johnson	7	That's what I call a great choice!	2021	The Most Reluctant Convert	https://myspace.us/claires_word/movies/claire_johnson/the_most_reluctant_convert_2021	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	2021	Silk Road	https://myspace.us/claires_word/movies/claire_johnson/silk_road_2021	\N
Claire Johnson	6	That's what I call a great choice!	2022	Nude Tuesday	https://myspace.us/claires_word/movies/claire_johnson/nude_tuesday_2022	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	2022	Kimi	https://myspace.us/claires_word/movies/claire_johnson/kimi_2022	\N
Claire Johnson	6	That's what I call a great choice!	2022	City of Vultures 3	https://myspace.us/claires_word/movies/claire_johnson/city_of_vultures_3_2022	\N
Claire Johnson	6	That's what I call a great choice!	2022	Vanished: Searching for My Sister	https://myspace.us/claires_word/movies/claire_johnson/vanished:_searching_for_my_sister_2022	\N
Claire Johnson	8	Yeahh! This movie is definitely a must see	1990	The Hunt for Red October	https://myspace.us/claires_word/movies/claire_johnson/the_hunt_for_red_october_1990	\N
Claire Johnson	5	That's what I call a great choice!	2021	Walking with Herb	https://myspace.us/claires_word/movies/claire_johnson/walking_with_herb_2021	\N
Claire Johnson	6	Awesome movie! It scared the hell out of me	2014	No Good Deed	https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2014	\N
Claire Johnson	7	A good movie even for a Documentary	2022	Shane	https://myspace.us/claires_word/movies/claire_johnson/shane_2022	\N
Claire Johnson	5	it is a bit far fetched but a good movie overall	2021	Snakehead	https://myspace.us/claires_word/movies/claire_johnson/snakehead_2021	\N
Claire Johnson	5	That's what I call a great choice!	2022	Moon Manor	https://myspace.us/claires_word/movies/claire_johnson/moon_manor_2022	\N
Claire Johnson	5	Awesome movie! It scared the hell out of me	2021	The Exorcism of God	https://myspace.us/claires_word/movies/claire_johnson/the_exorcism_of_god_2021	\N
Claire Johnson	6	Too long! i got asleep	2021	The King's Man	https://myspace.us/claires_word/movies/claire_johnson/the_king's_man_2021	\N
Claire Johnson	7	Too long! i got asleep	2021	WWE: Royal Rumble	https://myspace.us/claires_word/movies/claire_johnson/wwe:_royal_rumble_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Saving Paradise	https://myspace.us/claires_word/movies/claire_johnson/saving_paradise_2021	\N
Claire Johnson	5	That's what I call a great choice!	2022	Prizefighter: The Life of Jem Belcher	https://myspace.us/claires_word/movies/claire_johnson/prizefighter:_the_life_of_jem_belcher_2022	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	Fourth of July	https://myspace.us/claires_word/movies/claire_johnson/fourth_of_july_2022	\N
Claire Johnson	6	Too long! i got asleep	2021	The Final Code	https://myspace.us/claires_word/movies/claire_johnson/the_final_code_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Vengeance Is Mine	https://myspace.us/claires_word/movies/claire_johnson/vengeance_is_mine_2021	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	2021	The Woman in the Window	https://myspace.us/claires_word/movies/claire_johnson/the_woman_in_the_window_2021	\N
Claire Johnson	8	A good movie to watch with your couple	2022	Downton Abbey: A New Era	https://myspace.us/claires_word/movies/claire_johnson/downton_abbey:_a_new_era_2022	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	The Finellis Movie	https://myspace.us/claires_word/movies/claire_johnson/the_finellis_movie_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	Strange Friends	https://myspace.us/claires_word/movies/claire_johnson/strange_friends_2021	\N
Claire Johnson	7	That's what I call a great choice!	2022	Love Fashion Repeat	https://myspace.us/claires_word/movies/claire_johnson/love_fashion_repeat_2022	\N
Claire Johnson	7	A good Documentary	2021	The Conservation Game	https://myspace.us/claires_word/movies/claire_johnson/the_conservation_game_2021	\N
Claire Johnson	5	That's what I call a great choice!	1995	Congo	https://myspace.us/claires_word/movies/claire_johnson/congo_1995	\N
Claire Johnson	7	A good movie to watch with your couple	1988	The Unbearable Lightness of Being	https://myspace.us/claires_word/movies/claire_johnson/the_unbearable_lightness_of_being_1988	\N
Claire Johnson	6	That's what I call a great choice!	2022	Aloha with Love	https://myspace.us/claires_word/movies/claire_johnson/aloha_with_love_2022	\N
Claire Johnson	5	Awesome movie! It scared the hell out of me	2021	The Manor	https://myspace.us/claires_word/movies/claire_johnson/the_manor_2021	\N
Claire Johnson	7	A good movie even for a Documentary	2021	The Real Charlie Chaplin	https://myspace.us/claires_word/movies/claire_johnson/the_real_charlie_chaplin_2021	\N
Claire Johnson	8	I didn't understand the dialogues cause i don't speak spanish	2022	Los Tigres Del Norte: Stories to Tell	https://myspace.us/claires_word/movies/claire_johnson/los_tigres_del_norte:_stories_to_tell_2022	\N
Claire Johnson	7	A good movie to watch with your couple	2021	Time for Them to Come Home for Christmas	https://myspace.us/claires_word/movies/claire_johnson/time_for_them_to_come_home_for_christmas_2021	\N
Claire Johnson	5	That's what I call a great choice!	2021	Slumber Party Massacre	https://myspace.us/claires_word/movies/claire_johnson/slumber_party_massacre_2021	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	2021	Wild Indian	https://myspace.us/claires_word/movies/claire_johnson/wild_indian_2021	\N
Claire Johnson	7	I didn't understand the dialogues cause i don't speak spanish	2021	Parallel Mothers	https://myspace.us/claires_word/movies/claire_johnson/parallel_mothers_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	Past Shadows	https://myspace.us/claires_word/movies/claire_johnson/past_shadows_2021	\N
Claire Johnson	7	That's what I call a great choice!	2021	Right in Front of Me	https://myspace.us/claires_word/movies/claire_johnson/right_in_front_of_me_2021	\N
Claire Johnson	7	Too long! i got asleep	2021	The Survivor	https://myspace.us/claires_word/movies/claire_johnson/the_survivor_2021	\N
Claire Johnson	5	Not bad but definitely overrated	2022	Finding Carlos	https://myspace.us/claires_word/movies/claire_johnson/finding_carlos_2022	\N
Claire Johnson	7	A good movie even for a Documentary	2021	The Man Putin Couldn't Kill	https://myspace.us/claires_word/movies/claire_johnson/the_man_putin_couldn't_kill_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	Rise	https://myspace.us/claires_word/movies/claire_johnson/rise_2022	\N
Claire Johnson	8	A good Documentary	2021	The Smartest Kids in the World	https://myspace.us/claires_word/movies/claire_johnson/the_smartest_kids_in_the_world_2021	\N
Claire Johnson	7	That's what I call a great choice!	2022	Two Tickets to Paradise	https://myspace.us/claires_word/movies/claire_johnson/two_tickets_to_paradise_2022	\N
Claire Johnson	5	Awesome movie! It scared the hell out of me	2021	Slapface	https://myspace.us/claires_word/movies/claire_johnson/slapface_2021	\N
Claire Johnson	7	That's what I call a great choice!	2022	A Royal Runaway Romance	https://myspace.us/claires_word/movies/claire_johnson/a_royal_runaway_romance_2022	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	Hustle	https://myspace.us/claires_word/movies/claire_johnson/hustle_2022	\N
Claire Johnson	7	A good movie even for a Documentary	2021	Woodstock 99: Peace Love and Rage	https://myspace.us/claires_word/movies/claire_johnson/woodstock_99:_peace_love_and_rage_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2009	My Sister's Keeper	https://myspace.us/claires_word/movies/claire_johnson/my_sister's_keeper_2009	\N
Claire Johnson	6	That's what I call a great choice!	2021	Poser	https://myspace.us/claires_word/movies/claire_johnson/poser_2021	\N
Claire Johnson	7	That's what I call a great choice!	2021	Passing	https://myspace.us/claires_word/movies/claire_johnson/passing_2021	\N
Claire Johnson	5	Not bad but definitely overrated	2021	Trigger Point	https://myspace.us/claires_word/movies/claire_johnson/trigger_point_2021	\N
Claire Johnson	6	That's what I call a great choice!	2021	The Razz Guy	https://myspace.us/claires_word/movies/claire_johnson/the_razz_guy_2021	\N
Claire Johnson	6	That's what I call a great choice!	2022	Luck	https://myspace.us/claires_word/movies/claire_johnson/luck_2022	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	1993	Malice	https://myspace.us/claires_word/movies/claire_johnson/malice_1993	\N
Claire Johnson	8	A good Documentary	2022	Explorer	https://myspace.us/claires_word/movies/claire_johnson/explorer_2022	\N
Claire Johnson	6	A good Documentary	2022	Tom Daley: Illegal to Be Me	https://myspace.us/claires_word/movies/claire_johnson/tom_daley:_illegal_to_be_me_2022	\N
Claire Johnson	5	That's what I call a great choice!	2021	Seven Deadly Sins: Lust	https://myspace.us/claires_word/movies/claire_johnson/seven_deadly_sins:_lust_2021	\N
Claire Johnson	6	That's what I call a great choice!	2022	A Perfect Pairing	https://myspace.us/claires_word/movies/claire_johnson/a_perfect_pairing_2022	\N
Claire Johnson	7	A good movie even for a Documentary	2022	The Wall: Climb for Gold	https://myspace.us/claires_word/movies/claire_johnson/the_wall:_climb_for_gold_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	Wolf	https://myspace.us/claires_word/movies/claire_johnson/wolf_2021	\N
Claire Johnson	7	A good Documentary	2021	The Unspeakable	https://myspace.us/claires_word/movies/claire_johnson/the_unspeakable_2021	\N
Claire Johnson	6	A good movie even for a Documentary	2022	Endangered	https://myspace.us/claires_word/movies/claire_johnson/endangered_2022	\N
Claire Johnson	6	That's what I call a great choice!	2022	Against the Ice	https://myspace.us/claires_word/movies/claire_johnson/against_the_ice_2022	\N
Claire Johnson	5	Not really a Scary movie	2022	Line Sisters	https://myspace.us/claires_word/movies/claire_johnson/line_sisters_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	Without Remorse	https://myspace.us/claires_word/movies/claire_johnson/without_remorse_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor	https://myspace.us/claires_word/movies/claire_johnson/jon_stewart:_the_kennedy_center_mark_twain_prize_for_american_humor_2022	\N
Claire Johnson	6	it is a bit far fetched but a good movie overall	1990	Miami Blues	https://myspace.us/claires_word/movies/claire_johnson/miami_blues_1990	\N
Claire Johnson	6	That's what I call a great choice!	2021	The Baker's Son	https://myspace.us/claires_word/movies/claire_johnson/the_baker's_son_2021	\N
Claire Johnson	7	That's what I call a great choice!	2021	The LCD Soundsystem Holiday Special	https://myspace.us/claires_word/movies/claire_johnson/the_lcd_soundsystem_holiday_special_2021	\N
Claire Johnson	7	A good movie even for a Documentary	2022	Leave No Trace	https://myspace.us/claires_word/movies/claire_johnson/leave_no_trace_2022	\N
Claire Johnson	6	A good movie even for a Documentary	2022	Halftime	https://myspace.us/claires_word/movies/claire_johnson/halftime_2022	\N
Claire Johnson	7	A good movie even for a Documentary	2022	Our Father	https://myspace.us/claires_word/movies/claire_johnson/our_father_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	The Princess Switch 3	https://myspace.us/claires_word/movies/claire_johnson/the_princess_switch_3_2021	\N
Claire Johnson	5	it is a bit far fetched but a good movie overall	2021	Overrun	https://myspace.us/claires_word/movies/claire_johnson/overrun_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	1998	Gods and Monsters	https://myspace.us/claires_word/movies/claire_johnson/gods_and_monsters_1998	\N
Claire Johnson	5	it is a bit far fetched but a good movie overall	2021	Twisted Little Lies	https://myspace.us/claires_word/movies/claire_johnson/twisted_little_lies_2021	\N
Claire Johnson	5	That's what I call a great choice!	2021	The Judge of Harbor County	https://myspace.us/claires_word/movies/claire_johnson/the_judge_of_harbor_county_2021	\N
Claire Johnson	5	it is a bit far fetched but a good movie overall	2002	No Good Deed	https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2002	\N
Claire Johnson	7	A good Documentary	2022	Untold: The Girlfriend Who Didn't Exist	https://myspace.us/claires_word/movies/claire_johnson/untold:_the_girlfriend_who_didn't_exist_2022	\N
Claire Johnson	6	That's what I call a great choice!	2021	Out of Time	https://myspace.us/claires_word/movies/claire_johnson/out_of_time_2021	\N
Claire Johnson	5	That's what I call a great choice!	2021	The Space Between	https://myspace.us/claires_word/movies/claire_johnson/the_space_between_2021	\N
Claire Johnson	7	A good choice to spent the Sunday evening	2022	Doctor Strange in the Multiverse of Madness	https://myspace.us/claires_word/movies/claire_johnson/doctor_strange_in_the_multiverse_of_madness_2022	\N
Claire Johnson	8	Yeahh! This movie is definitely a must see	1988	Beetlejuice	https://myspace.us/claires_word/movies/claire_johnson/beetlejuice_1988	\N
Claire Johnson	6	That's what I call a great choice!	2022	Dual	https://myspace.us/claires_word/movies/claire_johnson/dual_2022	\N
Claire Johnson	7	That's what I call a great choice!	2021	The Map of Tiny Perfect Things	https://myspace.us/claires_word/movies/claire_johnson/the_map_of_tiny_perfect_things_2021	\N
Claire Johnson	7	A good movie even for a Documentary	2021	Rebel Hearts	https://myspace.us/claires_word/movies/claire_johnson/rebel_hearts_2021	\N
Claire Johnson	7	Too long! i got asleep	2009	Angels & Demons	https://myspace.us/claires_word/movies/claire_johnson/angels_&_demons_2009	\N
Claire Johnson	5	That's what I call a great choice!	2021	The Colony	https://myspace.us/claires_word/movies/claire_johnson/the_colony_2021	\N
Claire Johnson	7	Yeahh! This movie is definitely a must see	2021	Raya and the Last Dragon	https://myspace.us/claires_word/movies/claire_johnson/raya_and_the_last_dragon_2021	\N
Claire Johnson	7	A good choice to spent the Sunday evening	2021	Swan Song	https://myspace.us/claires_word/movies/claire_johnson/swan_song_2021	\N
Clint Brinner	7	That's what I call a great choice!	2021	The 27-Hour Day	https://cars_n_movies.com/movie_reviews/clint_brinner/the_27-hour_day_2021	\N
Clint Brinner	8	Yeahh! This movie is definitely a must see	2001	The Royal Tenenbaums	https://cars_n_movies.com/movie_reviews/clint_brinner/the_royal_tenenbaums_2001	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2022	Moses Storm: Trash White	https://cars_n_movies.com/movie_reviews/clint_brinner/moses_storm:_trash_white_2022	\N
Clint Brinner	6	That's what I call a great choice!	2022	The Lost City	https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_city_2022	\N
Clint Brinner	5	That's what I call a great choice!	2021	Infinitum: Subject Unknown	https://cars_n_movies.com/movie_reviews/clint_brinner/infinitum:_subject_unknown_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	A Second Chance at Love	https://cars_n_movies.com/movie_reviews/clint_brinner/a_second_chance_at_love_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	The Issue with Elvis	https://cars_n_movies.com/movie_reviews/clint_brinner/the_issue_with_elvis_2022	\N
Clint Brinner	5	Not bad but definitely overrated	2022	Seize the Night	https://cars_n_movies.com/movie_reviews/clint_brinner/seize_the_night_2022	\N
Clint Brinner	7	That's what I call a great choice!	2015	Cinderella	https://cars_n_movies.com/movie_reviews/clint_brinner/cinderella_2015	\N
Clint Brinner	8	A good movie even for a Documentary	2022	The Loyola Project	https://cars_n_movies.com/movie_reviews/clint_brinner/the_loyola_project_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	You Me & the Christmas Trees	https://cars_n_movies.com/movie_reviews/clint_brinner/you_me_&_the_christmas_trees_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	The Irish Connection	https://cars_n_movies.com/movie_reviews/clint_brinner/the_irish_connection_2022	\N
Clint Brinner	6	That's what I call a great choice!	2008	Mamma Mia!	https://cars_n_movies.com/movie_reviews/clint_brinner/mamma_mia!_2008	\N
Clint Brinner	6	That's what I call a great choice!	2022	Planning on Forever	https://cars_n_movies.com/movie_reviews/clint_brinner/planning_on_forever_2022	\N
Clint Brinner	6	Awesome movie! It scared the hell out of me	2022	Resurrection	https://cars_n_movies.com/movie_reviews/clint_brinner/resurrection_2022	\N
Clint Brinner	5	A good movie even for a Documentary	2021	Strip Down Rise Up	https://cars_n_movies.com/movie_reviews/clint_brinner/strip_down_rise_up_2021	\N
Clint Brinner	7	I didn't understand the dialogues cause i don't speak spanish	2021	The Good Boss	https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_boss_2021	\N
Clint Brinner	5	That's what I call a great choice!	2022	Frank and Penelope	https://cars_n_movies.com/movie_reviews/clint_brinner/frank_and_penelope_2022	\N
Clint Brinner	5	That's what I call a great choice!	2021	Pick A Side	https://cars_n_movies.com/movie_reviews/clint_brinner/pick_a_side_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	You Had Me at Aloha	https://cars_n_movies.com/movie_reviews/clint_brinner/you_had_me_at_aloha_2021	\N
Clint Brinner	5	Not bad but definitely overrated	2021	Things Don't Stay Fixed	https://cars_n_movies.com/movie_reviews/clint_brinner/things_don't_stay_fixed_2021	\N
Clint Brinner	7	That's what I call a great choice!	2022	Fire Island	https://cars_n_movies.com/movie_reviews/clint_brinner/fire_island_2022	\N
Clint Brinner	7	A good movie to watch with your couple	2021	Taking a Shot at Love	https://cars_n_movies.com/movie_reviews/clint_brinner/taking_a_shot_at_love_2021	\N
Clint Brinner	5	Not bad but definitely overrated	2021	The Score	https://cars_n_movies.com/movie_reviews/clint_brinner/the_score_2021	\N
Clint Brinner	5	That's what I call a great choice!	2021	This Little Love of Mine	https://cars_n_movies.com/movie_reviews/clint_brinner/this_little_love_of_mine_2021	\N
Clint Brinner	7	A good movie even for a Documentary	2022	The Only	https://cars_n_movies.com/movie_reviews/clint_brinner/the_only_2022	\N
Clint Brinner	6	Awesome movie! It scared the hell out of me	2021	Wired Shut	https://cars_n_movies.com/movie_reviews/clint_brinner/wired_shut_2021	\N
Clint Brinner	7	Too long! i got asleep	2022	Purple Hearts	https://cars_n_movies.com/movie_reviews/clint_brinner/purple_hearts_2022	\N
Clint Brinner	7	A good movie even for a Documentary	2022	GoldenEra	https://cars_n_movies.com/movie_reviews/clint_brinner/goldenera_2022	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2021	Tollbooth	https://cars_n_movies.com/movie_reviews/clint_brinner/tollbooth_2021	\N
Clint Brinner	7	That's what I call a great choice!	2021	Pig	https://cars_n_movies.com/movie_reviews/clint_brinner/pig_2021	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2021	Palmer	https://cars_n_movies.com/movie_reviews/clint_brinner/palmer_2021	\N
Clint Brinner	7	A good choice to spent the Sunday evening	2021	Shang-Chi and the Legend of the Ten Rings	https://cars_n_movies.com/movie_reviews/clint_brinner/shang-chi_and_the_legend_of_the_ten_rings_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	Funny Pages	https://cars_n_movies.com/movie_reviews/clint_brinner/funny_pages_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	Torn from Her Arms	https://cars_n_movies.com/movie_reviews/clint_brinner/torn_from_her_arms_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	All the Old Knives	https://cars_n_movies.com/movie_reviews/clint_brinner/all_the_old_knives_2022	\N
Clint Brinner	6	A good Documentary	2021	Shock Docs Amityville Horror House	https://cars_n_movies.com/movie_reviews/clint_brinner/shock_docs_amityville_horror_house_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	Donkeyhead	https://cars_n_movies.com/movie_reviews/clint_brinner/donkeyhead_2022	\N
Clint Brinner	7	That's what I call a great choice!	1988	Working Girl	https://cars_n_movies.com/movie_reviews/clint_brinner/working_girl_1988	\N
Clint Brinner	6	That's what I call a great choice!	2022	Father of the Bride	https://cars_n_movies.com/movie_reviews/clint_brinner/father_of_the_bride_2022	\N
Clint Brinner	8	it is a bit far fetched but a good movie overall	1992	Glengarry Glen Ross	https://cars_n_movies.com/movie_reviews/clint_brinner/glengarry_glen_ross_1992	\N
Clint Brinner	6	A good movie even for a Documentary	2022	Terry Bradshaw: Going Deep	https://cars_n_movies.com/movie_reviews/clint_brinner/terry_bradshaw:_going_deep_2022	\N
Clint Brinner	7	A good Documentary	2021	Untold: Crimes and Penalties	https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_crimes_and_penalties_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	A Splash of Love	https://cars_n_movies.com/movie_reviews/clint_brinner/a_splash_of_love_2022	\N
Clint Brinner	5	it is a bit far fetched but a good movie overall	2022	Clowning	https://cars_n_movies.com/movie_reviews/clint_brinner/clowning_2022	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2021	The Santa Stakeout	https://cars_n_movies.com/movie_reviews/clint_brinner/the_santa_stakeout_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	Groundswell	https://cars_n_movies.com/movie_reviews/clint_brinner/groundswell_2022	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2021	Scarborough	https://cars_n_movies.com/movie_reviews/clint_brinner/scarborough_2021	\N
Clint Brinner	7	That's what I call a great choice!	2021	The Justice of Bunny King	https://cars_n_movies.com/movie_reviews/clint_brinner/the_justice_of_bunny_king_2021	\N
Clint Brinner	5	I didn't understand the dialogues cause i don't speak spanish	2021	Veneciafrenia	https://cars_n_movies.com/movie_reviews/clint_brinner/veneciafrenia_2021	\N
Clint Brinner	8	A good Documentary	2022	Hello Bookstore	https://cars_n_movies.com/movie_reviews/clint_brinner/hello_bookstore_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	Love You Anyway	https://cars_n_movies.com/movie_reviews/clint_brinner/love_you_anyway_2022	\N
Clint Brinner	5	Not bad but definitely overrated	2022	Curse of the Macbeths	https://cars_n_movies.com/movie_reviews/clint_brinner/curse_of_the_macbeths_2022	\N
Clint Brinner	5	That's what I call a great choice!	2021	See You Next Christmas	https://cars_n_movies.com/movie_reviews/clint_brinner/see_you_next_christmas_2021	\N
Clint Brinner	7	A good movie to watch with your couple	2013	Blue Jasmine	https://cars_n_movies.com/movie_reviews/clint_brinner/blue_jasmine_2013	\N
Clint Brinner	6	A good movie even for a Documentary	2021	Reopening Night	https://cars_n_movies.com/movie_reviews/clint_brinner/reopening_night_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	Spirit Untamed	https://cars_n_movies.com/movie_reviews/clint_brinner/spirit_untamed_2021	\N
Clint Brinner	7	A good Documentary	2021	River	https://cars_n_movies.com/movie_reviews/clint_brinner/river_2021	\N
Clint Brinner	7	A good movie even for a Documentary	2022	Elizabeth: The Unseen Queen	https://cars_n_movies.com/movie_reviews/clint_brinner/elizabeth:_the_unseen_queen_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	The Hyperions	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hyperions_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	Toying with the Holidays	https://cars_n_movies.com/movie_reviews/clint_brinner/toying_with_the_holidays_2021	\N
Clint Brinner	5	That's what I call a great choice!	2022	Love & Gelato	https://cars_n_movies.com/movie_reviews/clint_brinner/love_&_gelato_2022	\N
Clint Brinner	5	That's what I call a great choice!	2021	Road to Perth	https://cars_n_movies.com/movie_reviews/clint_brinner/road_to_perth_2021	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2022	Home2Home	https://cars_n_movies.com/movie_reviews/clint_brinner/home2home_2022	\N
Clint Brinner	7	A good movie even for a Documentary	2021	Procession	https://cars_n_movies.com/movie_reviews/clint_brinner/procession_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	South Beach Love	https://cars_n_movies.com/movie_reviews/clint_brinner/south_beach_love_2021	\N
Clint Brinner	8	Yeahh! This movie is definitely a must see	2012	The Hobbit: An Unexpected Journey	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hobbit:_an_unexpected_journey_2012	\N
Clint Brinner	5	Not bad but definitely overrated	2022	County Line: All In	https://cars_n_movies.com/movie_reviews/clint_brinner/county_line:_all_in_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	Shattered	https://cars_n_movies.com/movie_reviews/clint_brinner/shattered_2022	\N
Clint Brinner	6	A good movie even for a Documentary	2021	The Slow Hustle	https://cars_n_movies.com/movie_reviews/clint_brinner/the_slow_hustle_2021	\N
Clint Brinner	7	That's what I call a great choice!	2022	Just One Kiss	https://cars_n_movies.com/movie_reviews/clint_brinner/just_one_kiss_2022	\N
Clint Brinner	6	Not really a Scary movie	2022	The Sixth Secret	https://cars_n_movies.com/movie_reviews/clint_brinner/the_sixth_secret_2022	\N
Clint Brinner	8	A good movie to watch with your couple	2018	A Star Is Born	https://cars_n_movies.com/movie_reviews/clint_brinner/a_star_is_born_2018	\N
Clint Brinner	6	That's what I call a great choice!	2021	To Catch a Spy	https://cars_n_movies.com/movie_reviews/clint_brinner/to_catch_a_spy_2021	\N
Clint Brinner	5	Not bad but definitely overrated	2021	Red Snow	https://cars_n_movies.com/movie_reviews/clint_brinner/red_snow_2021	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2021	Red Rocket	https://cars_n_movies.com/movie_reviews/clint_brinner/red_rocket_2021	\N
Clint Brinner	6	Awesome movie! It scared the hell out of me	2021	Wrong Turn	https://cars_n_movies.com/movie_reviews/clint_brinner/wrong_turn_2021	\N
Clint Brinner	5	That's what I call a great choice!	2022	Z-O-M-B-I-E-S 3	https://cars_n_movies.com/movie_reviews/clint_brinner/z-o-m-b-i-e-s_3_2022	\N
Clint Brinner	8	A good movie even for a Documentary	2021	Robbo: The Bryan Robson Story	https://cars_n_movies.com/movie_reviews/clint_brinner/robbo:_the_bryan_robson_story_2021	\N
Clint Brinner	7	I didn't understand the dialogues cause i don't speak spanish	2022	11M: Terror in Madrid	https://cars_n_movies.com/movie_reviews/clint_brinner/11m:_terror_in_madrid_2022	\N
Clint Brinner	8	A good Documentary	2022	Bill Burr: Live at Red Rocks	https://cars_n_movies.com/movie_reviews/clint_brinner/bill_burr:_live_at_red_rocks_2022	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2016	Our Kind of Traitor	https://cars_n_movies.com/movie_reviews/clint_brinner/our_kind_of_traitor_2016	\N
Clint Brinner	6	That's what I call a great choice!	2021	Phil Wang: Philly Philly Wang Wang	https://cars_n_movies.com/movie_reviews/clint_brinner/phil_wang:_philly_philly_wang_wang_2021	\N
Clint Brinner	7	Too long! i got asleep	2021	The Lost Daughter	https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_daughter_2021	\N
Clint Brinner	5	That's what I call a great choice!	2022	Lotawana	https://cars_n_movies.com/movie_reviews/clint_brinner/lotawana_2022	\N
Clint Brinner	7	Too long! i got asleep	2006	The Good Shepherd	https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_shepherd_2006	\N
Clint Brinner	5	Not bad but definitely overrated	2022	Road Trip Romance	https://cars_n_movies.com/movie_reviews/clint_brinner/road_trip_romance_2022	\N
Clint Brinner	6	Too long! i got asleep	2005	Elizabethtown	https://cars_n_movies.com/movie_reviews/clint_brinner/elizabethtown_2005	\N
Clint Brinner	7	A good choice to spent the Sunday evening	2022	Apollo 10½: A Space Age Childhood	https://cars_n_movies.com/movie_reviews/clint_brinner/apollo_10½:_a_space_age_childhood_2022	\N
Clint Brinner	7	A good Documentary	2021	To Which We Belong	https://cars_n_movies.com/movie_reviews/clint_brinner/to_which_we_belong_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	I Do (But I Don't)	https://cars_n_movies.com/movie_reviews/clint_brinner/i_do_(but_i_don't)_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	The Ghost and the Tout Too	https://cars_n_movies.com/movie_reviews/clint_brinner/the_ghost_and_the_tout_too_2021	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2021	Queenpins	https://cars_n_movies.com/movie_reviews/clint_brinner/queenpins_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	Sold Out	https://cars_n_movies.com/movie_reviews/clint_brinner/sold_out_2021	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2021	The Bezonians	https://cars_n_movies.com/movie_reviews/clint_brinner/the_bezonians_2021	\N
Clint Brinner	7	Yeahh! This movie is definitely a must see	2022	Chip 'n Dale: Rescue Rangers	https://cars_n_movies.com/movie_reviews/clint_brinner/chip_'n_dale:_rescue_rangers_2022	\N
Clint Brinner	4	Not bad but definitely overrated	2019	Drunk Parents	https://cars_n_movies.com/movie_reviews/clint_brinner/drunk_parents_2019	\N
Clint Brinner	6	That's what I call a great choice!	2021	The Middle Man	https://cars_n_movies.com/movie_reviews/clint_brinner/the_middle_man_2021	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	1993	Loaded Weapon 1	https://cars_n_movies.com/movie_reviews/clint_brinner/loaded_weapon_1_1993	\N
Clint Brinner	6	it is a bit far fetched but a good movie overall	2022	Catwoman: Hunted	https://cars_n_movies.com/movie_reviews/clint_brinner/catwoman:_hunted_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	Royal Blossom	https://cars_n_movies.com/movie_reviews/clint_brinner/royal_blossom_2021	\N
Clint Brinner	7	A good Documentary	2022	Taylor Tomlinson: Look at You	https://cars_n_movies.com/movie_reviews/clint_brinner/taylor_tomlinson:_look_at_you_2022	\N
Clint Brinner	6	That's what I call a great choice!	2000	Timecode	https://cars_n_movies.com/movie_reviews/clint_brinner/timecode_2000	\N
Clint Brinner	7	A good movie to watch with your couple	2021	West Side Story	https://cars_n_movies.com/movie_reviews/clint_brinner/west_side_story_2021	\N
Clint Brinner	7	That's what I call a great choice!	2015	Mr. Holmes	https://cars_n_movies.com/movie_reviews/clint_brinner/mr._holmes_2015	\N
Clint Brinner	5	That's what I call a great choice!	2022	Gold	https://cars_n_movies.com/movie_reviews/clint_brinner/gold_2022	\N
Clint Brinner	8	A good movie even for a Documentary	2022	The Sound of Scars	https://cars_n_movies.com/movie_reviews/clint_brinner/the_sound_of_scars_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse	https://cars_n_movies.com/movie_reviews/clint_brinner/teen_titans_go!_&_dc_super_hero_girls:_mayhem_in_the_multiverse_2022	\N
Clint Brinner	6	That's what I call a great choice!	2021	Sweet Girl	https://cars_n_movies.com/movie_reviews/clint_brinner/sweet_girl_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	Wedding Cake Dreams	https://cars_n_movies.com/movie_reviews/clint_brinner/wedding_cake_dreams_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	The Cabin	https://cars_n_movies.com/movie_reviews/clint_brinner/the_cabin_2021	\N
Clint Brinner	6	A good movie even for a Documentary	2022	Holy Heist	https://cars_n_movies.com/movie_reviews/clint_brinner/holy_heist_2022	\N
Clint Brinner	5	That's what I call a great choice!	2022	Anything's Possible	https://cars_n_movies.com/movie_reviews/clint_brinner/anything's_possible_2022	\N
Clint Brinner	6	A good movie even for a Documentary	2022	No Woman No Try	https://cars_n_movies.com/movie_reviews/clint_brinner/no_woman_no_try_2022	\N
Clint Brinner	6	That's what I call a great choice!	2022	The Hall: Honoring the Greats of Stand-Up	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hall:_honoring_the_greats_of_stand-up_2022	\N
Clint Brinner	6	A good movie even for a Documentary	2021	Sonsational	https://cars_n_movies.com/movie_reviews/clint_brinner/sonsational_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	Christmas in Toyland	https://cars_n_movies.com/movie_reviews/clint_brinner/christmas_in_toyland_2022	\N
Clint Brinner	6	A good movie even for a Documentary	2021	Untold: Caitlyn Jenner	https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_caitlyn_jenner_2021	\N
Clint Brinner	7	A good movie even for a Documentary	2022	Cristela Alonzo: Middle Classy	https://cars_n_movies.com/movie_reviews/clint_brinner/cristela_alonzo:_middle_classy_2022	\N
Clint Brinner	5	Not really a Scary movie	2021	The Addams Family 2	https://cars_n_movies.com/movie_reviews/clint_brinner/the_addams_family_2_2021	\N
Clint Brinner	6	That's what I call a great choice!	2021	Saints & Sinners Judgment Day	https://cars_n_movies.com/movie_reviews/clint_brinner/saints_&_sinners_judgment_day_2021	\N
Clint Brinner	8	A good movie even for a Documentary	2022	Deep in the Heart: A Texas Wildlife Story	https://cars_n_movies.com/movie_reviews/clint_brinner/deep_in_the_heart:_a_texas_wildlife_story_2022	\N
Clint Brinner	6	Not really a Scary movie	2021	Silent Night	https://cars_n_movies.com/movie_reviews/clint_brinner/silent_night_2021	\N
Clint Brinner	5	That's what I call a great choice!	2021	Trust	https://cars_n_movies.com/movie_reviews/clint_brinner/trust_2021	\N
Clint Brinner	7	I didn't understand the dialogues cause i don't speak spanish	2021	The Laws of the Border	https://cars_n_movies.com/movie_reviews/clint_brinner/the_laws_of_the_border_2021	\N
Clint Brinner	7	A good movie even for a Documentary	2021	The Story of Film: A New Generation	https://cars_n_movies.com/movie_reviews/clint_brinner/the_story_of_film:_a_new_generation_2021	\N
Clint Brinner	7	A good movie to watch with your couple	1999	Notting Hill	https://cars_n_movies.com/movie_reviews/clint_brinner/notting_hill_1999	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2022	Ray Donovan: The Movie	https://blockbusted.org/jim/jim_mc-cauling/ray_donovan:_the_movie_2022	\N
Clint Brinner	8	A good choice to spent the Saturday evening	2022	The 49th Annual Daytime Emmy Awards	https://cars_n_movies.com/movie_reviews/clint_brinner/the_49th_annual_daytime_emmy_awards_2022	\N
Clint Brinner	7	A good Documentary	2021	The Way of Miracles	https://cars_n_movies.com/movie_reviews/clint_brinner/the_way_of_miracles_2021	\N
Clint Brinner	6	A good movie even for a Documentary	2021	One of Ours	https://cars_n_movies.com/movie_reviews/clint_brinner/one_of_ours_2021	\N
Clint Brinner	6	That's what I call a great choice!	2022	As They Made Us	https://cars_n_movies.com/movie_reviews/clint_brinner/as_they_made_us_2022	\N
Clint Brinner	5	Awesome movie! It scared the hell out of me	2021	The Girl Who Got Away	https://cars_n_movies.com/movie_reviews/clint_brinner/the_girl_who_got_away_2021	\N
Clint Brinner	6	A good movie even for a Documentary	2021	Our Towns	https://cars_n_movies.com/movie_reviews/clint_brinner/our_towns_2021	\N
Clint Brinner	5	That's what I call a great choice!	2022	Swap Me Baby	https://cars_n_movies.com/movie_reviews/clint_brinner/swap_me_baby_2022	\N
Clint Brinner	6	Awesome movie! It scared the hell out of me	2021	Superhost	https://cars_n_movies.com/movie_reviews/clint_brinner/superhost_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Operation Varsity Blues	https://blockbusted.org/jim/jim_mc-cauling/operation_varsity_blues_2021	\N
Jim Mc-Cauling	7	it is a bit far fetched but a good movie overall	1997	Insomnia	https://blockbusted.org/jim/jim_mc-cauling/insomnia_1997	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Honor Society	https://blockbusted.org/jim/jim_mc-cauling/honor_society_2022	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	Seaspiracy	https://blockbusted.org/jim/jim_mc-cauling/seaspiracy_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Land of Owls	https://blockbusted.org/jim/jim_mc-cauling/the_land_of_owls_2021	\N
Jim Mc-Cauling	6	Not really a Scary movie	2021	The Beta Test	https://blockbusted.org/jim/jim_mc-cauling/the_beta_test_2021	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2022	Shut In	https://blockbusted.org/jim/jim_mc-cauling/shut_in_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	The United Way	https://blockbusted.org/jim/jim_mc-cauling/the_united_way_2021	\N
Jim Mc-Cauling	7	it is a bit far fetched but a good movie overall	2022	Dying for Chocolate: A Curious Caterer Mystery	https://blockbusted.org/jim/jim_mc-cauling/dying_for_chocolate:_a_curious_caterer_mystery_2022	\N
Jim Mc-Cauling	7	Too long! i got asleep	2021	Stillwater	https://blockbusted.org/jim/jim_mc-cauling/stillwater_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	When Today Ends	https://blockbusted.org/jim/jim_mc-cauling/when_today_ends_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	The First Wave	https://blockbusted.org/jim/jim_mc-cauling/the_first_wave_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Tyler Perry's A Madea Homecoming	https://blockbusted.org/jim/jim_mc-cauling/tyler_perry's_a_madea_homecoming_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Ice Road	https://blockbusted.org/jim/jim_mc-cauling/the_ice_road_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Tankhouse	https://blockbusted.org/jim/jim_mc-cauling/tankhouse_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Chickenhare and the Hamster of Darkness	https://blockbusted.org/jim/jim_mc-cauling/chickenhare_and_the_hamster_of_darkness_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2022	Dinosaurs - The Final Day with David Attenborough	https://blockbusted.org/jim/jim_mc-cauling/dinosaurs_-_the_final_day_with_david_attenborough_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	The Highwayman	https://blockbusted.org/jim/jim_mc-cauling/the_highwayman_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	1993	The Three Musketeers	https://blockbusted.org/jim/jim_mc-cauling/the_three_musketeers_1993	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2001	Cats & Dogs	https://blockbusted.org/jim/jim_mc-cauling/cats_&_dogs_2001	\N
Jim Mc-Cauling	7	it is a bit far fetched but a good movie overall	2014	In Order of Disappearance	https://blockbusted.org/jim/jim_mc-cauling/in_order_of_disappearance_2014	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Our Christmas Journey	https://blockbusted.org/jim/jim_mc-cauling/our_christmas_journey_2021	\N
Jim Mc-Cauling	4	Not bad but definitely overrated	2000	Thomas and the Magic Railroad	https://blockbusted.org/jim/jim_mc-cauling/thomas_and_the_magic_railroad_2000	\N
Jim Mc-Cauling	7	it is a bit far fetched but a good movie overall	1992	Home Alone 2: Lost in New York	https://blockbusted.org/jim/jim_mc-cauling/home_alone_2:_lost_in_new_york_1992	\N
Jim Mc-Cauling	6	That's what I call a great choice!	1983	The Ploughman's Lunch	https://blockbusted.org/jim/jim_mc-cauling/the_ploughman's_lunch_1983	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	The Christmas Promise	https://blockbusted.org/jim/jim_mc-cauling/the_christmas_promise_2021	\N
Jim Mc-Cauling	4	Not bad but definitely overrated	2002	The Adventures of Pluto Nash	https://blockbusted.org/jim/jim_mc-cauling/the_adventures_of_pluto_nash_2002	\N
Jim Mc-Cauling	6	Too long! i got asleep	2016	The Promise	https://blockbusted.org/jim/jim_mc-cauling/the_promise_2016	\N
Jim Mc-Cauling	8	it is a bit far fetched but a good movie overall	2011	The Girl with the Dragon Tattoo	https://blockbusted.org/jim/jim_mc-cauling/the_girl_with_the_dragon_tattoo_2011	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2011	Hick	https://blockbusted.org/jim/jim_mc-cauling/hick_2011	\N
Jim Mc-Cauling	8	Yeahh! This movie is definitely a must see	2013	The Hobbit: The Desolation of Smaug	https://blockbusted.org/jim/jim_mc-cauling/the_hobbit:_the_desolation_of_smaug_2013	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2020	Beast Beast	https://blockbusted.org/jim/jim_mc-cauling/beast_beast_2020	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2000	State and Main	https://blockbusted.org/jim/jim_mc-cauling/state_and_main_2000	\N
Jim Mc-Cauling	7	A good choice to spent the Sunday evening	2006	X-Men: The Last Stand	https://blockbusted.org/jim/jim_mc-cauling/x-men:_the_last_stand_2006	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2021	The Toolbox Killer	https://blockbusted.org/jim/jim_mc-cauling/the_toolbox_killer_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Not Okay	https://blockbusted.org/jim/jim_mc-cauling/not_okay_2022	\N
Jim Mc-Cauling	5	Awesome movie! It scared the hell out of me	2021	Resident Evil: Welcome to Raccoon City	https://blockbusted.org/jim/jim_mc-cauling/resident_evil:_welcome_to_raccoon_city_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Romance to the Rescue	https://blockbusted.org/jim/jim_mc-cauling/romance_to_the_rescue_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	Shoplifters of the World	https://blockbusted.org/jim/jim_mc-cauling/shoplifters_of_the_world_2021	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2022	A Violent Man	https://blockbusted.org/jim/jim_mc-cauling/a_violent_man_2022	\N
Jim Mc-Cauling	7	Too long! i got asleep	2006	The Da Vinci Code	https://blockbusted.org/jim/jim_mc-cauling/the_da_vinci_code_2006	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2022	Diamond Hands: The Legend of WallStreetBets	https://blockbusted.org/jim/jim_mc-cauling/diamond_hands:_the_legend_of_wallstreetbets_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2022	Jurassic World Dominion	https://blockbusted.org/jim/jim_mc-cauling/jurassic_world_dominion_2022	\N
Jim Mc-Cauling	8	A good Documentary	2022	Tosh	https://blockbusted.org/jim/jim_mc-cauling/tosh_2022	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2022	Harry Potter 20th Anniversary: Return to Hogwarts	https://blockbusted.org/jim/jim_mc-cauling/harry_potter_20th_anniversary:_return_to_hogwarts_2022	\N
Jim Mc-Cauling	6	it is a bit far fetched but a good movie overall	2006	Mini's First Time	https://blockbusted.org/jim/jim_mc-cauling/mini's_first_time_2006	\N
Jim Mc-Cauling	5	I didn't understand the dialogues cause i don't speak spanish	2021	The House of Snails	https://blockbusted.org/jim/jim_mc-cauling/the_house_of_snails_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Emergency	https://blockbusted.org/jim/jim_mc-cauling/emergency_2022	\N
Jim Mc-Cauling	7	A good Documentary	2022	Inside the Mind of a Cat	https://blockbusted.org/jim/jim_mc-cauling/inside_the_mind_of_a_cat_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2021	The Wonderful: Stories from the Space Station	https://blockbusted.org/jim/jim_mc-cauling/the_wonderful:_stories_from_the_space_station_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	Spring	https://blockbusted.org/jim/jim_mc-cauling/spring_2021	\N
Jim Mc-Cauling	6	I didn't understand the dialogues cause i don't speak spanish	2021	You Keep the Kids	https://blockbusted.org/jim/jim_mc-cauling/you_keep_the_kids_2021	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2022	Orphan: First Kill	https://blockbusted.org/jim/jim_mc-cauling/orphan:_first_kill_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2022	Girl in the Picture	https://blockbusted.org/jim/jim_mc-cauling/girl_in_the_picture_2022	\N
Jim Mc-Cauling	6	A good Documentary	2022	Jeff Foxworthy: The Good Old Days	https://blockbusted.org/jim/jim_mc-cauling/jeff_foxworthy:_the_good_old_days_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	iGilbert	https://blockbusted.org/jim/jim_mc-cauling/igilbert_2021	\N
Jim Mc-Cauling	8	I didn't understand the dialogues cause i don't speak spanish	2021	The Jump	https://blockbusted.org/jim/jim_mc-cauling/the_jump_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Spin	https://blockbusted.org/jim/jim_mc-cauling/spin_2021	\N
Jim Mc-Cauling	8	A good Documentary	2022	American Experience Plague at the Golden Gate	https://blockbusted.org/jim/jim_mc-cauling/american_experience_plague_at_the_golden_gate_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2021	Salt-N-Pepa	https://blockbusted.org/jim/jim_mc-cauling/salt-n-pepa_2021	\N
Jim Mc-Cauling	8	Yeahh! This movie is definitely a must see	2021	tick tick... BOOM!	https://blockbusted.org/jim/jim_mc-cauling/tick_tick..._boom!_2021	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2021	Why Did You Kill Me?	https://blockbusted.org/jim/jim_mc-cauling/why_did_you_kill_me?_2021	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	Raunch and Roll	https://blockbusted.org/jim/jim_mc-cauling/raunch_and_roll_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2022	Jackass Forever	https://blockbusted.org/jim/jim_mc-cauling/jackass_forever_2022	\N
Jim Mc-Cauling	7	Yeahh! This movie is definitely a must see	2022	Paul Virzi: Nocturnal Admissions	https://blockbusted.org/jim/jim_mc-cauling/paul_virzi:_nocturnal_admissions_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Loud House Movie	https://blockbusted.org/jim/jim_mc-cauling/the_loud_house_movie_2021	\N
Jim Mc-Cauling	7	A good Documentary	2022	Rooney	https://blockbusted.org/jim/jim_mc-cauling/rooney_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	A Genie's Tail	https://blockbusted.org/jim/jim_mc-cauling/a_genie's_tail_2022	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2021	The Conjuring: The Devil Made Me Do It	https://blockbusted.org/jim/jim_mc-cauling/the_conjuring:_the_devil_made_me_do_it_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	Reefa	https://blockbusted.org/jim/jim_mc-cauling/reefa_2021	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2022	Hello Goodbye and Everything in Between	https://blockbusted.org/jim/jim_mc-cauling/hello_goodbye_and_everything_in_between_2022	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	Rise and Shine Benedict Stone	https://blockbusted.org/jim/jim_mc-cauling/rise_and_shine_benedict_stone_2021	\N
Jim Mc-Cauling	8	A good choice to spent the Sunday evening	2021	Spider-Man: No Way Home	https://blockbusted.org/jim/jim_mc-cauling/spider-man:_no_way_home_2021	\N
Jim Mc-Cauling	7	A good Documentary	2021	The River Runner	https://blockbusted.org/jim/jim_mc-cauling/the_river_runner_2021	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2021	The Cursed	https://blockbusted.org/jim/jim_mc-cauling/the_cursed_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Hunting Souls	https://blockbusted.org/jim/jim_mc-cauling/hunting_souls_2022	\N
Jim Mc-Cauling	7	I didn't understand the dialogues cause i don't speak spanish	2022	The Photographer: Murder in Pinamar	https://blockbusted.org/jim/jim_mc-cauling/the_photographer:_murder_in_pinamar_2022	\N
Jim Mc-Cauling	5	I didn't understand the dialogues cause i don't speak spanish	2022	Centaur	https://blockbusted.org/jim/jim_mc-cauling/centaur_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Tinsel - The Lost Movie About Hollywood	https://blockbusted.org/jim/jim_mc-cauling/tinsel_-_the_lost_movie_about_hollywood_2021	\N
Jim Mc-Cauling	5	Awesome movie! It scared the hell out of me	2022	The Twin	https://blockbusted.org/jim/jim_mc-cauling/the_twin_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2022	North of the 10	https://blockbusted.org/jim/jim_mc-cauling/north_of_the_10_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	1992	Prelude to a Kiss	https://blockbusted.org/jim/jim_mc-cauling/prelude_to_a_kiss_1992	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Due Season	https://blockbusted.org/jim/jim_mc-cauling/due_season_2022	\N
Jim Mc-Cauling	6	I didn't understand the dialogues cause i don't speak spanish	2022	Toy Aficiao	https://blockbusted.org/jim/jim_mc-cauling/toy_aficiao_2022	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	Tina	https://blockbusted.org/jim/jim_mc-cauling/tina_2021	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	Samantha Rose	https://blockbusted.org/jim/jim_mc-cauling/samantha_rose_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Christmas Pitch	https://blockbusted.org/jim/jim_mc-cauling/the_christmas_pitch_2021	\N
Jim Mc-Cauling	6	it is a bit far fetched but a good movie overall	2021	Rattle-Can	https://blockbusted.org/jim/jim_mc-cauling/rattle-can_2021	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2021	Small City	https://blockbusted.org/jim/jim_mc-cauling/small_city_2021	\N
Jim Mc-Cauling	8	A good Documentary	2021	The Lost Leonardo	https://blockbusted.org/jim/jim_mc-cauling/the_lost_leonardo_2021	\N
Jim Mc-Cauling	6	it is a bit far fetched but a good movie overall	2021	Rise of the Footsoldier: Origins	https://blockbusted.org/jim/jim_mc-cauling/rise_of_the_footsoldier:_origins_2021	\N
Jim Mc-Cauling	8	A good choice to spent the Sunday evening	2022	Everything Everywhere All at Once	https://blockbusted.org/jim/jim_mc-cauling/everything_everywhere_all_at_once_2022	\N
Jim Mc-Cauling	6	I didn't understand the dialogues cause i don't speak spanish	2021	Xtreme	https://blockbusted.org/jim/jim_mc-cauling/xtreme_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Healing Garden	https://blockbusted.org/jim/jim_mc-cauling/the_healing_garden_2021	\N
Jim Mc-Cauling	5	I didn't understand the dialogues cause i don't speak spanish	2021	This Is Not a Comedy	https://blockbusted.org/jim/jim_mc-cauling/this_is_not_a_comedy_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Two for the Win	https://blockbusted.org/jim/jim_mc-cauling/two_for_the_win_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2022	Icahn: The Restless Billionaire	https://blockbusted.org/jim/jim_mc-cauling/icahn:_the_restless_billionaire_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Romeo Santos: King of Bachata	https://blockbusted.org/jim/jim_mc-cauling/romeo_santos:_king_of_bachata_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Cave Rescue	https://blockbusted.org/jim/jim_mc-cauling/cave_rescue_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	The Girl Who Believes in Miracles	https://blockbusted.org/jim/jim_mc-cauling/the_girl_who_believes_in_miracles_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Pride Jewel	https://blockbusted.org/jim/jim_mc-cauling/pride_jewel_2022	\N
Jim Mc-Cauling	6	A good Documentary	2022	Aftershock	https://blockbusted.org/jim/jim_mc-cauling/aftershock_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Marksman	https://blockbusted.org/jim/jim_mc-cauling/the_marksman_2021	\N
Jim Mc-Cauling	7	A good Documentary	2021	Set!	https://blockbusted.org/jim/jim_mc-cauling/set!_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Stars Fell on Alabama	https://blockbusted.org/jim/jim_mc-cauling/stars_fell_on_alabama_2021	\N
Jim Mc-Cauling	8	it is a bit far fetched but a good movie overall	2018	BlacKkKlansman	https://blockbusted.org/jim/jim_mc-cauling/blackkklansman_2018	\N
Jim Mc-Cauling	5	Awesome movie! It scared the hell out of me	2021	Wyrmwood: Apocalypse	https://blockbusted.org/jim/jim_mc-cauling/wyrmwood:_apocalypse_2021	\N
Jim Mc-Cauling	5	A good movie even for a Documentary	2021	The Price of Freedom	https://blockbusted.org/jim/jim_mc-cauling/the_price_of_freedom_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Shatner in Space	https://blockbusted.org/jim/jim_mc-cauling/shatner_in_space_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Legend of Molly Johnson	https://blockbusted.org/jim/jim_mc-cauling/the_legend_of_molly_johnson_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Two Cents from a Pariah	https://blockbusted.org/jim/jim_mc-cauling/two_cents_from_a_pariah_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Bill Maher: #Adulting	https://blockbusted.org/jim/jim_mc-cauling/bill_maher:_#adulting_2022	\N
Jim Mc-Cauling	5	Too long! i got asleep	2021	Things Heard & Seen	https://blockbusted.org/jim/jim_mc-cauling/things_heard_&_seen_2021	\N
Jim Mc-Cauling	6	it is a bit far fetched but a good movie overall	1996	The Juror	https://blockbusted.org/jim/jim_mc-cauling/the_juror_1996	\N
Jim Mc-Cauling	5	it is a bit far fetched but a good movie overall	2022	Burn	https://blockbusted.org/jim/jim_mc-cauling/burn_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Moriah's Lighthouse	https://blockbusted.org/jim/jim_mc-cauling/moriah's_lighthouse_2022	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2022	Stroke of Luck	https://blockbusted.org/jim/jim_mc-cauling/stroke_of_luck_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2022	Ambulance	https://blockbusted.org/jim/jim_mc-cauling/ambulance_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	The Good Neighbor	https://blockbusted.org/jim/jim_mc-cauling/the_good_neighbor_2022	\N
Jim Mc-Cauling	5	A good movie even for a Documentary	2021	The Man Who Fell from the Sky	https://blockbusted.org/jim/jim_mc-cauling/the_man_who_fell_from_the_sky_2021	\N
Jim Mc-Cauling	6	A good Documentary	2021	Searching for Cannibal Holocaust	https://blockbusted.org/jim/jim_mc-cauling/searching_for_cannibal_holocaust_2021	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	The Ultimate Playlist of Noise	https://blockbusted.org/jim/jim_mc-cauling/the_ultimate_playlist_of_noise_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Junkyard Dogs	https://blockbusted.org/jim/jim_mc-cauling/junkyard_dogs_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2022	The Mulligan	https://blockbusted.org/jim/jim_mc-cauling/the_mulligan_2022	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2022	I Want You Back	https://blockbusted.org/jim/jim_mc-cauling/i_want_you_back_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Venom: Let There Be Carnage	https://blockbusted.org/jim/jim_mc-cauling/venom:_let_there_be_carnage_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Hating Game	https://blockbusted.org/jim/jim_mc-cauling/the_hating_game_2021	\N
Jim Mc-Cauling	5	A good movie even for a Documentary	2022	Catherine Cohen: The Twist...? She's Gorgeous	https://blockbusted.org/jim/jim_mc-cauling/catherine_cohen:_the_twist...?_she's_gorgeous_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Truth to Power	https://blockbusted.org/jim/jim_mc-cauling/truth_to_power_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	The Demented	https://blockbusted.org/jim/jim_mc-cauling/the_demented_2021	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2021	The Power	https://blockbusted.org/jim/jim_mc-cauling/the_power_2021	\N
Jim Mc-Cauling	6	Awesome movie! It scared the hell out of me	2021	You Are Not My Mother	https://blockbusted.org/jim/jim_mc-cauling/you_are_not_my_mother_2021	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	The Rescue	https://blockbusted.org/jim/jim_mc-cauling/the_rescue_2021	\N
Jim Mc-Cauling	6	A good Documentary	2022	Running with the Devil: The Wild World of John McAfee	https://blockbusted.org/jim/jim_mc-cauling/running_with_the_devil:_the_wild_world_of_john_mcafee_2022	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2003	The Cooler	https://blockbusted.org/jim/jim_mc-cauling/the_cooler_2003	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	The Right One	https://blockbusted.org/jim/jim_mc-cauling/the_right_one_2021	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	The Automat	https://blockbusted.org/jim/jim_mc-cauling/the_automat_2021	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2021	Volcanic UFO Mysteries	https://blockbusted.org/jim/jim_mc-cauling/volcanic_ufo_mysteries_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Sex Appeal	https://blockbusted.org/jim/jim_mc-cauling/sex_appeal_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Yes Day	https://blockbusted.org/jim/jim_mc-cauling/yes_day_2021	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	The Last Mountain	https://blockbusted.org/jim/jim_mc-cauling/the_last_mountain_2021	\N
Jim Mc-Cauling	5	Awesome movie! It scared the hell out of me	2021	The Forever Purge	https://blockbusted.org/jim/jim_mc-cauling/the_forever_purge_2021	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2022	American Carnage	https://blockbusted.org/jim/jim_mc-cauling/american_carnage_2022	\N
Jim Mc-Cauling	7	Too long! i got asleep	2022	Redeeming Love	https://blockbusted.org/jim/jim_mc-cauling/redeeming_love_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	See You Then	https://blockbusted.org/jim/jim_mc-cauling/see_you_then_2021	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2021	The Nine Kittens of Christmas	https://blockbusted.org/jim/jim_mc-cauling/the_nine_kittens_of_christmas_2021	\N
Jim Mc-Cauling	7	it is a bit far fetched but a good movie overall	2022	The Bad Guys	https://blockbusted.org/jim/jim_mc-cauling/the_bad_guys_2022	\N
Jim Mc-Cauling	6	I didn't understand the dialogues cause i don't speak spanish	2022	Proyecto Emperador	https://blockbusted.org/jim/jim_mc-cauling/proyecto_emperador_2022	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2021	The Virtuoso	https://blockbusted.org/jim/jim_mc-cauling/the_virtuoso_2021	\N
Jim Mc-Cauling	5	A good movie even for a Documentary	2021	The Race to Save the World	https://blockbusted.org/jim/jim_mc-cauling/the_race_to_save_the_world_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Putting Love to the Test	https://blockbusted.org/jim/jim_mc-cauling/putting_love_to_the_test_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Novice	https://blockbusted.org/jim/jim_mc-cauling/the_novice_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Resisting Roots	https://blockbusted.org/jim/jim_mc-cauling/resisting_roots_2022	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2022	Heart of the Matter	https://blockbusted.org/jim/jim_mc-cauling/heart_of_the_matter_2022	\N
Jim Mc-Cauling	7	A good Documentary	2021	Show Me the Father	https://blockbusted.org/jim/jim_mc-cauling/show_me_the_father_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Rogue Agent	https://blockbusted.org/jim/jim_mc-cauling/rogue_agent_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	The Vault	https://blockbusted.org/jim/jim_mc-cauling/the_vault_2021	\N
Jim Mc-Cauling	6	I didn't understand the dialogues cause i don't speak spanish	2022	Mother's Love	https://blockbusted.org/jim/jim_mc-cauling/mother's_love_2022	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	The Wisdom of Trauma	https://blockbusted.org/jim/jim_mc-cauling/the_wisdom_of_trauma_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	No Name and Dynamite Davenport	https://blockbusted.org/jim/jim_mc-cauling/no_name_and_dynamite_davenport_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	The In Between	https://blockbusted.org/jim/jim_mc-cauling/the_in_between_2022	\N
Jim Mc-Cauling	8	Yeahh! This movie is definitely a must see	2022	Step Into... The Movies	https://blockbusted.org/jim/jim_mc-cauling/step_into..._the_movies_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	1984	Dune	https://blockbusted.org/jim/jim_mc-cauling/dune_1984	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	Riverdance: The Animated Adventure	https://blockbusted.org/jim/jim_mc-cauling/riverdance:_the_animated_adventure_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2021	Wicked	https://blockbusted.org/jim/jim_mc-cauling/wicked_2021	\N
Jim Mc-Cauling	6	it is a bit far fetched but a good movie overall	2021	Ted K	https://blockbusted.org/jim/jim_mc-cauling/ted_k_2021	\N
Jim Mc-Cauling	7	A good Documentary	2021	The Kids	https://blockbusted.org/jim/jim_mc-cauling/the_kids_2021	\N
Jim Mc-Cauling	8	A good Documentary	2022	Facing Nolan	https://blockbusted.org/jim/jim_mc-cauling/facing_nolan_2022	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2022	Jane Fonda & Lily Tomlin: Ladies Night Live	https://blockbusted.org/jim/jim_mc-cauling/jane_fonda_&_lily_tomlin:_ladies_night_live_2022	\N
Jim Mc-Cauling	6	A good Documentary	2022	Elizabeth: A Portrait in Part(s)	https://blockbusted.org/jim/jim_mc-cauling/elizabeth:_a_portrait_in_part(s)_2022	\N
Jim Mc-Cauling	7	That's what I call a great choice!	1997	The Edge	https://blockbusted.org/jim/jim_mc-cauling/the_edge_1997	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	Storm Lake	https://blockbusted.org/jim/jim_mc-cauling/storm_lake_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	The Sky Is Everywhere	https://blockbusted.org/jim/jim_mc-cauling/the_sky_is_everywhere_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Pirates	https://blockbusted.org/jim/jim_mc-cauling/pirates_2021	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	The King's Daughter	https://blockbusted.org/jim/jim_mc-cauling/the_king's_daughter_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Mr. Malcolm's List	https://blockbusted.org/jim/jim_mc-cauling/mr._malcolm's_list_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Never Alone	https://blockbusted.org/jim/jim_mc-cauling/never_alone_2022	\N
Jim Mc-Cauling	5	Not bad but definitely overrated	2019	Arctic Dogs	https://blockbusted.org/jim/jim_mc-cauling/arctic_dogs_2019	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2022	Vengeance	https://blockbusted.org/jim/jim_mc-cauling/vengeance_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	That's Amor	https://blockbusted.org/jim/jim_mc-cauling/that's_amor_2022	\N
Jim Mc-Cauling	8	A good movie even for a Documentary	2021	Subjects of Desire	https://blockbusted.org/jim/jim_mc-cauling/subjects_of_desire_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	It Snows All the Time	https://blockbusted.org/jim/jim_mc-cauling/it_snows_all_the_time_2022	\N
Jim Mc-Cauling	5	Awesome movie! It scared the hell out of me	2021	The Unholy	https://blockbusted.org/jim/jim_mc-cauling/the_unholy_2021	\N
Jim Mc-Cauling	6	Too long! i got asleep	2021	The Tomorrow War	https://blockbusted.org/jim/jim_mc-cauling/the_tomorrow_war_2021	\N
Jim Mc-Cauling	9	A good Documentary	2021	Wash My Soul in the River's Flow	https://blockbusted.org/jim/jim_mc-cauling/wash_my_soul_in_the_river's_flow_2021	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2022	Gamestop: Rise of the Players	https://blockbusted.org/jim/jim_mc-cauling/gamestop:_rise_of_the_players_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Fireheart	https://blockbusted.org/jim/jim_mc-cauling/fireheart_2022	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	King Tweety	https://blockbusted.org/jim/jim_mc-cauling/king_tweety_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2022	Polar Bear	https://blockbusted.org/jim/jim_mc-cauling/polar_bear_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2022	Moonshot	https://blockbusted.org/jim/jim_mc-cauling/moonshot_2022	\N
Jim Mc-Cauling	7	A good movie even for a Documentary	2021	The Cleveland Kidnappings	https://blockbusted.org/jim/jim_mc-cauling/the_cleveland_kidnappings_2021	\N
Jim Mc-Cauling	7	That's what I call a great choice!	2022	Harmony in Paradise	https://blockbusted.org/jim/jim_mc-cauling/harmony_in_paradise_2022	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Scenes from an Empty Church	https://blockbusted.org/jim/jim_mc-cauling/scenes_from_an_empty_church_2021	\N
Jim Mc-Cauling	6	That's what I call a great choice!	2021	Seduction & Snacks	https://blockbusted.org/jim/jim_mc-cauling/seduction_&_snacks_2021	\N
Jim Mc-Cauling	7	Yeahh! This movie is definitely a must see	2021	The Tragedy of Macbeth	https://blockbusted.org/jim/jim_mc-cauling/the_tragedy_of_macbeth_2021	\N
Jim Mc-Cauling	4	Not bad but definitely overrated	1998	The Avengers	https://blockbusted.org/jim/jim_mc-cauling/the_avengers_1998	\N
Jim Mc-Cauling	5	That's what I call a great choice!	2022	Alone Together	https://blockbusted.org/jim/jim_mc-cauling/alone_together_2022	\N
Jim Mc-Cauling	6	A good movie even for a Documentary	2022	Jackass 4.5	https://blockbusted.org/jim/jim_mc-cauling/jackass_4.5_2022	\N
Jim Mc-Cauling	7	A good movie to watch with your couple	2021	Romeo & Juliet	https://blockbusted.org/jim/jim_mc-cauling/romeo_&_juliet_2021	\N
Jim Mc-Cauling	5	I didn't understand the dialogues cause i don't speak spanish	2022	El Rezador	https://blockbusted.org/jim/jim_mc-cauling/el_rezador_2022	\N
Jim Mc-Cauling	6	Too long! i got asleep	2022	Sonic the Hedgehog 2	https://blockbusted.org/jim/jim_mc-cauling/sonic_the_hedgehog_2_2022	\N
Melissa Stillton	8	A good Documentary	2022	Randy Rhoads: Reflections of a Guitar Icon	https://palomitas.es/reviews/melissa_stillton/randy_rhoads:_reflections_of_a_guitar_icon_2022	\N
Melissa Stillton	6	I didn't understand the dialogues cause i don't speak spanish	2022	The Wrath of God	https://palomitas.es/reviews/melissa_stillton/the_wrath_of_god_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Sister Swap: A Hometown Holiday	https://palomitas.es/reviews/melissa_stillton/sister_swap:_a_hometown_holiday_2021	\N
Melissa Stillton	5	Awesome movie! It scared the hell out of me	2021	The Secret of Sinchanee	https://palomitas.es/reviews/melissa_stillton/the_secret_of_sinchanee_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Twice Bitten	https://palomitas.es/reviews/melissa_stillton/twice_bitten_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Welcome to Mama's	https://palomitas.es/reviews/melissa_stillton/welcome_to_mama's_2022	\N
Melissa Stillton	5	Not bad but definitely overrated	2022	Her Private Hell	https://palomitas.es/reviews/melissa_stillton/her_private_hell_2022	\N
Melissa Stillton	7	That's what I call a great choice!	2022	River Road	https://palomitas.es/reviews/melissa_stillton/river_road_2022	\N
Melissa Stillton	5	I didn't understand the dialogues cause i don't speak spanish	2022	Ricardo Quevedo: Tomorrow Will Be Worse	https://palomitas.es/reviews/melissa_stillton/ricardo_quevedo:_tomorrow_will_be_worse_2022	\N
Melissa Stillton	8	Yeahh! This movie is definitely a must see	2022	South Park: The 25th Anniversary Concert	https://palomitas.es/reviews/melissa_stillton/south_park:_the_25th_anniversary_concert_2022	\N
Melissa Stillton	5	Not really a Scary movie	2001	Scary Movie 2	https://palomitas.es/reviews/melissa_stillton/scary_movie_2_2001	\N
Melissa Stillton	6	That's what I call a great choice!	2021	This Is Not a War Story	https://palomitas.es/reviews/melissa_stillton/this_is_not_a_war_story_2021	\N
Melissa Stillton	7	A good movie even for a Documentary	2022	Bear Witness	https://palomitas.es/reviews/melissa_stillton/bear_witness_2022	\N
Melissa Stillton	7	That's what I call a great choice!	2022	Jerry and Marge Go Large	https://palomitas.es/reviews/melissa_stillton/jerry_and_marge_go_large_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Warming up to you	https://palomitas.es/reviews/melissa_stillton/warming_up_to_you_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	Searchers	https://palomitas.es/reviews/melissa_stillton/searchers_2021	\N
Melissa Stillton	6	Not really a Scary movie	2021	Willy's Wonderland	https://palomitas.es/reviews/melissa_stillton/willy's_wonderland_2021	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2022	Good Luck to You Leo Grande	https://palomitas.es/reviews/melissa_stillton/good_luck_to_you_leo_grande_2022	\N
Melissa Stillton	6	it is a bit far fetched but a good movie overall	2021	Reno 911!: The Hunt for QAnon	https://palomitas.es/reviews/melissa_stillton/reno_911!:_the_hunt_for_qanon_2021	\N
Melissa Stillton	9	A good movie even for a Documentary	2022	What Is a Woman?	https://palomitas.es/reviews/melissa_stillton/what_is_a_woman?_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Super Turnt	https://palomitas.es/reviews/melissa_stillton/super_turnt_2022	\N
Melissa Stillton	7	A good Documentary	2021	The Most Beautiful Boy in the World	https://palomitas.es/reviews/melissa_stillton/the_most_beautiful_boy_in_the_world_2021	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2022	Turning Red	https://palomitas.es/reviews/melissa_stillton/turning_red_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2022	My Grown-Up Christmas List	https://palomitas.es/reviews/melissa_stillton/my_grown-up_christmas_list_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	The Wheel	https://palomitas.es/reviews/melissa_stillton/the_wheel_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	The Beatles and India	https://palomitas.es/reviews/melissa_stillton/the_beatles_and_india_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	The Wimbledon Kidnapping	https://palomitas.es/reviews/melissa_stillton/the_wimbledon_kidnapping_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Tom and Jerry: Cowboy Up!	https://palomitas.es/reviews/melissa_stillton/tom_and_jerry:_cowboy_up!_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2022	The 28th Annual Screen Actors Guild Awards	https://palomitas.es/reviews/melissa_stillton/the_28th_annual_screen_actors_guild_awards_2022	\N
Melissa Stillton	5	I didn't understand the dialogues cause i don't speak spanish	2022	Virus-32	https://palomitas.es/reviews/melissa_stillton/virus-32_2022	\N
Melissa Stillton	6	That's what I call a great choice!	1991	The Marrying Man	https://palomitas.es/reviews/melissa_stillton/the_marrying_man_1991	\N
Melissa Stillton	6	That's what I call a great choice!	2021	The Boss Baby: Family Business	https://palomitas.es/reviews/melissa_stillton/the_boss_baby:_family_business_2021	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2022	Rescued by Ruby	https://palomitas.es/reviews/melissa_stillton/rescued_by_ruby_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Together	https://palomitas.es/reviews/melissa_stillton/together_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Sundown	https://palomitas.es/reviews/melissa_stillton/sundown_2021	\N
Melissa Stillton	8	Yeahh! This movie is definitely a must see	2022	Elvis	https://palomitas.es/reviews/melissa_stillton/elvis_2022	\N
Melissa Stillton	6	it is a bit far fetched but a good movie overall	2021	The Card Counter	https://palomitas.es/reviews/melissa_stillton/the_card_counter_2021	\N
Melissa Stillton	6	I didn't understand the dialogues cause i don't speak spanish	2021	The House of Flowers: The Movie	https://palomitas.es/reviews/melissa_stillton/the_house_of_flowers:_the_movie_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Burden	https://palomitas.es/reviews/melissa_stillton/burden_2022	\N
Melissa Stillton	5	A good movie even for a Documentary	2022	Beyond Impossible	https://palomitas.es/reviews/melissa_stillton/beyond_impossible_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	The Enormity of Life	https://palomitas.es/reviews/melissa_stillton/the_enormity_of_life_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Love Under the Lemon Tree	https://palomitas.es/reviews/melissa_stillton/love_under_the_lemon_tree_2022	\N
Melissa Stillton	7	A good movie even for a Documentary	2022	Navalny	https://palomitas.es/reviews/melissa_stillton/navalny_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Lie Hard	https://palomitas.es/reviews/melissa_stillton/lie_hard_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Stop and Go	https://palomitas.es/reviews/melissa_stillton/stop_and_go_2021	\N
Melissa Stillton	4	Not bad but definitely overrated	2003	The Cat in the Hat	https://palomitas.es/reviews/melissa_stillton/the_cat_in_the_hat_2003	\N
Melissa Stillton	7	That's what I call a great choice!	1980	Times Square	https://palomitas.es/reviews/melissa_stillton/times_square_1980	\N
Melissa Stillton	6	That's what I call a great choice!	2021	To All the Boys: Always and Forever	https://palomitas.es/reviews/melissa_stillton/to_all_the_boys:_always_and_forever_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Sugar Plum Twist	https://palomitas.es/reviews/melissa_stillton/sugar_plum_twist_2021	\N
Melissa Stillton	6	Awesome movie! It scared the hell out of me	2021	South of Heaven	https://palomitas.es/reviews/melissa_stillton/south_of_heaven_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	The Loneliest Whale: The Search for 52	https://palomitas.es/reviews/melissa_stillton/the_loneliest_whale:_the_search_for_52_2021	\N
Melissa Stillton	7	I didn't understand the dialogues cause i don't speak spanish	2022	Bank Robbers: The Last Great Heist	https://palomitas.es/reviews/melissa_stillton/bank_robbers:_the_last_great_heist_2022	\N
Melissa Stillton	6	I didn't understand the dialogues cause i don't speak spanish	2021	The Replacement	https://palomitas.es/reviews/melissa_stillton/the_replacement_2021	\N
Melissa Stillton	6	I didn't understand the dialogues cause i don't speak swedish	1987	Jim & Piraterna Blom	https://palomitas.es/reviews/melissa_stillton/jim_&_piraterna_blom_1987	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2021	Zoey's Extraordinary Christmas	https://palomitas.es/reviews/melissa_stillton/zoey's_extraordinary_christmas_2021	\N
Melissa Stillton	8	A good movie even for a Documentary	2021	Untold: Malice at the Palace	https://palomitas.es/reviews/melissa_stillton/untold:_malice_at_the_palace_2021	\N
Melissa Stillton	5	Too long! i got asleep	2021	Snake Eyes	https://palomitas.es/reviews/melissa_stillton/snake_eyes_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2021	The Seance	https://palomitas.es/reviews/melissa_stillton/the_seance_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2022	A Cowgirl's Song	https://palomitas.es/reviews/melissa_stillton/a_cowgirl's_song_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2021	Walk With Me	https://palomitas.es/reviews/melissa_stillton/walk_with_me_2021	\N
Melissa Stillton	6	That's what I call a great choice!	1985	Legend	https://palomitas.es/reviews/melissa_stillton/legend_1985	\N
Melissa Stillton	6	Not really a Scary movie	2022	Day Shift	https://palomitas.es/reviews/melissa_stillton/day_shift_2022	\N
Melissa Stillton	7	That's what I call a great choice!	2021	Vivo	https://palomitas.es/reviews/melissa_stillton/vivo_2021	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2022	Adeline	https://palomitas.es/reviews/melissa_stillton/adeline_2022	\N
Melissa Stillton	6	A good Documentary	2022	Stay on Board: The Leo Baker Story	https://palomitas.es/reviews/melissa_stillton/stay_on_board:_the_leo_baker_story_2022	\N
Melissa Stillton	7	That's what I call a great choice!	2021	Oslo	https://palomitas.es/reviews/melissa_stillton/oslo_2021	\N
Melissa Stillton	7	Not really a Scary movie	2022	Fresh	https://palomitas.es/reviews/melissa_stillton/fresh_2022	\N
Melissa Stillton	5	Not bad but definitely overrated	2021	Shepherd	https://palomitas.es/reviews/melissa_stillton/shepherd_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2022	The Ledge	https://palomitas.es/reviews/melissa_stillton/the_ledge_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2021	Secrets in the Wilderness	https://palomitas.es/reviews/melissa_stillton/secrets_in_the_wilderness_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	Persona: The Dark Truth Behind Personality Tests	https://palomitas.es/reviews/melissa_stillton/persona:_the_dark_truth_behind_personality_tests_2021	\N
Melissa Stillton	5	Too long! i got asleep	2022	Wuthering Heights	https://palomitas.es/reviews/melissa_stillton/wuthering_heights_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Playing Cupid	https://palomitas.es/reviews/melissa_stillton/playing_cupid_2021	\N
Melissa Stillton	8	A good Documentary	2022	Biffy Clyro: Cultural Sons of Scotland	https://palomitas.es/reviews/melissa_stillton/biffy_clyro:_cultural_sons_of_scotland_2022	\N
Melissa Stillton	6	That's what I call a great choice!	1999	Deep Blue Sea	https://palomitas.es/reviews/melissa_stillton/deep_blue_sea_1999	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Pati Patni and Joe	https://palomitas.es/reviews/melissa_stillton/pati_patni_and_joe_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Sweetheart	https://palomitas.es/reviews/melissa_stillton/sweetheart_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Last Seen Alive	https://palomitas.es/reviews/melissa_stillton/last_seen_alive_2022	\N
Melissa Stillton	5	Not bad but definitely overrated	2021	Where the Land Meets the Sky	https://palomitas.es/reviews/melissa_stillton/where_the_land_meets_the_sky_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie	https://palomitas.es/reviews/melissa_stillton/rise_of_the_teenage_mutant_ninja_turtles:_the_movie_2022	\N
Melissa Stillton	8	A good choice to spent the Saturday evening	2022	Top Gun: Maverick	https://palomitas.es/reviews/melissa_stillton/top_gun:_maverick_2022	\N
Melissa Stillton	6	Too long! i got asleep	1985	Plenty	https://palomitas.es/reviews/melissa_stillton/plenty_1985	\N
Melissa Stillton	7	That's what I call a great choice!	1995	Restoration	https://palomitas.es/reviews/melissa_stillton/restoration_1995	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Exposure 36	https://palomitas.es/reviews/melissa_stillton/exposure_36_2022	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	Poly Styrene: I Am a Cliché	https://palomitas.es/reviews/melissa_stillton/poly_styrene:_i_am_a_cliché_2021	\N
Melissa Stillton	7	it is a bit far fetched but a good movie overall	2022	The Unbearable Weight of Massive Talent	https://palomitas.es/reviews/melissa_stillton/the_unbearable_weight_of_massive_talent_2022	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	The Gig Is Up	https://palomitas.es/reviews/melissa_stillton/the_gig_is_up_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Persuasion	https://palomitas.es/reviews/melissa_stillton/persuasion_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Infinite Storm	https://palomitas.es/reviews/melissa_stillton/infinite_storm_2022	\N
Melissa Stillton	8	A good Documentary	2022	Lancaster	https://palomitas.es/reviews/melissa_stillton/lancaster_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Brut Force	https://palomitas.es/reviews/melissa_stillton/brut_force_2022	\N
Melissa Stillton	6	Awesome movie! It scared the hell out of me	2021	Rushed	https://palomitas.es/reviews/melissa_stillton/rushed_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Potato Dreams of America	https://palomitas.es/reviews/melissa_stillton/potato_dreams_of_america_2021	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	Simple as Water	https://palomitas.es/reviews/melissa_stillton/simple_as_water_2021	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	Who is Bill Rebane?	https://palomitas.es/reviews/melissa_stillton/who_is_bill_rebane?_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Save the Cinema	https://palomitas.es/reviews/melissa_stillton/save_the_cinema_2022	\N
Melissa Stillton	7	Too long! i got asleep	2021	The Power of the Dog	https://palomitas.es/reviews/melissa_stillton/the_power_of_the_dog_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2021	The Humans	https://palomitas.es/reviews/melissa_stillton/the_humans_2021	\N
Melissa Stillton	5	I didn't understand the dialogues cause i don't speak spanish	2021	The Passenger	https://palomitas.es/reviews/melissa_stillton/the_passenger_2021	\N
Melissa Stillton	7	Too long! i got asleep	2013	The Wolverine	https://palomitas.es/reviews/melissa_stillton/the_wolverine_2013	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	The Murder of Gabby Petito: Truth Lies and Social Media	https://palomitas.es/reviews/melissa_stillton/the_murder_of_gabby_petito:_truth_lies_and_social_media_2021	\N
Melissa Stillton	6	Awesome movie! It scared the hell out of me	2022	Watcher	https://palomitas.es/reviews/melissa_stillton/watcher_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	Senior Moment	https://palomitas.es/reviews/melissa_stillton/senior_moment_2021	\N
Melissa Stillton	6	Too long! i got asleep	1981	Priest of Love	https://palomitas.es/reviews/melissa_stillton/priest_of_love_1981	\N
Melissa Stillton	8	A good movie even for a Documentary	2021	Roadrunner: A Film About Anthony Bourdain	https://palomitas.es/reviews/melissa_stillton/roadrunner:_a_film_about_anthony_bourdain_2021	\N
Melissa Stillton	5	Awesome movie! It scared the hell out of me	2022	American Werewolves	https://palomitas.es/reviews/melissa_stillton/american_werewolves_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2022	Love Accidentally	https://palomitas.es/reviews/melissa_stillton/love_accidentally_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Along for the Ride	https://palomitas.es/reviews/melissa_stillton/along_for_the_ride_2022	\N
Melissa Stillton	5	That's what I call a great choice!	2022	The Royal Treatment	https://palomitas.es/reviews/melissa_stillton/the_royal_treatment_2022	\N
Melissa Stillton	5	Not really a Scary movie	2021	The Horrific Evil Monsters	https://palomitas.es/reviews/melissa_stillton/the_horrific_evil_monsters_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2021	The Green Sea	https://palomitas.es/reviews/melissa_stillton/the_green_sea_2021	\N
Melissa Stillton	5	That's what I call a great choice!	2015	Aloha	https://palomitas.es/reviews/melissa_stillton/aloha_2015	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Joyride	https://palomitas.es/reviews/melissa_stillton/joyride_2022	\N
Melissa Stillton	7	it is a bit far fetched but a good movie overall	2021	Wrath of Man	https://palomitas.es/reviews/melissa_stillton/wrath_of_man_2021	\N
Melissa Stillton	7	it is a bit far fetched but a good movie overall	2022	Minions: The Rise of Gru	https://palomitas.es/reviews/melissa_stillton/minions:_the_rise_of_gru_2022	\N
Melissa Stillton	6	Too long! i got asleep	2018	The Man Who Killed Don Quixote	https://palomitas.es/reviews/melissa_stillton/the_man_who_killed_don_quixote_2018	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Hollywood Stargirl	https://palomitas.es/reviews/melissa_stillton/hollywood_stargirl_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2021	UnPerfect Christmas Wish	https://palomitas.es/reviews/melissa_stillton/unperfect_christmas_wish_2021	\N
Melissa Stillton	7	Yeahh! This movie is definitely a must see	2014	The Hobbit: The Battle of the Five Armies	https://palomitas.es/reviews/melissa_stillton/the_hobbit:_the_battle_of_the_five_armies_2014	\N
Melissa Stillton	7	That's what I call a great choice!	2021	Redeemed	https://palomitas.es/reviews/melissa_stillton/redeemed_2021	\N
Melissa Stillton	5	Not bad but definitely overrated	2021	Repeat	https://palomitas.es/reviews/melissa_stillton/repeat_2021	\N
Melissa Stillton	7	A good Documentary	2022	The Figo Affair: The Transfer that Changed Football	https://palomitas.es/reviews/melissa_stillton/the_figo_affair:_the_transfer_that_changed_football_2022	\N
Melissa Stillton	6	A good Documentary	2022	Jackass Shark Week 2.0	https://palomitas.es/reviews/melissa_stillton/jackass_shark_week_2.0_2022	\N
Melissa Stillton	6	That's what I call a great choice!	2006	Running with Scissors	https://palomitas.es/reviews/melissa_stillton/running_with_scissors_2006	\N
Melissa Stillton	6	That's what I call a great choice!	2017	The Boss Baby	https://palomitas.es/reviews/melissa_stillton/the_boss_baby_2017	\N
Melissa Stillton	6	A good movie even for a Documentary	2022	2000 Mules	https://palomitas.es/reviews/melissa_stillton/2000_mules_2022	\N
Melissa Stillton	7	A good choice to spent the Sunday evening	2012	Rise of the Guardians	https://palomitas.es/reviews/melissa_stillton/rise_of_the_guardians_2012	\N
Melissa Stillton	6	Not really a Scary movie	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog	https://palomitas.es/reviews/melissa_stillton/straight_outta_nowhere:_scooby-doo!_meets_courage_the_cowardly_dog_2021	\N
Melissa Stillton	5	Not bad but definitely overrated	2022	The Reunion	https://palomitas.es/reviews/melissa_stillton/the_reunion_2022	\N
Melissa Stillton	7	That's what I call a great choice!	2021	Rumba Love	https://palomitas.es/reviews/melissa_stillton/rumba_love_2021	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	Steve McQueen: The Lost Movie	https://palomitas.es/reviews/melissa_stillton/steve_mcqueen:_the_lost_movie_2021	\N
Melissa Stillton	6	A good movie even for a Documentary	2021	The Hunt for Planet B	https://palomitas.es/reviews/melissa_stillton/the_hunt_for_planet_b_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Harmony from the Heart	https://palomitas.es/reviews/melissa_stillton/harmony_from_the_heart_2022	\N
Melissa Stillton	7	A good movie even for a Documentary	2021	Untold: Deal with the Devil	https://palomitas.es/reviews/melissa_stillton/untold:_deal_with_the_devil_2021	\N
Melissa Stillton	6	That's what I call a great choice!	2022	Press Play	https://palomitas.es/reviews/melissa_stillton/press_play_2022	\N
Melissa Stillton	6	A good choice to spent the Sunday evening	2001	Final Fantasy: The Spirits Within	https://palomitas.es/reviews/melissa_stillton/final_fantasy:_the_spirits_within_2001	\N
Paul Mulligan	6	Too long! i got asleep	2021	The United States vs. Billie Holiday	https://forummovies.org/reviews/paul_mulligan/the_united_states_vs._billie_holiday_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Range Roads	https://forummovies.org/reviews/paul_mulligan/range_roads_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2022	Return to Space	https://forummovies.org/reviews/paul_mulligan/return_to_space_2022	\N
Paul Mulligan	5	Not bad but definitely overrated	2021	The Wrong Valentine	https://forummovies.org/reviews/paul_mulligan/the_wrong_valentine_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Quickening	https://forummovies.org/reviews/paul_mulligan/quickening_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	The Ballad of Billy McCrae	https://forummovies.org/reviews/paul_mulligan/the_ballad_of_billy_mccrae_2021	\N
Paul Mulligan	8	A good Documentary	2021	Paper & Glue	https://forummovies.org/reviews/paul_mulligan/paper_&_glue_2021	\N
Paul Mulligan	8	Yeahh! This movie is definitely a must see	2004	The Aviator	https://forummovies.org/reviews/paul_mulligan/the_aviator_2004	\N
Paul Mulligan	5	I didn't understand the dialogues cause i don't speak spanish	2022	Through My Window	https://forummovies.org/reviews/paul_mulligan/through_my_window_2022	\N
Paul Mulligan	6	Too long! i got asleep	2022	The 75th Annual Tony Awards	https://forummovies.org/reviews/paul_mulligan/the_75th_annual_tony_awards_2022	\N
Paul Mulligan	8	A good Documentary	2021	Torn	https://forummovies.org/reviews/paul_mulligan/torn_2021	\N
Paul Mulligan	7	That's what I call a great choice!	2021	Sweet Carolina	https://forummovies.org/reviews/paul_mulligan/sweet_carolina_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	The Christmas Contest	https://forummovies.org/reviews/paul_mulligan/the_christmas_contest_2021	\N
Paul Mulligan	5	Too long! i got asleep	2021	SAS: Red Notice	https://forummovies.org/reviews/paul_mulligan/sas:_red_notice_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	Rebellion	https://forummovies.org/reviews/paul_mulligan/rebellion_2021	\N
Paul Mulligan	7	A good movie to watch with your couple	2022	The Wedding Veil Legacy	https://forummovies.org/reviews/paul_mulligan/the_wedding_veil_legacy_2022	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Trevor Noah Presents Josh Johnson: # (Hashtag)	https://forummovies.org/reviews/paul_mulligan/trevor_noah_presents_josh_johnson:_#_(hashtag)_2021	\N
Paul Mulligan	6	Not really a Scary movie	2022	Studio 666	https://forummovies.org/reviews/paul_mulligan/studio_666_2022	\N
Paul Mulligan	6	Too long! i got asleep	2021	The Matrix Resurrections	https://forummovies.org/reviews/paul_mulligan/the_matrix_resurrections_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Project Pay Day	https://forummovies.org/reviews/paul_mulligan/project_pay_day_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Sweet Pecan Summer	https://forummovies.org/reviews/paul_mulligan/sweet_pecan_summer_2021	\N
Paul Mulligan	7	it is a bit far fetched but a good movie overall	2022	The Outfit	https://forummovies.org/reviews/paul_mulligan/the_outfit_2022	\N
Paul Mulligan	6	A good Documentary	2022	David A. Arnold: It Ain't for the Weak	https://forummovies.org/reviews/paul_mulligan/david_a._arnold:_it_ain't_for_the_weak_2022	\N
Paul Mulligan	8	A good choice to spent the Saturday evening	2006	The Departed	https://forummovies.org/reviews/paul_mulligan/the_departed_2006	\N
Paul Mulligan	5	Not bad but definitely overrated	2022	The Adventures of Peanut and Pig	https://forummovies.org/reviews/paul_mulligan/the_adventures_of_peanut_and_pig_2022	\N
Paul Mulligan	7	A good Documentary	2021	Puff: Wonders of the Reef	https://forummovies.org/reviews/paul_mulligan/puff:_wonders_of_the_reef_2021	\N
Paul Mulligan	5	Awesome movie! It scared the hell out of me	2021	V/H/S/94	https://forummovies.org/reviews/paul_mulligan/v/h/s/94_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2022	Game Set Love	https://forummovies.org/reviews/paul_mulligan/game_set_love_2022	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Outside	https://forummovies.org/reviews/paul_mulligan/outside_2021	\N
Paul Mulligan	5	it is a bit far fetched but a good movie overall	2021	Road to Damascus	https://forummovies.org/reviews/paul_mulligan/road_to_damascus_2021	\N
Paul Mulligan	7	That's what I call a great choice!	2022	Metal Lords	https://forummovies.org/reviews/paul_mulligan/metal_lords_2022	\N
Paul Mulligan	5	Not bad but definitely overrated	2021	Rock Dog 2: Rock Around the Park	https://forummovies.org/reviews/paul_mulligan/rock_dog_2:_rock_around_the_park_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Saying Yes to Christmas	https://forummovies.org/reviews/paul_mulligan/saying_yes_to_christmas_2021	\N
Paul Mulligan	7	A good Documentary	2021	The United States of Insanity	https://forummovies.org/reviews/paul_mulligan/the_united_states_of_insanity_2021	\N
Paul Mulligan	6	A good movie even for a Documentary	2022	White Hot: The Rise & Fall of Abercrombie & Fitch	https://forummovies.org/reviews/paul_mulligan/white_hot:_the_rise_&_fall_of_abercrombie_&_fitch_2022	\N
Paul Mulligan	6	That's what I call a great choice!	2021	The Valentine Competition	https://forummovies.org/reviews/paul_mulligan/the_valentine_competition_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Paul Dood's Deadly Lunch Break	https://forummovies.org/reviews/paul_mulligan/paul_dood's_deadly_lunch_break_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2016	Blind	https://forummovies.org/reviews/paul_mulligan/blind_2016	\N
Paul Mulligan	6	A good movie even for a Documentary	2021	The Swim	https://forummovies.org/reviews/paul_mulligan/the_swim_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2022	The Monkey King: The Legend Begins	https://forummovies.org/reviews/paul_mulligan/the_monkey_king:_the_legend_begins_2022	\N
Paul Mulligan	7	That's what I call a great choice!	2021	The Last Letter from Your Lover	https://forummovies.org/reviews/paul_mulligan/the_last_letter_from_your_lover_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2022	Feeling Butterflies	https://forummovies.org/reviews/paul_mulligan/feeling_butterflies_2022	\N
Paul Mulligan	7	A good movie even for a Documentary	2022	Downfall: The Case Against Boeing	https://forummovies.org/reviews/paul_mulligan/downfall:_the_case_against_boeing_2022	\N
Paul Mulligan	6	That's what I call a great choice!	2016	Paris Can Wait	https://forummovies.org/reviews/paul_mulligan/paris_can_wait_2016	\N
Paul Mulligan	7	it is a bit far fetched but a good movie overall	1998	Ronin	https://forummovies.org/reviews/paul_mulligan/ronin_1998	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Snowkissed	https://forummovies.org/reviews/paul_mulligan/snowkissed_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	Reach for the Rings	https://forummovies.org/reviews/paul_mulligan/reach_for_the_rings_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	This Is Port Adelaide	https://forummovies.org/reviews/paul_mulligan/this_is_port_adelaide_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	The Alpines	https://forummovies.org/reviews/paul_mulligan/the_alpines_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2022	Sheryl	https://forummovies.org/reviews/paul_mulligan/sheryl_2022	\N
Paul Mulligan	7	That's what I call a great choice!	2022	Don't Make Me Go	https://forummovies.org/reviews/paul_mulligan/don't_make_me_go_2022	\N
Paul Mulligan	7	A good choice to spent the Sunday evening	2022	Prey	https://forummovies.org/reviews/paul_mulligan/prey_2022	\N
Paul Mulligan	6	That's what I call a great choice!	2022	Last Seen Alive	https://forummovies.org/reviews/paul_mulligan/last_seen_alive_2022	\N
Paul Mulligan	7	That's what I call a great choice!	2021	Skateshop	https://forummovies.org/reviews/paul_mulligan/skateshop_2021	\N
Paul Mulligan	5	I didn't understand the dialogues cause i don't speak spanish	2021	The Perfect Family	https://forummovies.org/reviews/paul_mulligan/the_perfect_family_2021	\N
Paul Mulligan	8	Yeahh! This movie is definitely a must see	2014	Still Alice	https://forummovies.org/reviews/paul_mulligan/still_alice_2014	\N
Paul Mulligan	6	That's what I call a great choice!	2005	Neverwas	https://forummovies.org/reviews/paul_mulligan/neverwas_2005	\N
Paul Mulligan	5	Awesome movie! It scared the hell out of me	2022	Single Black Female	https://forummovies.org/reviews/paul_mulligan/single_black_female_2022	\N
Paul Mulligan	6	Awesome movie! It scared the hell out of me	2021	What Josiah Saw	https://forummovies.org/reviews/paul_mulligan/what_josiah_saw_2021	\N
Paul Mulligan	6	it is a bit far fetched but a good movie overall	1994	The Shadow	https://forummovies.org/reviews/paul_mulligan/the_shadow_1994	\N
Paul Mulligan	7	Too long! i got asleep	2021	The Eyes of Tammy Faye	https://forummovies.org/reviews/paul_mulligan/the_eyes_of_tammy_faye_2021	\N
Paul Mulligan	7	A good Documentary	2022	Ranveer vs. Wild with Bear Grylls	https://forummovies.org/reviews/paul_mulligan/ranveer_vs._wild_with_bear_grylls_2022	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	Tony Parker: The Final Shot	https://forummovies.org/reviews/paul_mulligan/tony_parker:_the_final_shot_2021	\N
Paul Mulligan	6	A good movie even for a Documentary	2021	Stallone: Frank That Is	https://forummovies.org/reviews/paul_mulligan/stallone:_frank_that_is_2021	\N
Paul Mulligan	6	A good movie even for a Documentary	2021	Sisters on Track	https://forummovies.org/reviews/paul_mulligan/sisters_on_track_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	The Enchanted Christmas Cake	https://forummovies.org/reviews/paul_mulligan/the_enchanted_christmas_cake_2021	\N
Paul Mulligan	8	A good movie even for a Documentary	2021	Sir Alex Ferguson: Never Give In	https://forummovies.org/reviews/paul_mulligan/sir_alex_ferguson:_never_give_in_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2022	Eddie Izzard: Wunderbar	https://forummovies.org/reviews/paul_mulligan/eddie_izzard:_wunderbar_2022	\N
Paul Mulligan	6	it is a bit far fetched but a good movie overall	2022	The Weekend Away	https://forummovies.org/reviews/paul_mulligan/the_weekend_away_2022	\N
Paul Mulligan	4	Not bad but definitely overrated	1997	McHale's Navy	https://forummovies.org/reviews/paul_mulligan/mchale's_navy_1997	\N
Paul Mulligan	6	That's what I call a great choice!	2017	Return to Montauk	https://forummovies.org/reviews/paul_mulligan/return_to_montauk_2017	\N
Paul Mulligan	8	A good Documentary	2022	This Much I Know to Be True	https://forummovies.org/reviews/paul_mulligan/this_much_i_know_to_be_true_2022	\N
Paul Mulligan	5	Not bad but definitely overrated	2022	Wifelike	https://forummovies.org/reviews/paul_mulligan/wifelike_2022	\N
Paul Mulligan	6	I didn't understand the dialogues cause i don't speak spanish	2022	Dancing on Glass	https://forummovies.org/reviews/paul_mulligan/dancing_on_glass_2022	\N
Paul Mulligan	7	That's what I call a great choice!	2022	The Journey Ahead	https://forummovies.org/reviews/paul_mulligan/the_journey_ahead_2022	\N
Paul Mulligan	6	That's what I call a great choice!	2022	Gabriel's Rapture: Part Three	https://forummovies.org/reviews/paul_mulligan/gabriel's_rapture:_part_three_2022	\N
Paul Mulligan	8	Yeahh! This movie is definitely a must see	2022	Floodlights	https://forummovies.org/reviews/paul_mulligan/floodlights_2022	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	Rebel Dykes	https://forummovies.org/reviews/paul_mulligan/rebel_dykes_2021	\N
Paul Mulligan	6	That's what I call a great choice!	2021	Taking the Fall	https://forummovies.org/reviews/paul_mulligan/taking_the_fall_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2019	Before You Know It	https://forummovies.org/reviews/paul_mulligan/before_you_know_it_2019	\N
Paul Mulligan	6	it is a bit far fetched but a good movie overall	2021	The Protégé	https://forummovies.org/reviews/paul_mulligan/the_protégé_2021	\N
Paul Mulligan	5	Not bad but definitely overrated	2022	Secret Headquarters	https://forummovies.org/reviews/paul_mulligan/secret_headquarters_2022	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Zebra Girl	https://forummovies.org/reviews/paul_mulligan/zebra_girl_2021	\N
Paul Mulligan	5	Not bad but definitely overrated	2022	The Lost	https://forummovies.org/reviews/paul_mulligan/the_lost_2022	\N
Paul Mulligan	6	That's what I call a great choice!	2021	The Boss Baby: Family Business	https://forummovies.org/reviews/paul_mulligan/the_boss_baby:_family_business_2021	\N
Paul Mulligan	5	Not bad but definitely overrated	2022	Gone in the Night	https://forummovies.org/reviews/paul_mulligan/gone_in_the_night_2022	\N
Paul Mulligan	7	Yeahh! This movie is definitely a must see	2021	Robin Roberts Presents: Mahalia	https://forummovies.org/reviews/paul_mulligan/robin_roberts_presents:_mahalia_2021	\N
Paul Mulligan	5	Awesome movie! It scared the hell out of me	2021	The Last Thing Mary Saw	https://forummovies.org/reviews/paul_mulligan/the_last_thing_mary_saw_2021	\N
Paul Mulligan	7	A good Documentary	2022	Untold: The Rise and Fall of AND1	https://forummovies.org/reviews/paul_mulligan/untold:_the_rise_and_fall_of_and1_2022	\N
Paul Mulligan	6	I didn't understand the dialogues cause i don't speak spanish	2021	The Red Star	https://forummovies.org/reviews/paul_mulligan/the_red_star_2021	\N
Paul Mulligan	7	A good movie even for a Documentary	2021	What Drives Us	https://forummovies.org/reviews/paul_mulligan/what_drives_us_2021	\N
Paul Mulligan	8	A good Documentary	2021	Shadow Game	https://forummovies.org/reviews/paul_mulligan/shadow_game_2021	\N
Paul Mulligan	5	That's what I call a great choice!	2021	Oprah with Meghan and Harry: A CBS Primetime Special	https://forummovies.org/reviews/paul_mulligan/oprah_with_meghan_and_harry:_a_cbs_primetime_special_2021	\N
Paul Mulligan	7	A good choice to spent the Sunday evening	2011	Melancholia	https://forummovies.org/reviews/paul_mulligan/melancholia_2011	\N
Paul Mulligan	6	That's what I call a great choice!	2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist	https://forummovies.org/reviews/paul_mulligan/v.c._andrews'_landry_family_v.c._andrews'_pearl_in_the_mist_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Real Talk	https://palomitas.es/reviews/paul_pendergast/real_talk_2021	\N
Paul Pendergast	4	Too long! i got asleep	2016	Back in the Day	https://palomitas.es/reviews/paul_pendergast/back_in_the_day_2016	\N
Paul Pendergast	6	it is a bit far fetched but a good movie overall	1988	Married to the Mob	https://palomitas.es/reviews/paul_pendergast/married_to_the_mob_1988	\N
Paul Pendergast	6	Too long! i got asleep	2019	Out Stealing Horses	https://palomitas.es/reviews/paul_pendergast/out_stealing_horses_2019	\N
Paul Pendergast	6	That's what I call a great choice!	1999	The Confession	https://palomitas.es/reviews/paul_pendergast/the_confession_1999	\N
Paul Pendergast	7	Yeahh! This movie is definitely a must see	1997	Amistad	https://palomitas.es/reviews/paul_pendergast/amistad_1997	\N
Paul Pendergast	3	This movie is boring and the acting is mediocre	2015	Andron	https://palomitas.es/reviews/paul_pendergast/andron_2015	\N
Paul Pendergast	7	A good choice to spent the Sunday evening	2015	Avengers: Age of Ultron	https://palomitas.es/reviews/paul_pendergast/avengers:_age_of_ultron_2015	\N
Paul Pendergast	8	A good movie to watch with your couple	2007	Stardust	https://palomitas.es/reviews/paul_pendergast/stardust_2007	\N
Paul Pendergast	7	A good movie even for a Documentary	2013	Seduced and Abandoned	https://palomitas.es/reviews/paul_pendergast/seduced_and_abandoned_2013	\N
Paul Pendergast	8	A good movie to watch with your couple	1997	Good Will Hunting	https://palomitas.es/reviews/paul_pendergast/good_will_hunting_1997	\N
Paul Pendergast	6	That's what I call a great choice!	2012	To Rome with Love	https://palomitas.es/reviews/paul_pendergast/to_rome_with_love_2012	\N
Paul Pendergast	7	A good movie even for a Documentary	2021	Wolfgang	https://palomitas.es/reviews/paul_pendergast/wolfgang_2021	\N
Paul Pendergast	7	That's what I call a great choice!	2021	The Tender Bar	https://palomitas.es/reviews/paul_pendergast/the_tender_bar_2021	\N
Paul Pendergast	6	A good movie even for a Documentary	2021	The Unwonted Sasquatch - Director's Cut	https://palomitas.es/reviews/paul_pendergast/the_unwonted_sasquatch_-_director's_cut_2021	\N
Paul Pendergast	7	That's what I call a great choice!	2021	Two Yellow Lines	https://palomitas.es/reviews/paul_pendergast/two_yellow_lines_2021	\N
Paul Pendergast	8	Yeahh! This movie is definitely a must see	2021	South Park: Post Covid - The Return of Covid	https://palomitas.es/reviews/paul_pendergast/south_park:_post_covid_-_the_return_of_covid_2021	\N
Paul Pendergast	7	A good movie even for a Documentary	2022	Gerry Anderson: A Life Uncharted	https://palomitas.es/reviews/paul_pendergast/gerry_anderson:_a_life_uncharted_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	God's Waiting Room	https://palomitas.es/reviews/paul_pendergast/god's_waiting_room_2022	\N
Paul Pendergast	6	A good movie even for a Documentary	2022	The Mystery of Marilyn Monroe: The Unheard Tapes	https://palomitas.es/reviews/paul_pendergast/the_mystery_of_marilyn_monroe:_the_unheard_tapes_2022	\N
Paul Pendergast	7	A good Documentary	2022	Katrina Babies	https://palomitas.es/reviews/paul_pendergast/katrina_babies_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Our Dream Wedding	https://palomitas.es/reviews/paul_pendergast/our_dream_wedding_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2022	The Second Age of Aquarius	https://palomitas.es/reviews/paul_pendergast/the_second_age_of_aquarius_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Love in the Limelight	https://palomitas.es/reviews/paul_pendergast/love_in_the_limelight_2022	\N
Paul Pendergast	6	A good movie even for a Documentary	2021	The Rise of the Anti-Vaxx Movement	https://palomitas.es/reviews/paul_pendergast/the_rise_of_the_anti-vaxx_movement_2021	\N
Paul Pendergast	7	Yeahh! This movie is definitely a must see	2021	The Dig	https://palomitas.es/reviews/paul_pendergast/the_dig_2021	\N
Paul Pendergast	5	Not bad but definitely overrated	2022	Malicious Mind Games	https://palomitas.es/reviews/paul_pendergast/malicious_mind_games_2022	\N
Paul Pendergast	8	A good Documentary	2022	Freedom Uncut	https://palomitas.es/reviews/paul_pendergast/freedom_uncut_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Green Lantern: Beware My Power	https://palomitas.es/reviews/paul_pendergast/green_lantern:_beware_my_power_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Salesmen	https://palomitas.es/reviews/paul_pendergast/salesmen_2022	\N
Paul Pendergast	7	That's what I call a great choice!	2022	The House	https://palomitas.es/reviews/paul_pendergast/the_house_2022	\N
Paul Pendergast	7	Awesome movie! It scared the hell out of me	2021	The Black Phone	https://palomitas.es/reviews/paul_pendergast/the_black_phone_2021	\N
Paul Pendergast	7	A good movie even for a Documentary	2021	Workhorse Queen	https://palomitas.es/reviews/paul_pendergast/workhorse_queen_2021	\N
Paul Pendergast	7	Yeahh! This movie is definitely a must see	2021	Swan Song	https://palomitas.es/reviews/paul_pendergast/swan_song_2021	\N
Paul Pendergast	6	A good movie even for a Documentary	2021	The Housewife and the Hustler	https://palomitas.es/reviews/paul_pendergast/the_housewife_and_the_hustler_2021	\N
Paul Pendergast	8	A good movie even for a Documentary	2022	This Is Joan Collins	https://palomitas.es/reviews/paul_pendergast/this_is_joan_collins_2022	\N
Paul Pendergast	6	A good movie even for a Documentary	2021	Revealed: The Hunt for Bin Laden	https://palomitas.es/reviews/paul_pendergast/revealed:_the_hunt_for_bin_laden_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Paws of Fury: The Legend of Hank	https://palomitas.es/reviews/paul_pendergast/paws_of_fury:_the_legend_of_hank_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	The Contractor	https://palomitas.es/reviews/paul_pendergast/the_contractor_2022	\N
Paul Pendergast	7	A good movie even for a Documentary	2021	The Pedal Movie	https://palomitas.es/reviews/paul_pendergast/the_pedal_movie_2021	\N
Paul Pendergast	8	A good movie even for a Documentary	2021	Street Gang: How We Got to Sesame Street	https://palomitas.es/reviews/paul_pendergast/street_gang:_how_we_got_to_sesame_street_2021	\N
Paul Pendergast	5	That's what I call a great choice!	2022	Lost Angel	https://palomitas.es/reviews/paul_pendergast/lost_angel_2022	\N
Paul Pendergast	6	A good Documentary	2022	More Than Robots	https://palomitas.es/reviews/paul_pendergast/more_than_robots_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Reminiscence	https://palomitas.es/reviews/paul_pendergast/reminiscence_2021	\N
Paul Pendergast	6	Not really a Scary movie	2022	Gatlopp	https://palomitas.es/reviews/paul_pendergast/gatlopp_2022	\N
Paul Pendergast	5	That's what I call a great choice!	2022	Assailant	https://palomitas.es/reviews/paul_pendergast/assailant_2022	\N
Paul Pendergast	5	That's what I call a great choice!	2021	Tina and Lori	https://palomitas.es/reviews/paul_pendergast/tina_and_lori_2021	\N
Paul Pendergast	8	A good movie even for a Documentary	2022	The Disruptors	https://palomitas.es/reviews/paul_pendergast/the_disruptors_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Terror on the Prairie	https://palomitas.es/reviews/paul_pendergast/terror_on_the_prairie_2022	\N
Paul Pendergast	6	I didn't understand the dialogues cause i don't speak spanish	2021	Soy Rada: Serendipity	https://palomitas.es/reviews/paul_pendergast/soy_rada:_serendipity_2021	\N
Paul Pendergast	6	Too long! i got asleep	2022	Father Stu	https://palomitas.es/reviews/paul_pendergast/father_stu_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	The Railway Children Return	https://palomitas.es/reviews/paul_pendergast/the_railway_children_return_2022	\N
Paul Pendergast	7	That's what I call a great choice!	2021	The Colour Room	https://palomitas.es/reviews/paul_pendergast/the_colour_room_2021	\N
Paul Pendergast	5	Not bad but definitely overrated	2022	Family Camp	https://palomitas.es/reviews/paul_pendergast/family_camp_2022	\N
Paul Pendergast	6	Awesome movie! It scared the hell out of me	2021	Till Death	https://palomitas.es/reviews/paul_pendergast/till_death_2021	\N
Paul Pendergast	5	Not bad but definitely overrated	2022	My Fake Boyfriend	https://palomitas.es/reviews/paul_pendergast/my_fake_boyfriend_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Look Both Ways	https://palomitas.es/reviews/paul_pendergast/look_both_ways_2022	\N
Paul Pendergast	5	Awesome movie! It scared the hell out of me	2022	The Cellar	https://palomitas.es/reviews/paul_pendergast/the_cellar_2022	\N
Paul Pendergast	8	A good movie even for a Documentary	2022	Carole King & James Taylor: Just Call Out My Name	https://palomitas.es/reviews/paul_pendergast/carole_king_&_james_taylor:_just_call_out_my_name_2022	\N
Paul Pendergast	5	Not bad but definitely overrated	2022	Killer Ambition	https://palomitas.es/reviews/paul_pendergast/killer_ambition_2022	\N
Paul Pendergast	7	A good movie even for a Documentary	2021	The Velvet Underground	https://palomitas.es/reviews/paul_pendergast/the_velvet_underground_2021	\N
Paul Pendergast	8	A good movie even for a Documentary	2022	Belle Vie	https://palomitas.es/reviews/paul_pendergast/belle_vie_2022	\N
Paul Pendergast	7	A good Documentary	2022	Jazz Fest: A New Orleans Story	https://palomitas.es/reviews/paul_pendergast/jazz_fest:_a_new_orleans_story_2022	\N
Paul Pendergast	6	A good choice to spent the Sunday evening	2022	Men	https://palomitas.es/reviews/paul_pendergast/men_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Taking the Reins	https://palomitas.es/reviews/paul_pendergast/taking_the_reins_2021	\N
Paul Pendergast	5	A good movie even for a Documentary	2021	There Is No I in Threesome	https://palomitas.es/reviews/paul_pendergast/there_is_no_i_in_threesome_2021	\N
Paul Pendergast	7	That's what I call a great choice!	2022	Brian and Charles	https://palomitas.es/reviews/paul_pendergast/brian_and_charles_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Ride the Eagle	https://palomitas.es/reviews/paul_pendergast/ride_the_eagle_2021	\N
Paul Pendergast	5	That's what I call a great choice!	2021	Secretly Santa	https://palomitas.es/reviews/paul_pendergast/secretly_santa_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2021	Sand Dollar Cove	https://palomitas.es/reviews/paul_pendergast/sand_dollar_cove_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2021	The Influencer	https://palomitas.es/reviews/paul_pendergast/the_influencer_2021	\N
Paul Pendergast	7	A good movie even for a Documentary	2021	The Forever Prisoner	https://palomitas.es/reviews/paul_pendergast/the_forever_prisoner_2021	\N
Paul Pendergast	8	A good movie even for a Documentary	2022	Surviving Paradise: A Family Tale	https://palomitas.es/reviews/paul_pendergast/surviving_paradise:_a_family_tale_2022	\N
Paul Pendergast	7	A good movie even for a Documentary	2022	Watergate: High Crimes in the White House	https://palomitas.es/reviews/paul_pendergast/watergate:_high_crimes_in_the_white_house_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	The Starling	https://palomitas.es/reviews/paul_pendergast/the_starling_2021	\N
Paul Pendergast	5	That's what I call a great choice!	2021	We Broke Up	https://palomitas.es/reviews/paul_pendergast/we_broke_up_2021	\N
Paul Pendergast	5	A good movie even for a Documentary	2022	Civil: Ben Crump	https://palomitas.es/reviews/paul_pendergast/civil:_ben_crump_2022	\N
Paul Pendergast	5	That's what I call a great choice!	2021	The Wedding Ring	https://palomitas.es/reviews/paul_pendergast/the_wedding_ring_2021	\N
Paul Pendergast	6	That's what I call a great choice!	2022	Marry Me	https://palomitas.es/reviews/paul_pendergast/marry_me_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	The 43rd Annual Kennedy Center Honors	https://palomitas.es/reviews/paul_pendergast/the_43rd_annual_kennedy_center_honors_2021	\N
Paul Pendergast	5	Awesome movie! It scared the hell out of me	2021	Spiral	https://palomitas.es/reviews/paul_pendergast/spiral_2021	\N
Paul Pendergast	6	A good movie even for a Documentary	2022	Stand Out: An LGBTQ+ Celebration	https://palomitas.es/reviews/paul_pendergast/stand_out:_an_lgbtq+_celebration_2022	\N
Paul Pendergast	5	That's what I call a great choice!	2021	Take Me to Tarzana	https://palomitas.es/reviews/paul_pendergast/take_me_to_tarzana_2021	\N
Paul Pendergast	7	A good movie even for a Documentary	2022	Cypress Hill: Insane in the Brain	https://palomitas.es/reviews/paul_pendergast/cypress_hill:_insane_in_the_brain_2022	\N
Paul Pendergast	5	Too long! i got asleep	2022	Moonfall	https://palomitas.es/reviews/paul_pendergast/moonfall_2022	\N
Paul Pendergast	6	That's what I call a great choice!	2021	What She Said	https://palomitas.es/reviews/paul_pendergast/what_she_said_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	The Winter Palace	https://forummovies.org/reviews/phill_freeman/the_winter_palace_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Stowaway	https://forummovies.org/reviews/phill_freeman/stowaway_2021	\N
Phill Freeman	7	Too long! i got asleep	2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony	https://forummovies.org/reviews/phill_freeman/the_2021_rock_&_roll_hall_of_fame_induction_ceremony_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	2022 Oscar Nominated Short Films: Animation	https://forummovies.org/reviews/phill_freeman/2022_oscar_nominated_short_films:_animation_2022	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2021	See for Me	https://forummovies.org/reviews/phill_freeman/see_for_me_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Home Team	https://forummovies.org/reviews/phill_freeman/home_team_2022	\N
Phill Freeman	7	That's what I call a great choice!	2021	The Electrical Life of Louis Wain	https://forummovies.org/reviews/phill_freeman/the_electrical_life_of_louis_wain_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Devil's Ring	https://forummovies.org/reviews/phill_freeman/the_devil's_ring_2021	\N
Phill Freeman	6	I didn't understand the dialogues cause i don't speak spanish	2021	The Daughter	https://forummovies.org/reviews/phill_freeman/the_daughter_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	David Spade: Nothing Personal	https://forummovies.org/reviews/phill_freeman/david_spade:_nothing_personal_2022	\N
Phill Freeman	7	A good movie even for a Documentary	2021	The Rise and Fall of LuLaRoe	https://forummovies.org/reviews/phill_freeman/the_rise_and_fall_of_lularoe_2021	\N
Phill Freeman	7	That's what I call a great choice!	1993	Six Degrees of Separation	https://forummovies.org/reviews/phill_freeman/six_degrees_of_separation_1993	\N
Phill Freeman	7	I didn't understand the dialogues cause i don't speak spanish	2022	VALLDAURA: A Quarantine Cabin	https://forummovies.org/reviews/phill_freeman/valldaura:_a_quarantine_cabin_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Seal Team	https://forummovies.org/reviews/phill_freeman/seal_team_2021	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2022	Take the Night	https://forummovies.org/reviews/phill_freeman/take_the_night_2022	\N
Phill Freeman	7	That's what I call a great choice!	2021	Open by Christmas	https://forummovies.org/reviews/phill_freeman/open_by_christmas_2021	\N
Phill Freeman	5	Too long! i got asleep	2022	The 355	https://forummovies.org/reviews/phill_freeman/the_355_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	Erzulie	https://forummovies.org/reviews/phill_freeman/erzulie_2022	\N
Phill Freeman	7	That's what I call a great choice!	2021	Peace by Chocolate	https://forummovies.org/reviews/phill_freeman/peace_by_chocolate_2021	\N
Phill Freeman	6	A good Documentary	2022	Untrapped: The Story of Lil Baby	https://forummovies.org/reviews/phill_freeman/untrapped:_the_story_of_lil_baby_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	Wild Game	https://forummovies.org/reviews/phill_freeman/wild_game_2021	\N
Phill Freeman	8	I didn't understand the dialogues cause i don't speak spanish	2021	The Eternal Moment	https://forummovies.org/reviews/phill_freeman/the_eternal_moment_2021	\N
Phill Freeman	8	A good movie even for a Documentary	2022	Lucy and Desi	https://forummovies.org/reviews/phill_freeman/lucy_and_desi_2022	\N
Phill Freeman	8	A good Documentary	2021	This is Gwar	https://forummovies.org/reviews/phill_freeman/this_is_gwar_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Last Bus	https://forummovies.org/reviews/phill_freeman/the_last_bus_2021	\N
Phill Freeman	6	That's what I call a great choice!	1995	Two Bits	https://forummovies.org/reviews/phill_freeman/two_bits_1995	\N
Phill Freeman	6	A good Documentary	2022	Radford Returns	https://forummovies.org/reviews/phill_freeman/radford_returns_2022	\N
Phill Freeman	6	A good movie even for a Documentary	2021	Own the Room	https://forummovies.org/reviews/phill_freeman/own_the_room_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Schumacher	https://forummovies.org/reviews/phill_freeman/schumacher_2021	\N
Phill Freeman	6	Too long! i got asleep	2021	The Harder They Fall	https://forummovies.org/reviews/phill_freeman/the_harder_they_fall_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Holiday Fix Up	https://forummovies.org/reviews/phill_freeman/the_holiday_fix_up_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Prince of Muck	https://forummovies.org/reviews/phill_freeman/prince_of_muck_2021	\N
Phill Freeman	5	That's what I call a great choice!	2021	The Jenkins Family Christmas	https://forummovies.org/reviews/phill_freeman/the_jenkins_family_christmas_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2021	Shock Docs The Exorcism of Roland Doe	https://forummovies.org/reviews/phill_freeman/shock_docs_the_exorcism_of_roland_doe_2021	\N
Phill Freeman	6	Awesome movie! It scared the hell out of me	2022	Scream	https://forummovies.org/reviews/phill_freeman/scream_2022	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2022	Beavis and Butt-Head Do the Universe	https://forummovies.org/reviews/phill_freeman/beavis_and_butt-head_do_the_universe_2022	\N
Phill Freeman	6	Too long! i got asleep	2022	Death on the Nile	https://forummovies.org/reviews/phill_freeman/death_on_the_nile_2022	\N
Phill Freeman	5	Not bad but definitely overrated	2021	Zone 414	https://forummovies.org/reviews/phill_freeman/zone_414_2021	\N
Phill Freeman	5	Awesome movie! It scared the hell out of me	2021	Paranormal Activity: Next of Kin	https://forummovies.org/reviews/phill_freeman/paranormal_activity:_next_of_kin_2021	\N
Phill Freeman	7	I didn't understand the dialogues cause i don't speak spanish	2021	Private Network: Who Killed Manuel Buendía?	https://forummovies.org/reviews/phill_freeman/private_network:_who_killed_manuel_buendía?_2021	\N
Phill Freeman	9	A good Documentary	2022	Unicorn Town	https://forummovies.org/reviews/phill_freeman/unicorn_town_2022	\N
Phill Freeman	5	That's what I call a great choice!	2022	Deep Water	https://forummovies.org/reviews/phill_freeman/deep_water_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	The Ogglies	https://forummovies.org/reviews/phill_freeman/the_ogglies_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Triumph	https://forummovies.org/reviews/phill_freeman/triumph_2021	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2022	The Northman	https://forummovies.org/reviews/phill_freeman/the_northman_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	The Girl in the Window	https://forummovies.org/reviews/phill_freeman/the_girl_in_the_window_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	Women of the White Buffalo	https://forummovies.org/reviews/phill_freeman/women_of_the_white_buffalo_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Roller Squad	https://forummovies.org/reviews/phill_freeman/roller_squad_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The War Below	https://forummovies.org/reviews/phill_freeman/the_war_below_2021	\N
Phill Freeman	7	A good Documentary	2021	The Jesus Music	https://forummovies.org/reviews/phill_freeman/the_jesus_music_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Second Chances	https://forummovies.org/reviews/phill_freeman/second_chances_2021	\N
Phill Freeman	7	it is a bit far fetched but a good movie overall	2006	Pirates of the Caribbean: Dead Man's Chest	https://forummovies.org/reviews/phill_freeman/pirates_of_the_caribbean:_dead_man's_chest_2006	\N
Phill Freeman	7	A good movie to watch with your couple	2021	The French Dispatch	https://forummovies.org/reviews/phill_freeman/the_french_dispatch_2021	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2021	The Witcher: Nightmare of the Wolf	https://forummovies.org/reviews/phill_freeman/the_witcher:_nightmare_of_the_wolf_2021	\N
Phill Freeman	5	Not really a Scary movie	2021	She Will	https://forummovies.org/reviews/phill_freeman/she_will_2021	\N
Phill Freeman	6	Too long! i got asleep	2021	Redemption for Easter	https://forummovies.org/reviews/phill_freeman/redemption_for_easter_2021	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2021	Sing 2	https://forummovies.org/reviews/phill_freeman/sing_2_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2021	The Storms of Jeremy Thomas	https://forummovies.org/reviews/phill_freeman/the_storms_of_jeremy_thomas_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Ultrasound	https://forummovies.org/reviews/phill_freeman/ultrasound_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Switched Before Birth	https://forummovies.org/reviews/phill_freeman/switched_before_birth_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2021	The Found Footage Phenomenon	https://forummovies.org/reviews/phill_freeman/the_found_footage_phenomenon_2021	\N
Phill Freeman	6	Awesome movie! It scared the hell out of me	2022	Crimes of the Future	https://forummovies.org/reviews/phill_freeman/crimes_of_the_future_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	This Is the Night	https://forummovies.org/reviews/phill_freeman/this_is_the_night_2021	\N
Phill Freeman	7	That's what I call a great choice!	2022	The Royal	https://forummovies.org/reviews/phill_freeman/the_royal_2022	\N
Phill Freeman	7	That's what I call a great choice!	2018	The Public	https://forummovies.org/reviews/phill_freeman/the_public_2018	\N
Phill Freeman	6	That's what I call a great choice!	2022	Hidden Gems	https://forummovies.org/reviews/phill_freeman/hidden_gems_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	I Love My Dad	https://forummovies.org/reviews/phill_freeman/i_love_my_dad_2022	\N
Phill Freeman	7	A good choice to spent the Sunday evening	2022	The Adam Project	https://forummovies.org/reviews/phill_freeman/the_adam_project_2022	\N
Phill Freeman	5	Awesome movie! It scared the hell out of me	2021	We're All Going to the World's Fair	https://forummovies.org/reviews/phill_freeman/we're_all_going_to_the_world's_fair_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Try Harder!	https://forummovies.org/reviews/phill_freeman/try_harder!_2021	\N
Phill Freeman	8	A good movie even for a Documentary	2022	Benjamin Franklin	https://forummovies.org/reviews/phill_freeman/benjamin_franklin_2022	\N
Phill Freeman	8	A good movie even for a Documentary	2022	Spring Awakening: Those You've Known	https://forummovies.org/reviews/phill_freeman/spring_awakening:_those_you've_known_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Single All the Way	https://forummovies.org/reviews/phill_freeman/single_all_the_way_2021	\N
Phill Freeman	7	A good Documentary	2021	The Village Detective: a song cycle	https://forummovies.org/reviews/phill_freeman/the_village_detective:_a_song_cycle_2021	\N
Phill Freeman	5	That's what I call a great choice!	2021	The Maltese Holiday	https://forummovies.org/reviews/phill_freeman/the_maltese_holiday_2021	\N
Phill Freeman	7	I didn't understand the dialogues cause i don't speak spanish	2021	Prayers for the Stolen	https://forummovies.org/reviews/phill_freeman/prayers_for_the_stolen_2021	\N
Phill Freeman	5	Too long! i got asleep	2022	Murder at Yellowstone City	https://forummovies.org/reviews/phill_freeman/murder_at_yellowstone_city_2022	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2020	Pixie	https://forummovies.org/reviews/phill_freeman/pixie_2020	\N
Phill Freeman	8	A good movie even for a Documentary	2022	Tony Hawk: Until the Wheels Fall Off	https://forummovies.org/reviews/phill_freeman/tony_hawk:_until_the_wheels_fall_off_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Exchange	https://forummovies.org/reviews/phill_freeman/the_exchange_2021	\N
Phill Freeman	5	I didn't understand the dialogues cause i don't speak spanish	2021	The Children of God	https://forummovies.org/reviews/phill_freeman/the_children_of_god_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Caught in His Web	https://forummovies.org/reviews/phill_freeman/caught_in_his_web_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	Saving Sloane	https://forummovies.org/reviews/phill_freeman/saving_sloane_2021	\N
Phill Freeman	8	A good Documentary	2021	Under the Volcano	https://forummovies.org/reviews/phill_freeman/under_the_volcano_2021	\N
Phill Freeman	7	it is a bit far fetched but a good movie overall	2022	Trophy Wife	https://forummovies.org/reviews/phill_freeman/trophy_wife_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	City of Vultures 2	https://forummovies.org/reviews/phill_freeman/city_of_vultures_2_2022	\N
Phill Freeman	5	Awesome movie! It scared the hell out of me	2022	Torn Hearts	https://forummovies.org/reviews/phill_freeman/torn_hearts_2022	\N
Phill Freeman	5	That's what I call a great choice!	2022	Easter Sunday	https://forummovies.org/reviews/phill_freeman/easter_sunday_2022	\N
Phill Freeman	7	it is a bit far fetched but a good movie overall	2021	The White Tiger	https://forummovies.org/reviews/phill_freeman/the_white_tiger_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	To Olivia	https://forummovies.org/reviews/phill_freeman/to_olivia_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Butlers in Love	https://forummovies.org/reviews/phill_freeman/butlers_in_love_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	Tom and Jerry	https://forummovies.org/reviews/phill_freeman/tom_and_jerry_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	Kick Like Tayla	https://forummovies.org/reviews/phill_freeman/kick_like_tayla_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	Uncharted	https://forummovies.org/reviews/phill_freeman/uncharted_2022	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2022	Memory	https://forummovies.org/reviews/phill_freeman/memory_2022	\N
Phill Freeman	5	it is a bit far fetched but a good movie overall	2022	Low Life	https://forummovies.org/reviews/phill_freeman/low_life_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Violet	https://forummovies.org/reviews/phill_freeman/violet_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Dakota	https://forummovies.org/reviews/phill_freeman/dakota_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	The One You're With	https://forummovies.org/reviews/phill_freeman/the_one_you're_with_2021	\N
Phill Freeman	5	Not bad but definitely overrated	2021	The Grand Duke of Corsica	https://forummovies.org/reviews/phill_freeman/the_grand_duke_of_corsica_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	The Show	https://forummovies.org/reviews/phill_freeman/the_show_2021	\N
Phill Freeman	5	Not really a Scary movie	2021	Super Hot	https://forummovies.org/reviews/phill_freeman/super_hot_2021	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2021	The Many Saints of Newark	https://forummovies.org/reviews/phill_freeman/the_many_saints_of_newark_2021	\N
Phill Freeman	6	That's what I call a great choice!	1989	Scandal	https://forummovies.org/reviews/phill_freeman/scandal_1989	\N
Phill Freeman	7	I didn't understand the dialogues cause i don't speak spanish	2021	The Sacred Spirit	https://forummovies.org/reviews/phill_freeman/the_sacred_spirit_2021	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2022	Here Out West	https://forummovies.org/reviews/phill_freeman/here_out_west_2022	\N
Phill Freeman	8	A good movie even for a Documentary	2022	Chernobyl: The Lost Tapes	https://forummovies.org/reviews/phill_freeman/chernobyl:_the_lost_tapes_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Tango Shalom	https://forummovies.org/reviews/phill_freeman/tango_shalom_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Pebble and the Boy	https://forummovies.org/reviews/phill_freeman/the_pebble_and_the_boy_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Resurgence	https://forummovies.org/reviews/phill_freeman/resurgence_2021	\N
Phill Freeman	5	A good movie even for a Documentary	2022	A Tear in the Sky	https://forummovies.org/reviews/phill_freeman/a_tear_in_the_sky_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Redemption in Cherry Springs	https://forummovies.org/reviews/phill_freeman/redemption_in_cherry_springs_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Queen Bees	https://forummovies.org/reviews/phill_freeman/queen_bees_2021	\N
Phill Freeman	5	Awesome movie! It scared the hell out of me	2022	Morbius	https://forummovies.org/reviews/phill_freeman/morbius_2022	\N
Phill Freeman	7	A good movie to watch with your couple	2021	The Matchmaker	https://forummovies.org/reviews/phill_freeman/the_matchmaker_2021	\N
Phill Freeman	5	it is a bit far fetched but a good movie overall	2021	The Pharm	https://forummovies.org/reviews/phill_freeman/the_pharm_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Twyla Moves	https://forummovies.org/reviews/phill_freeman/twyla_moves_2021	\N
Phill Freeman	8	A good movie even for a Documentary	2021	Playing with Sharks: The Valerie Taylor Story	https://forummovies.org/reviews/phill_freeman/playing_with_sharks:_the_valerie_taylor_story_2021	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2021	The Good Father: The Martin MacNeill Story	https://forummovies.org/reviews/phill_freeman/the_good_father:_the_martin_macneill_story_2021	\N
Phill Freeman	5	Awesome movie! It scared the hell out of me	2021	The Deep House	https://forummovies.org/reviews/phill_freeman/the_deep_house_2021	\N
Phill Freeman	5	Too long! i got asleep	2021	Silent Hours	https://forummovies.org/reviews/phill_freeman/silent_hours_2021	\N
Phill Freeman	6	Awesome movie! It scared the hell out of me	2022	No Exit	https://forummovies.org/reviews/phill_freeman/no_exit_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Pleasure	https://forummovies.org/reviews/phill_freeman/pleasure_2021	\N
Phill Freeman	7	That's what I call a great choice!	2022	Three Months	https://forummovies.org/reviews/phill_freeman/three_months_2022	\N
Phill Freeman	5	A good movie even for a Documentary	2022	Snoop Dogg's F*Cn Around Comedy Special	https://forummovies.org/reviews/phill_freeman/snoop_dogg's_f*cn_around_comedy_special_2022	\N
Phill Freeman	6	I didn't understand the dialogues cause i don't speak spanish	2021	The Dog Who Wouldn't Be Quiet	https://forummovies.org/reviews/phill_freeman/the_dog_who_wouldn't_be_quiet_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Senior Year	https://forummovies.org/reviews/phill_freeman/senior_year_2022	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	2022	Windfall	https://forummovies.org/reviews/phill_freeman/windfall_2022	\N
Phill Freeman	7	A good choice to spent the Sunday evening	2011	Thor	https://forummovies.org/reviews/phill_freeman/thor_2011	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Housewives of the North Pole	https://forummovies.org/reviews/phill_freeman/the_housewives_of_the_north_pole_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	The Forgiven	https://forummovies.org/reviews/phill_freeman/the_forgiven_2021	\N
Phill Freeman	5	That's what I call a great choice!	2022	Boon	https://forummovies.org/reviews/phill_freeman/boon_2022	\N
Phill Freeman	8	A good movie even for a Documentary	2021	Woodlands Dark and Days Bewitched: A History of Folk Horror	https://forummovies.org/reviews/phill_freeman/woodlands_dark_and_days_bewitched:_a_history_of_folk_horror_2021	\N
Phill Freeman	5	That's what I call a great choice!	2022	13: The Musical	https://forummovies.org/reviews/phill_freeman/13:_the_musical_2022	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2021	One Summer	https://forummovies.org/reviews/phill_freeman/one_summer_2021	\N
Phill Freeman	5	That's what I call a great choice!	2022	Me Time	https://forummovies.org/reviews/phill_freeman/me_time_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	The Princess	https://forummovies.org/reviews/phill_freeman/the_princess_2022	\N
Phill Freeman	7	A good Documentary	2021	The Sailor	https://forummovies.org/reviews/phill_freeman/the_sailor_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Love Classified	https://forummovies.org/reviews/phill_freeman/love_classified_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	Welcome Matt	https://forummovies.org/reviews/phill_freeman/welcome_matt_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Scooby-Doo! The Sword and the Scoob	https://forummovies.org/reviews/phill_freeman/scooby-doo!_the_sword_and_the_scoob_2021	\N
Phill Freeman	7	Too long! i got asleep	1996	Ghosts of Mississippi	https://forummovies.org/reviews/phill_freeman/ghosts_of_mississippi_1996	\N
Phill Freeman	7	Too long! i got asleep	2021	The Green Knight	https://forummovies.org/reviews/phill_freeman/the_green_knight_2021	\N
Phill Freeman	5	A good movie even for a Documentary	2021	Space Titans: Musk Bezos Branson	https://forummovies.org/reviews/phill_freeman/space_titans:_musk_bezos_branson_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Pretenders	https://forummovies.org/reviews/phill_freeman/pretenders_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	The Mystery of Her	https://forummovies.org/reviews/phill_freeman/the_mystery_of_her_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	How to Please a Woman	https://forummovies.org/reviews/phill_freeman/how_to_please_a_woman_2022	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2021	The Mauritanian	https://forummovies.org/reviews/phill_freeman/the_mauritanian_2021	\N
Phill Freeman	5	Too long! i got asleep	2022	They Live in the Grey	https://forummovies.org/reviews/phill_freeman/they_live_in_the_grey_2022	\N
Phill Freeman	7	Awesome movie! It scared the hell out of me	2022	X	https://forummovies.org/reviews/phill_freeman/x_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Payback	https://forummovies.org/reviews/phill_freeman/payback_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	Vacation Friends	https://forummovies.org/reviews/phill_freeman/vacation_friends_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	The Lost Sons	https://forummovies.org/reviews/phill_freeman/the_lost_sons_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	Block Party	https://forummovies.org/reviews/phill_freeman/block_party_2022	\N
Phill Freeman	7	That's what I call a great choice!	1997	Swept from the Sea	https://forummovies.org/reviews/phill_freeman/swept_from_the_sea_1997	\N
Phill Freeman	6	Too long! i got asleep	2021	The Story of My Wife	https://forummovies.org/reviews/phill_freeman/the_story_of_my_wife_2021	\N
Phill Freeman	6	That's what I call a great choice!	2021	One Winter Wedding	https://forummovies.org/reviews/phill_freeman/one_winter_wedding_2021	\N
Phill Freeman	5	That's what I call a great choice!	2022	Octopus Pot	https://forummovies.org/reviews/phill_freeman/octopus_pot_2022	\N
Phill Freeman	6	That's what I call a great choice!	2021	Open	https://forummovies.org/reviews/phill_freeman/open_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	Christina P.: Mom Genes	https://forummovies.org/reviews/phill_freeman/christina_p.:_mom_genes_2022	\N
Phill Freeman	7	A good movie even for a Documentary	2022	After Jackie	https://forummovies.org/reviews/phill_freeman/after_jackie_2022	\N
Phill Freeman	7	That's what I call a great choice!	2022	Rip in Time	https://forummovies.org/reviews/phill_freeman/rip_in_time_2022	\N
Phill Freeman	5	That's what I call a great choice!	2021	Superior	https://forummovies.org/reviews/phill_freeman/superior_2021	\N
Phill Freeman	5	That's what I call a great choice!	2022	Paulie Go!	https://forummovies.org/reviews/phill_freeman/paulie_go!_2022	\N
Phill Freeman	7	That's what I call a great choice!	2021	Skater Girl	https://forummovies.org/reviews/phill_freeman/skater_girl_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	Ronny Chieng: Speakeasy	https://forummovies.org/reviews/phill_freeman/ronny_chieng:_speakeasy_2022	\N
Phill Freeman	6	Too long! i got asleep	2022	The Gray Man	https://forummovies.org/reviews/phill_freeman/the_gray_man_2022	\N
Phill Freeman	6	That's what I call a great choice!	2000	Harlan County War	https://forummovies.org/reviews/phill_freeman/harlan_county_war_2000	\N
Phill Freeman	6	That's what I call a great choice!	2022	Found Wandering Lost	https://forummovies.org/reviews/phill_freeman/found_wandering_lost_2022	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	1988	Talk Radio	https://forummovies.org/reviews/phill_freeman/talk_radio_1988	\N
Phill Freeman	7	That's what I call a great choice!	1990	Alice	https://forummovies.org/reviews/phill_freeman/alice_1990	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	1991	Oscar	https://forummovies.org/reviews/phill_freeman/oscar_1991	\N
Phill Freeman	6	That's what I call a great choice!	2008	The Secret of Moonacre	https://forummovies.org/reviews/phill_freeman/the_secret_of_moonacre_2008	\N
Phill Freeman	8	A good choice to spent the Sunday evening	2012	The Avengers	https://forummovies.org/reviews/phill_freeman/the_avengers_2012	\N
Phill Freeman	6	That's what I call a great choice!	2022	Crush	https://forummovies.org/reviews/phill_freeman/crush_2022	\N
Phill Freeman	7	it is a bit far fetched but a good movie overall	2019	The Good Liar	https://forummovies.org/reviews/phill_freeman/the_good_liar_2019	\N
Phill Freeman	6	That's what I call a great choice!	2022	Movers Ultimate	https://forummovies.org/reviews/phill_freeman/movers_ultimate_2022	\N
Phill Freeman	6	That's what I call a great choice!	1999	Outside Providence	https://forummovies.org/reviews/phill_freeman/outside_providence_1999	\N
Phill Freeman	6	That's what I call a great choice!	1988	She's Having a Baby	https://forummovies.org/reviews/phill_freeman/she's_having_a_baby_1988	\N
Phill Freeman	6	That's what I call a great choice!	2004	Along Came Polly	https://forummovies.org/reviews/phill_freeman/along_came_polly_2004	\N
Phill Freeman	8	it is a bit far fetched but a good movie overall	2000	Dancer in the Dark	https://forummovies.org/reviews/phill_freeman/dancer_in_the_dark_2000	\N
Phill Freeman	7	Too long! i got asleep	1982	Annie	https://forummovies.org/reviews/phill_freeman/annie_1982	\N
Phill Freeman	5	Not bad but definitely overrated	2002	Ritual	https://forummovies.org/reviews/phill_freeman/ritual_2002	\N
Phill Freeman	6	Too long! i got asleep	2001	Pearl Harbor	https://forummovies.org/reviews/phill_freeman/pearl_harbor_2001	\N
Phill Freeman	6	That's what I call a great choice!	2021	Streamline	https://forummovies.org/reviews/phill_freeman/streamline_2021	\N
Phill Freeman	6	Too long! i got asleep	2012	Rock of Ages	https://forummovies.org/reviews/phill_freeman/rock_of_ages_2012	\N
Phill Freeman	7	That's what I call a great choice!	2021	Trollhunters: Rise of the Titans	https://forummovies.org/reviews/phill_freeman/trollhunters:_rise_of_the_titans_2021	\N
Phill Freeman	6	That's what I call a great choice!	2008	My Best Friend's Girl	https://forummovies.org/reviews/phill_freeman/my_best_friend's_girl_2008	\N
Phill Freeman	6	That's what I call a great choice!	1989	Great Balls of Fire!	https://forummovies.org/reviews/phill_freeman/great_balls_of_fire!_1989	\N
Phill Freeman	7	Yeahh! This movie is definitely a must see	2022	The Bob's Burgers Movie	https://forummovies.org/reviews/phill_freeman/the_bob's_burgers_movie_2022	\N
Phill Freeman	6	it is a bit far fetched but a good movie overall	1998	Mercury Rising	https://forummovies.org/reviews/phill_freeman/mercury_rising_1998	\N
Phill Freeman	6	A good movie even for a Documentary	2021	To Be Determined	https://forummovies.org/reviews/phill_freeman/to_be_determined_2021	\N
Phill Freeman	5	I didn't understand the dialogues cause i don't speak spanish	2021	Sounds Like Love	https://forummovies.org/reviews/phill_freeman/sounds_like_love_2021	\N
Phill Freeman	7	That's what I call a great choice!	2022	After Yang	https://forummovies.org/reviews/phill_freeman/after_yang_2022	\N
Phill Freeman	6	That's what I call a great choice!	2022	Mo Gilligan: There's Mo to Life	https://forummovies.org/reviews/phill_freeman/mo_gilligan:_there's_mo_to_life_2022	\N
Phill Freeman	7	A good movie even for a Documentary	2022	Olivia Rodrigo: driving home 2 u (a SOUR film)	https://forummovies.org/reviews/phill_freeman/olivia_rodrigo:_driving_home_2_u_(a_sour_film)_2022	\N
Phill Freeman	6	A good Documentary	2021	Rose West: Born Evil?	https://forummovies.org/reviews/phill_freeman/rose_west:_born_evil?_2021	\N
Phill Freeman	6	A good choice to spent the Sunday evening	2021	Strawberry Mansion	https://forummovies.org/reviews/phill_freeman/strawberry_mansion_2021	\N
Phill Freeman	7	A good movie even for a Documentary	2021	Truly Texas Mexican	https://forummovies.org/reviews/phill_freeman/truly_texas_mexican_2021	\N
Phill Freeman	6	That's what I call a great choice!	2022	The Man from Toronto	https://forummovies.org/reviews/phill_freeman/the_man_from_toronto_2022	\N
Phill Freeman	7	A good movie to watch with your couple	2021	Wish Dragon	https://forummovies.org/reviews/phill_freeman/wish_dragon_2021	\N
Phill Freeman	6	Too long! i got asleep	2021	Respect	https://forummovies.org/reviews/phill_freeman/respect_2021	\N
Phill Freeman	6	A good movie even for a Documentary	2022	Elizabeth Windsor	https://forummovies.org/reviews/phill_freeman/elizabeth_windsor_2022	\N
Phill Freeman	7	That's what I call a great choice!	2006	Flushed Away	https://forummovies.org/reviews/phill_freeman/flushed_away_2006	\N
Phill Freeman	6	That's what I call a great choice!	2021	One Shot	https://forummovies.org/reviews/phill_freeman/one_shot_2021	\N
\.


--
-- Data for Name: director; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.director (nombre_personal) FROM stdin;
Aamir Khan
Abdellatif Kechiche
Abel Gance
Adam Elliot
Akira Kurosawa
Alain Resnais
Alan J. Pakula
Alan Mak
Alan Parker
Alejandro Amenábar
Alejandro G. Innárritu
Alejandro González Innárritu
Alex Garland
Alex Proyas
Alexander Mackendrick
Alexander Payne
Alfonso Cuarón
Alfred Hitchcock
Andrea Arnold
Andrew Adamson
Andrew Davis
Andrew Dominik
Andrew Lau
Andrew Marton
Andrew Niccol
Andrew Stanton
Andrey Tarkovskiy
Andrey Zvyagintsev
Ang Lee
Anthony Minghella
Anthony Russo
Anton Corbijn
Anurag Basu
Anurag Kashyap
Armando Iannucci
Arthur Penn
Arthur Rosson
Asghar Farhadi
Ash Brannon
Ashutosh Gowariker
Atom Egoyan
Barry Cook
Barry Levinson
Baz Luhrmann
Ben Affleck
Benh Zeitlin
Bennett Miller
Bernardo Bertolucci
Billy Bob Thornton
Billy Wilder
Blake Edwards
Bob Clark
Bob Fosse
Bob Peterson
Bob Rafelson
Brad Bird
Brian De Palma
Brian G. Hutton
Bruce Robinson
Bryan Singer
Buster Keaton
Byron Howard
Béla Tarr
Cameron Crowe
Carl Th. Dreyer
Carl Theodor Dreyer
Carol Reed
Cecil B. de Mille
Chan-wook Park
Charles Chaplin
Charles Crichton
Charles Laughton
Charles Vidor
Charlie Chaplin
Chas. F. Reisner
Chris Buck
Chris Sanders
Chris Williams
Christopher Guest
Christopher Miller
Christopher Nolan
Claude Berri
Clint Eastwood
Clyde Bruckman
Costa-Gavras
Cristian Mungiu
Curtis Hanson
Cy Endfield
D.W. Griffith
Damien Chazelle
Damián Szifron
Dan Gilroy
Daniel Monzón
Danis Tanovic
Danny Boyle
Dario Argento
Darren Aronofsky
David Anspaugh
David Ayer
David Cronenberg
David Fincher
David Hand
David Lean
David Lynch
David Michôd
David O. Russell
David Silverman
David Yates
David Zucker
Dean DeBlois
Debra Granik
Delbert Mann
Denis Villeneuve
Dennis Hopper
Derek Cianfrance
Destin Daniel Cretton
Don Hall
Don Siegel
Donald Siegel
Doug Liman
Duncan Jones
E. Klimov
Edgar Wright
Edward Sedgwick
Edward Yang
Edward Zwick
Eli Craig
Eli Roth
Elia Kazan
Elmar Klos
Emeric Pressburger
Emir Kusturica
Eric Toledano
Erich von Stroheim
Ernst Lubitsch
Ethan Coen
F.W. Murnau
Fabian Bielinsky
Fatih Akin
Federico Fellini
Fernando Meirelles
Florian Henckel von Donnersmarck
Francis Coppola
Francis Ford Coppola
Francis Lawrence
Frank Capra
Frank Darabont
Frank Miller
Franklin J. Schaffner
François Truffaut
Fred McLeod Wilcox
Fred Neymeyer
Fred Zinnemann
Fritz Lang
Gareth Evans
Gareth Huw Evans
Gary Trousdale
Gavin O'Connor
Gene Kelly
Georg Wilhelm Pabst
George A. Romero
George Armitage
George Clooney
George Cukor
George Lucas
George Miller
George P. Cosmatos
George Roy Hill
George Seaton
George Sluizer
George Stevens
Georges Franju
Gillo Pontecorvo
Giuseppe Tornatore
Gore Verbinski
Greg Mottola
Gregg Araki
Gregory La Cava
Guillaume Canet
Guillermo del Toro
Gus Van Sant
Gus Van Sant Jr.
Guy Hamilton
Guy Ritchie
H.G. Clouzot
Hal Ashby
Harold Ramis
Hayao Miyazaki
Henri-Georges Clouzot
Henry Koster
Henry Selick
Hideo Nakata
Hirokazu Koreeda
Hiromasa Yonebayashi
Hiroshi Teshigahara
Hong-jin Na
Howard Hawks
Ingmar Bergman
Irvin Kershner
Irving Rapper
Isao Takahata
Ivan Reitman
J. Lee Thompson
J.J. Abrams
Jack Blystone
Jack Clayton
Jacques Audiard
Jacques Becker
Jacques Demy
Jacques Tati
Jacques Tourneur
James Algar
James Cameron
James Foley
James Gunn
James Ivory
James L. Brooks
James Mangold
James McTeigue
James Ponsoldt
James Whale
Jan Pinkava
Jan de Bont
Jane Campion
Jason Reitman
Jaume Balagueró
Je-gyu Kang
Jean Cocteau
Jean Renoir
Jean Vigo
Jean-Luc Godard
Jean-Marc Vallée
Jean-Pierre Dardenne
Jean-Pierre Jeunet
Jean-Pierre Melville
Jeff Nichols
Jemaine Clement
Jennifer Lee
Jeong-beom Lee
Jerome Robbins
Jim Abrahams
Jim Jarmusch
Jim Sheridan
Joe Johnston
Joe Russo
Joe Wright
Joel Coen
John Boorman
John Carney
John Carpenter
John Cassavetes
John Crowley
John Ford
John Frankenheimer
John G. Avildsen
John Hillcoat
John Hughes
John Huston
John Landis
John Lasseter
John McTiernan
John Musker
John Sayles
John Schlesinger
John Singleton
John Stevenson
John Sturges
John Woo
Jon Favreau
Jonathan Dayton
Jonathan Demme
Jonathan Frakes
Jonathan Levine
Joon Ho Bong
Joseph L. Mankiewicz
Joseph Sargent
Joss Whedon
José Padilha
Juan José Campanella
Jules Dassin
Julian Schnabel
Ján Kadár
Kaige Chen
Kar Wai Wong
Karan Johar
Kathryn Bigelow
Katsuhiro Ôtomo
Ken Annakin
Ken Loach
Kenji Mizoguchi
Kenneth Branagh
Kenneth Loach
Kenneth Lonergan
Kevin Costner
Kevin Macdonald
Kevin Smith
Ki-duk Kim
Kim Jee-woon
Kimberly Peirce
King Vidor
Kinji Fukasaku
Kirk Wise
Krzysztof Kieslowski
Kátia Lund
Larry Charles
Lars Von Trier
Lasse Hallström
Laurent Cantet
Lee Daniels
Lee Tamahori
Lee Unkrich
Leo McCarey
Lewis Milestone
Lindsay Anderson
Louis Malle
Loveleen Tandan
Luc Besson
Luc Dardenne
Luchino Visconti
Luis Bunuel
Luis Bunnuel
Lukas Moodysson
M. Night Shyamalan
Majid Majidi
Mamoru Hosoda
Mamoru Oshii
Marc Caro
Marc Forster
Marc Webb
Marcel Carné
Marco Tullio Giordana
Marjane Satrapi
Mark Osborne
Mark Sandrich
Martin Brest
Martin Campbell
Martin McDonagh
Martin Scorsese
Masaki Kobayashi
Mathieu Kassovitz
Matt Reeves
Matthew Vaughn
Max Ophüls
Max Opuls
Mel Brooks
Mel Gibson
Mel Stuart
Mervyn LeRoy
Michael Cimino
Michael Curtiz
Michael Haneke
Michael Lehmann
Michael Mann
Michael Powell
Michel Gondry
Michel Hazanavicius
Michelangelo Antonioni
Mike Figgis
Mike Judge
Mike Leigh
Mike Newell
Mike Nichols
Mikhail Kalatozov
Milos Forman
Morten Tyldum
Nathan Greno
Neil Jordan
Neill Blomkamp
Nicholas Meyer
Nicholas Ray
Nick Park
Nicolas Roeg
Nicolas Winding Refn
Niels Arden Oplev
Noah Baumbach
Norman Ferguson
Norman Jewison
Nuri Bilge Ceylan
Oliver Hirschbiegel
Oliver Stone
Olivier Nakache
Orson Welles
Otto Preminger
Paco Plaza
Paolo Sorrentino
Park Chan Wook
Paul Greengrass
Paul Thomas Anderson
Paul Verhoeven
Pawel Pawlikowski
Pedro Almodóvar
Penny Marshall
Pete Docter
Peter Bogdanovich
Peter Greenaway
Peter Jackson
Peter Weir
Peter Yates
Phil Alden Robinson
Phil Lord
Philip Kaufman
Preston Sturges
Quentin Tarantino
Rainer Werner Fassbinder
Rajkumar Hirani
Rakesh Omprakash Mehra
Raoul Walsh
René Clément
Rian Johnson
Rich Moore
Richard Attenborough
Richard Ayoade
Richard Brooks
Richard Donner
Richard Eyre
Richard Kelly
Richard Lester
Richard Linklater
Richard Marquand
Richard Rosson
Ridley Scott
Rob Marshall
Rob Minkoff
Rob Reiner
Robert Aldrich
Robert Altman
Robert Benton
Robert Bresson
Robert Clouse
Robert De Niro
Robert Hamer
Robert Mulligan
Robert Pulcini
Robert Redford
Robert Rodriguez
Robert Rossen
Robert Siodmak
Robert Stevenson
Robert Wiene
Robert Wise
Robert Zemeckis
Roberto Benigni
Roberto Rossellini
Robin Hardy
Roger Allers
Roger Donaldson
Roland Joffé
Roman Polanski
Ron Clements
Ron Howard
Ronnie Del Carmen
Ronny Yu
Ruben Fleischer
Rupert Wyatt
Ryan Coogler
Ryan Fleck
S.M. Eisenstein
Sam Armstrong
Sam Mendes
Sam Peckinpah
Sam Raimi
Sam Taylor
Sam Wood
Satoshi Kon
Satyajit Ray
Scott Hicks
Sean Penn
Sergei Eisenstein
Sergio Leone
Shane Black
Shane Meadows
Shari Springer Berman
Shekhar Kapur
Shimit Amin
Sidney Lumet
Sofia Coppola
Spike Jonze
Spike Lee
Stanley Donen
Stanley Kramer
Stanley Kubrick
Stefan Ruzowitzky
Stephen Chbosky
Stephen Chow
Stephen Daldry
Stephen Frears
Steve Box
Steve McQueen
Steven Soderbergh
Steven Spielberg
Stuart Gordon
Stuart Rosenberg
Sydney Pollack
Sylvain Chomet
T. Hee
Taika Waititi
Takashi Miike
Takeshi Kitano
Tate Taylor
Taylor Hackford
Ted Kotcheff
Terence Young
Terrence Malick
Terry George
Terry Gilliam
Terry Jones
Terry Zwigoff
The Hughes Brothers
The Wachowski Brothers
Thomas Vinterberg
Tim Burton
Tim Robbins
Tobe Hooper
Tod Browning
Todd Field
Todd Haynes
Todd Solondz
Tom Ford
Tom Hooper
Tom McCarthy
Tom Tykwer
Tomas Alfredson
Tony Bancroft
Tony Kaye
Tony Scott
Trey Parker
Valerie Faris
Vicky Jenson
Victor Fleming
Victor Sjöström
Vincent Paronnaud
Vincente Minnelli
Vishal Bhardwaj
Vittorio De Sica
Víctor Erice
W.S. Van Dyke
Walter Hill
Walter Salles
Werner Herzog
Wes Anderson
Wes Craven
William A. Wellman
William Cottrell
William Friedkin
William Keighley
William Wyler
Wilson Yip
Wim Wenders
Wolfgang Becker
Wolfgang Petersen
Wolfgang Reitherman
Woody Allen
Xavier Dolan
Yash Chopra
Yasujirô Ozu
Yimou Zhang
Yôji Yamada
Yôjirô Takita
Zach Braff
Ágnes Hranitzky
\.


--
-- Data for Name: generos; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.generos (genero, anno_peliculas, titulo_peliculas) FROM stdin;
Comedy	2017	The Boss Baby
Thriller	2022	Deep Water
History	2021	The Tragedy of Macbeth
Comedy	2022	The Sixth Secret
Romance	2022	Alone Together
Romance	2021	The Baker's Son
Comedy	2022	Hello Goodbye and Everything in Between
Action	2021	Our Lady of San Juan Four Centuries of Miracles
Thriller	2022	Curse of the Macbeths
Action	2022	We Met in Virtual Reality
Action	2021	Things Don't Stay Fixed
War	2021	Operation Mincemeat
Adventure	2012	Rise of the Guardians
Romance	2022	Press Play
Comedy	2022	I Challenger
Documentary	2021	Own the Room
Documentary	2021	The Lost Sons
Music	1980	Times Square
Crime	2022	Take the Night
Action	2022	The Good Neighbor
Action	2021	The Forever Purge
Crime	2021	The Good Father: The Martin MacNeill Story
Action	2003	Dogville
Horror	2021	Spiral
Adventure	2022	The Journey Ahead
Drama	2021	The Legend of Molly Johnson
Drama	2021	Those Who Wish Me Dead
Action	2022	Crimes of the Future
History	2022	American Experience Plague at the Golden Gate
Animation	2022	DC League of Super-Pets
Drama	2018	The Man Who Killed Don Quixote
Action	2022	The Finellis Movie
Action	1988	She's Having a Baby
Action	2021	The Story of Film: A New Generation
Horror	2021	Strings
Comedy	2022	Just One Kiss
Crime	2022	Boon
Comedy	2021	The Housewives of the North Pole
Action	2021	The Day Sports Stood Still
Romance	2021	The Holiday Fix Up
Romance	2021	UnPerfect Christmas Wish
Comedy	2022	Not Okay
Action	2022	Christina P.: Mom Genes
Romance	2012	Rock of Ages
Drama	2021	True Things
Action	2014	The Hobbit: The Battle of the Five Armies
Action	2022	Morbius
Biography	1995	Restoration
Action	2001	The Lord of the Rings: The Fellowship of the Ring
History	2021	The Price of Freedom
Documentary	2021	Persona: The Dark Truth Behind Personality Tests
Adventure	2000	Thomas and the Magic Railroad
Action	2022	Master
Fantasy	2001	Final Fantasy: The Spirits Within
Action	2022	Downfall: The Case Against Boeing
Romance	2022	Hidden Gems
Documentary	2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn
Fantasy	2021	Spider-Man: No Way Home
Adventure	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Horror	2022	Orphan: First Kill
Action	2022	Fittest on Earth: Next Gen
Action	2021	The Man Who Fell from the Sky
Action	2022	Thirteen Lives
Crime	2021	The White Tiger
Drama	2022	Moon Manor
Drama	2021	Silent Night
Comedy	2021	Plan B
Action	2021	Swan Song
Documentary	2022	Machine Gun Kelly's Life in Pink
Action	1988	Married to the Mob
Music	2022	South Park: The 25th Anniversary Concert
Action	2021	Sweetheart
Action	2015	Avengers: Age of Ultron
Action	2022	GoldenEra
Drama	1983	The Ploughman's Lunch
Documentary	2021	The Legend of the Underground
Drama	2021	The Tomorrow War
Comedy	1982	Annie
Sport	2021	The Survivor
Drama	2022	The Batman
Music	2022	Sheryl
Drama	2021	The Unholy
Documentary	2021	The Jesus Music
Comedy	2021	Tollbooth
Action	2021	The Voyeurs
Action	2021	Who Killed the KLF?
Action	2022	Infinite Storm
War	2021	This Is Not a War Story
Action	2015	Andron
Action	2022	Paulie Go!
Mystery	2022	Nope
Action	2021	Truly Texas Mexican
Action	2021	The Forgiven
Documentary	2021	Romeo Santos: King of Bachata
Thriller	2021	Stillwater
Drama	2021	Operation Mincemeat
Comedy	2022	David A. Arnold: It Ain't for the Weak
Drama	2021	Queen Bees
Action	2021	What?
Fantasy	2021	The Baker's Son
Comedy	2008	Mamma Mia!
Reality-TV	2022	Jackass Shark Week 2.0
Action	2022	Halftime
Horror	2021	Silent Night
Family	2021	Yes Day
Action	2019	The Good Liar
Crime	2003	Dogville
Action	2004	Kinsey
Comedy	2021	The Baker's Son
Documentary	2021	The Man Who Fell from the Sky
Action	2022	Los Tigres Del Norte: Stories to Tell
Thriller	2022	The Ledge
Comedy	2022	South Park: The 25th Anniversary Concert
Crime	2021	Snake Eyes
Comedy	2022	Sonic the Hedgehog 2
Horror	2022	Master
Thriller	1990	The Hunt for Red October
Action	2021	Oslo
Action	2022	Paws of Fury: The Legend of Hank
Fantasy	2022	The Sea Beast
Comedy	2022	Honor Society
Sport	2022	Rise
Biography	2021	Steve McQueen: The Lost Movie
Music	2021	Romeo Santos: King of Bachata
Sci-Fi	2021	Zack Snyder's Justice League
Thriller	2021	The King's Man
Fantasy	2021	The Map of Tiny Perfect Things
Action	2022	Emergency
Action	1983	The Ploughman's Lunch
Action	2022	Windfall
Comedy	2021	Sunday Mornings
Romance	2022	Hello Goodbye and Everything in Between
Drama	2022	Silverton Siege
Biography	2021	Ted K
Action	2021	You Me & the Christmas Trees
Family	2006	Flushed Away
Action	2022	Heart of the Matter
Comedy	2022	Stroke of Luck
Drama	2022	Feeling Butterflies
Drama	2006	The Departed
Action	2019	Motherless Brooklyn
Romance	2021	The Last Letter from Your Lover
Drama	2021	Together Together
History	2022	Chernobyl: The Lost Tapes
Drama	2021	Wild Game
Thriller	2022	Burn
Action	2021	Overrun
Crime	2021	Road to Damascus
Mystery	2021	The Demented
Adventure	2014	In Order of Disappearance
Western	2022	Tom and Jerry: Cowboy Up!
Fantasy	2021	Outside the Wire
Action	2022	Tony Hawk: Until the Wheels Fall Off
Fantasy	2021	PAW Patrol: The Movie
Sport	2022	Terry Bradshaw: Going Deep
Sport	2021	The Jump
Comedy	2021	This Is the Night
Romance	2003	The Cooler
Documentary	2021	Puff: Wonders of the Reef
Action	2022	Donkeyhead
Animation	2021	Wish Dragon
Romance	2022	Fire Island
Drama	2022	Ray Donovan: The Movie
Mystery	2022	King Tweety
Action	2021	The Hating Game
Action	2022	The Irish Connection
Biography	2022	Rescued by Ruby
Documentary	2021	The Wisdom of Trauma
Action	2021	To Olivia
Comedy	2022	DC League of Super-Pets
Crime	2022	The Photographer: Murder in Pinamar
Western	2021	Spirit Untamed
Adventure	2022	Jurassic World Dominion
Drama	2021	Passing
Thriller	2021	The Sacred Spirit
Action	2021	Parallel Mothers
Mystery	1997	Swept from the Sea
Fantasy	2021	The Cursed
Drama	2022	The In Between
Action	2021	The Little Things
Documentary	2021	Woodlands Dark and Days Bewitched: A History of Folk Horror
Drama	2000	Thomas and the Magic Railroad
Drama	2019	The Good Liar
Action	2021	Walk With Me
Action	2021	Trees of Peace
Comedy	2021	She Will
Action	2021	The Devil's Ring
Drama	2021	The Princess Switch 3
Drama	1978	The Shout
Action	2001	Final Fantasy: The Spirits Within
Western	2022	Murder at Yellowstone City
Action	2022	Hollywood Stargirl
Action	2021	Streamline
Crime	2021	Why Did You Kill Me?
Music	2022	Purple Hearts
Romance	2022	Sweet as Pie
Thriller	2021	The Righteous
Documentary	2021	The Unwonted Sasquatch - Director's Cut
Comedy	2018	BlacKkKlansman
Romance	2021	To All the Boys: Always and Forever
Comedy	2001	Scary Movie 2
Drama	2021	The Influencer
Action	2022	2000 Mules
Drama	2006	Running with Scissors
Documentary	2021	Patrice O'Neal: Killing Is Easy
Action	2021	The Storms of Jeremy Thomas
Documentary	2021	Try Harder!
Action	2021	Silk Road
Documentary	2022	Biffy Clyro: Cultural Sons of Scotland
Drama	2022	Super Turnt
Action	2022	VALLDAURA: A Quarantine Cabin
Drama	2019	Before You Know It
Comedy	2022	Day Shift
Romance	2021	The Map of Tiny Perfect Things
Comedy	2022	Catherine Cohen: The Twist...? She's Gorgeous
Sci-Fi	2014	X-Men: Days of Future Past
Drama	2021	Sometime Other Than Now
Thriller	2002	Insomnia
Adventure	2022	Luck
Romance	2022	I Do (But I Don't)
Comedy	2022	Mo Gilligan: There's Mo to Life
Comedy	2022	Crush
Action	2022	Secret Headquarters
Drama	2021	Wicked
Horror	2021	The Conjuring: The Devil Made Me Do It
Thriller	2021	Snake Eyes
Documentary	2021	Too Soon: Comedy After 9/11
Action	2013	The Hobbit: The Desolation of Smaug
Family	2022	Groundswell
Fantasy	2022	Men
Family	2021	The Ogglies
Comedy	2021	The Red Star
Action	2020	Beast Beast
Fantasy	2018	The Man Who Killed Don Quixote
Drama	2021	Our Lady of San Juan Four Centuries of Miracles
Action	2021	What Drives Us
Thriller	2021	Pig
Drama	2022	Family Squares
Documentary	2022	The Day the Music Died/American Pie
Documentary	2021	Otra forma de entender la vida
Fantasy	2022	The Northman
Drama	2021	The Chronicle Mysteries Helped to Death
Documentary	2021	The Phantom
Sci-Fi	2022	Dual
Drama	2021	The Nine Kittens of Christmas
Documentary	2022	Kick Like Tayla
Action	2021	Taking the Fall
Thriller	2022	Torn Hearts
Comedy	2021	Trippin' with the Kandasamys
Sport	2021	Resurgence
Action	2021	Willy's Wonderland
Documentary	2022	Joel Kim Booster: Psychosexual
Romance	2022	Love Classified
Adventure	2021	Stowaway
Action	2022	Pride Jewel
Action	2022	Fresh
Action	2022	Redeeming Love
Action	2021	Romeo Santos: King of Bachata
Drama	2022	Single Black Female
Action	2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist
Drama	2021	One Winter Wedding
Documentary	2021	The Last Mountain
Drama	2021	Shoplifters of the World
Horror	2021	The Cursed
Sport	2022	Rooney
Crime	2021	The Woman in the Window
Documentary	2021	Truly Texas Mexican
Musical	2021	Sunday Mornings
Action	2021	Reach for the Rings
Action	2022	Father of the Bride
Action	2021	Two Cents from a Pariah
Romance	2022	Planning on Forever
Animation	2022	Paws of Fury: The Legend of Hank
Family	2021	Where the Land Meets the Sky
Drama	2004	Kinsey
Action	2021	The Guilty
Horror	2021	The Passenger
Animation	2022	Chickenhare and the Hamster of Darkness
Thriller	1998	Ronin
Family	2022	Jessie and the Elf Boy
Action	2022	Press Play
Adventure	2013	The Wolverine
Horror	2021	The Girl Who Got Away
Action	2021	The Christmas Promise
Mystery	2021	The Power
Romance	2021	Snowkissed
Sci-Fi	2022	Lightyear
Drama	2021	Parallel Mothers
Comedy	2022	Mrs Harris Goes to Paris
Comedy	2021	The Matchmaker
Drama	2022	Flux Gourmet
Comedy	2021	The Boss Baby: Family Business
Comedy	2022	Norm Macdonald: Nothing Special
Thriller	2021	The House of Snails
Mystery	2022	Last Seen Alive
Thriller	2021	Road to Damascus
Action	2008	My Best Friend's Girl
Action	2022	Finding Carlos
Drama	2022	Good Luck to You Leo Grande
Documentary	2022	Icahn: The Restless Billionaire
Adventure	2021	The Witcher: Nightmare of the Wolf
Comedy	2000	Thomas and the Magic Railroad
Biography	1997	Amistad
Horror	2022	Glorious
Action	2021	Resurgence
Family	2003	The Cat in the Hat
Drama	2022	Persuasion
Drama	1980	Times Square
Romance	2021	Secretly Santa
Comedy	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Drama	2021	Trust
Romance	2021	The Maltese Holiday
Action	2022	Crush
Documentary	2022	Jazz Fest: A New Orleans Story
Biography	2004	The Aviator
Drama	2022	The House
Documentary	2022	Tony Hawk: Until the Wheels Fall Off
Action	2021	The One You're With
Family	2022	Road Trip Romance
Fantasy	2014	The Hobbit: The Battle of the Five Armies
Crime	2021	Untold: Crimes and Penalties
Family	2015	Cinderella
Thriller	2020	Pixie
Thriller	2022	Exposure 36
Documentary	2022	Ranveer vs. Wild with Bear Grylls
Fantasy	2012	The Hobbit: An Unexpected Journey
Documentary	2021	Shock Docs Amityville Horror House
Action	2021	The Rise of the Anti-Vaxx Movement
Thriller	2006	The Da Vinci Code
Documentary	2021	Sonsational
Fantasy	2021	The Addams Family 2
Action	1991	Oscar
Action	2022	Jessie and the Elf Boy
Drama	2022	Kimi
Drama	2022	The Lost
Animation	2021	Trollhunters: Rise of the Titans
Drama	2022	Cha Cha Real Smooth
Documentary	2021	The Jump
Action	2022	Caught in His Web
Action	2021	Schumacher
Family	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Comedy	2022	The Adam Project
Action	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Fantasy	2022	Luck
Action	2021	Snakehead
Music	2021	Twyla Moves
Fantasy	2021	Zoey's Extraordinary Christmas
Comedy	2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor
Drama	2021	What She Said
Action	2021	Who We Are: A Chronicle of Racism in America
Drama	2022	Game Set Love
Action	2022	Clowning
Romance	2015	Aloha
Comedy	2022	Lucy and Desi
Family	1993	The Three Musketeers
Action	2021	The Baker's Son
Comedy	2021	Peter Rabbit 2: The Runaway
Fantasy	1993	Last Action Hero
Comedy	2021	The Wedding Trip
Family	2022	Turning Red
Drama	2021	The Judge of Harbor County
Action	2021	South Park: Post Covid - The Return of Covid
Action	2022	Gabriel's Rapture: Part Two
Comedy	2021	Psych 3: This Is Gus
Crime	2019	Crown Vic
Drama	2021	The Green Knight
Sci-Fi	2021	Stowaway
Drama	2021	Taking the Fall
Action	2021	The Unforgivable
Drama	1985	Plenty
Animation	2012	Rise of the Guardians
Romance	2021	Sold Out
Comedy	2021	You Keep the Kids
Action	2021	Right in Front of Me
Horror	2021	The Deep House
Documentary	2021	Show Me the Father
Comedy	2000	State and Main
Action	2022	County Line: All In
Action	2021	The Unwonted Sasquatch - Director's Cut
Drama	2022	The Weekend Away
Sci-Fi	2021	Swan Song
Comedy	2022	Jerry and Marge Go Large
Documentary	2022	A Tear in the Sky
Music	2021	Rock Dog 2: Rock Around the Park
Drama	2022	Mrs Harris Goes to Paris
Mystery	2022	Scream
Action	2021	This Is Francis X. Bushman
Action	2022	Girl in the Picture
Drama	2021	Where the Land Meets the Sky
Action	2021	Pick A Side
Comedy	1993	Loaded Weapon 1
Action	1998	Gods and Monsters
Drama	2021	Our Dream Wedding
Action	1992	Home Alone 2: Lost in New York
Drama	2022	God's Waiting Room
Comedy	2022	Father of the Bride
Action	1993	Malice
Crime	2000	Dancer in the Dark
Action	2022	The 28th Annual Screen Actors Guild Awards
Action	2016	Paris Can Wait
Drama	2022	Through My Window
Drama	2021	Robin Roberts Presents: Mahalia
Action	2021	Two Yellow Lines
Drama	2022	Rescued by Ruby
Action	2021	The Spine of Night
Comedy	2021	Take Me to Tarzana
Drama	2021	The Survivor
Action	2022	Burden
Fantasy	2021	Scooby-Doo! The Sword and the Scoob
Thriller	2022	Found Wandering Lost
Action	2022	Presence of Love
Documentary	2021	The Act of Reading
Music	2012	To Rome with Love
Comedy	1992	Prelude to a Kiss
Thriller	2021	Snakehead
Drama	2021	The Power of the Dog
Western	2022	Terror on the Prairie
Thriller	2021	Wired Shut
Adventure	2022	The Highwayman
Drama	2021	Torn from Her Arms
Comedy	2021	Playing Cupid
Drama	2022	Mr. Malcolm's List
Comedy	2021	Welcome Matt
Adventure	2021	Zack Snyder's Justice League
Action	2015	Mr. Holmes
Romance	2021	Symphoria
Action	2022	Cypress Hill: Insane in the Brain
Action	2021	Without Remorse
Crime	2021	The Pharm
Romance	2021	The Eyes of Tammy Faye
Comedy	2022	The Lost City
Comedy	2022	Swap Me Baby
Action	2022	Bill Maher: #Adulting
Comedy	2021	The Mitchells vs the Machines
Action	2022	The Gray Man
Thriller	2021	The Vault
Sport	2021	The United Way
Action	2021	Taking a Shot at Love
Drama	2000	Dancer in the Dark
Fantasy	2022	The Princess
Documentary	2021	The Man Putin Couldn't Kill
Action	2021	The Santa Stakeout
Music	2022	Freedom Uncut
Animation	2017	The Boss Baby
Documentary	2022	Fittest on Earth: Next Gen
Crime	2021	Rattle-Can
Comedy	2021	Tango Shalom
Drama	2022	Rogue Agent
Action	2021	Our Christmas Journey
Mystery	2005	Neverwas
Drama	2022	Torn Hearts
Action	2021	The Price of Freedom
Action	2021	This Is the Night
Action	2021	The Swim
Action	2013	Blue Jasmine
Action	2021	The Christmas Pitch
Mystery	2022	American Carnage
Action	2021	The Manor
Action	2021	Zoey's Extraordinary Christmas
Action	2007	Stardust
Fantasy	2021	Rumble
Action	2021	Outside the Wire
Action	2022	No Woman No Try
Adventure	2021	The Spine of Night
Action	2021	The Last Thing Mary Saw
Drama	2022	Don't Make Me Go
Action	2021	Untold: Caitlyn Jenner
Documentary	2022	American Experience Plague at the Golden Gate
Thriller	2022	City of Vultures 3
Comedy	2021	Zebra Girl
Drama	2021	The Green Sea
Thriller	2021	Trust
Animation	2022	The Sea Beast
Action	2021	One of Ours
Family	2021	The Boss Baby: Family Business
Action	2021	The Influencer
Family	2012	Rise of the Guardians
Thriller	2022	Wifelike
Mystery	2021	The Unholy
Comedy	1990	Alice
Musical	2022	Hollywood Stargirl
Horror	2021	Resident Evil: Welcome to Raccoon City
Comedy	2021	Phil Wang: Philly Philly Wang Wang
Fantasy	2021	The Resonator: Miskatonic U
Action	2022	The Sixth Secret
Drama	2022	The Issue with Elvis
Crime	2022	Bank Robbers: The Last Great Heist
Animation	2022	Lightyear
Comedy	2022	Love & Gelato
Music	2022	Look at Me: XXXTentacion
Action	1993	Six Degrees of Separation
Documentary	2021	Storm Lake
Romance	2022	Z-O-M-B-I-E-S 3
Action	1996	Heaven's Prisoners
Adventure	1992	Home Alone 2: Lost in New York
Action	2022	This Is Joan Collins
Horror	2021	She Will
Adventure	2006	X-Men: The Last Stand
Crime	2022	The Tinder Swindler
Action	2014	Still Alice
Documentary	2022	Polar Bear
Documentary	2022	Spring Awakening: Those You've Known
Documentary	2021	President
Mystery	2021	The Conjuring: The Devil Made Me Do It
Horror	2022	Nope
Action	2022	Doctor Strange in the Multiverse of Madness
Adventure	2022	Secret Headquarters
Family	2021	The Mitchells vs the Machines
Drama	2021	Sweet Pecan Summer
Documentary	2022	Jackass Shark Week 2.0
Adventure	2021	The Vault
Documentary	2022	More Than Robots
Romance	2021	Toying with the Holidays
Action	2022	Snoop Dogg's F*Cn Around Comedy Special
Adventure	2021	Rumble
Action	2021	Street Gang: How We Got to Sesame Street
Horror	2021	The Exorcism of God
Romance	2022	My Fake Boyfriend
Comedy	2021	The Beta Test
Comedy	2022	Christmas in Toyland
Thriller	2021	Wild Indian
Adventure	1994	The Shadow
Comedy	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Comedy	2022	Jackass 4.5
History	2006	The Good Shepherd
Drama	2022	Windfall
Action	2021	President
Comedy	2015	Aloha
Action	2022	The Weekend Away
Action	2021	Spiral
Action	2021	Robin Roberts Presents: Mahalia
Thriller	2019	The Good Liar
Action	2021	Potato Dreams of America
Romance	2022	Romance to the Rescue
Action	2022	Tyson's Run
Crime	2002	No Good Deed
Romance	2022	Road Trip Romance
Drama	2022	Lotawana
Comedy	2022	Salesmen
Biography	2021	The Eyes of Tammy Faye
Drama	2021	Reefa
Action	2021	The Rise and Fall of LuLaRoe
Action	2021	Paul Dood's Deadly Lunch Break
Drama	2021	The House of Flowers: The Movie
Thriller	1990	Miami Blues
Action	2021	Sugar Plum Twist
Action	2021	The Girl Who Believes in Miracles
Mystery	2021	Private Network: Who Killed Manuel Buendía?
Action	2021	The House of Flowers: The Movie
Comedy	2021	Silent Night
Musical	2021	The Loud House Movie
Music	2021	This is Gwar
Animation	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Comedy	2022	Love on Fire
Adventure	2022	The Man from Toronto
Biography	2022	Terry Bradshaw: Going Deep
Music	2022	Biffy Clyro: Cultural Sons of Scotland
Mystery	2022	Deep Water
Family	2022	Z-O-M-B-I-E-S 3
Drama	2021	Tina and Lori
Documentary	2022	Radford Returns
Mystery	2022	The Lost
Thriller	2022	The Wrath of God
Thriller	2021	SAS: Red Notice
Family	2022	Secret Headquarters
Thriller	2022	Vanished: Searching for My Sister
Adventure	2021	Venom: Let There Be Carnage
Documentary	2021	Shatner in Space
Comedy	2012	Rise of the Guardians
Action	2021	Rebel Hearts
Fantasy	2021	Riverdance: The Animated Adventure
Horror	2021	Red Snow
Action	2022	I Love My Dad
Comedy	2022	The House
Action	2021	Psych 3: This Is Gus
Drama	2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist
Drama	2021	Red Rocket
Action	2022	Murder at Yellowstone City
Family	2022	Presence of Love
Drama	2021	The United States vs. Billie Holiday
Action	2021	The Cabin
Horror	2022	Fresh
Action	2020	Pixie
Action	2022	Dancing on Glass
Action	2022	Stroke of Luck
Drama	2021	Welcome Matt
Action	2021	Sunday Mornings
Drama	2022	Caught in His Web
Action	1995	Two Bits
Documentary	2022	David Spade: Nothing Personal
Biography	2022	Navalny
Comedy	2021	PAW Patrol: The Movie
Thriller	2021	Things Heard & Seen
Documentary	2021	Workhorse Queen
Drama	2022	Look Both Ways
Action	2022	Elizabeth Windsor
Drama	2022	Line Sisters
Biography	2021	Poly Styrene: I Am a Cliché
Comedy	2022	Book of Love
Comedy	2022	Aloha with Love
Sport	2022	Hustle
Crime	2021	Tollbooth
Action	2021	The Legend of the Underground
Thriller	2021	The Novice
Action	2021	Romeo & Juliet
Comedy	2022	Home Team
Crime	2021	The Slow Hustle
Documentary	2022	Diamond Hands: The Legend of WallStreetBets
Comedy	2022	Jane Fonda & Lily Tomlin: Ladies Night Live
Horror	2021	V/H/S/94
Comedy	2022	Rip in Time
Action	2013	Seduced and Abandoned
Drama	2021	The Guilty
Crime	2022	Centaur
Action	1996	The Juror
Action	2022	Trevor: The Musical
Action	2022	Men
Action	2016	The Promise
Action	2022	Lucy and Desi
Action	1993	Loaded Weapon 1
Action	2021	The Deep House
Crime	2021	The Protégé
Romance	2022	Mr. Malcolm's List
Adventure	2021	Vivo
Crime	2021	Snakehead
Drama	1998	Mercury Rising
Comedy	2022	Cristela Alonzo: Middle Classy
Romance	2021	The Land of Owls
Fantasy	2022	Fantastic Beasts: The Secrets of Dumbledore
Crime	2022	Burn
Music	2021	The Beatles and India
Drama	2021	Payback
Comedy	2021	The Space Between
Action	2021	Sounds Like Love
Action	2021	The Forever Prisoner
Adventure	2022	Chip 'n Dale: Rescue Rangers
Sci-Fi	2022	Slash/Back
Documentary	2022	The Mystery of Marilyn Monroe: The Unheard Tapes
Action	2022	Ambulance
Action	2022	Better Nate Than Ever
Documentary	2021	Resurgence
Drama	1996	Breaking the Waves
Fantasy	2022	The Monkey King: The Legend Begins
Romance	2022	Harmony from the Heart
Drama	2022	Along for the Ride
Documentary	2021	Procession
Documentary	2022	The Only
Action	2021	Infinitum: Subject Unknown
Mystery	2021	Seven Deadly Sins: Lust
Horror	2021	What Josiah Saw
Action	2021	South Beach Love
Romance	2008	Mamma Mia!
Biography	2022	How Did We Get Here?
Drama	2021	When Today Ends
Horror	1978	The Shout
Adventure	2022	Lightyear
Adventure	1993	Last Action Hero
Action	2022	City of Vultures 3
Romance	2021	Sweet Pecan Summer
Documentary	2022	And Just Like That... The Documentary
Music	2021	The Sparks Brothers
Action	2021	The First Wave
Thriller	2021	Tollbooth
Action	2021	The Ogglies
Reality-TV	2022	The 75th Annual Tony Awards
Action	2002	No Good Deed
Animation	2021	Tom and Jerry
Comedy	2022	Paws of Fury: The Legend of Hank
Thriller	2022	Fresh
Documentary	2022	We Met in Virtual Reality
Music	2021	Poly Styrene: I Am a Cliché
Action	2021	The Housewife and the Hustler
Action	2022	Picabo
Comedy	2021	Trollhunters: Rise of the Titans
Drama	2022	Tyler Perry's A Madea Homecoming
Romance	2008	The Secret of Moonacre
Drama	2022	The Journey Ahead
Action	2020	Chick Fight
Action	2021	Things Heard & Seen
Thriller	2022	The Outfit
Thriller	2022	Gone in the Night
Action	2022	Leave No Trace
Animation	2021	Ron's Gone Wrong
Drama	1994	The Getaway
Mystery	2021	Repeat
Comedy	2022	Tankhouse
Musical	2000	Dancer in the Dark
Sci-Fi	2012	Rise of the Guardians
Romance	2021	The French Dispatch
Romance	2022	Nude Tuesday
Biography	2021	Rose West: Born Evil?
Drama	2022	Her Private Hell
Crime	1992	Glengarry Glen Ross
Comedy	2022	Love Classified
Action	2022	Joel Kim Booster: Psychosexual
Drama	2021	Rumba Love
Documentary	2021	Torn
Action	2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor
Crime	2014	In Order of Disappearance
Music	2022	Jazz Fest: A New Orleans Story
Comedy	2021	Super Hot
Comedy	2021	Spirit Untamed
Romance	2022	Aloha with Love
Fantasy	2006	Pirates of the Caribbean: Dead Man's Chest
Comedy	2022	Secret Headquarters
Comedy	1997	McHale's Navy
Comedy	2006	Running with Scissors
Sci-Fi	2021	Voyagers
Action	2021	Storm Lake
Action	2022	Brut Force
Action	2022	A Perfect Pairing
Drama	2003	Dogville
Documentary	2021	Playing with Sharks: The Valerie Taylor Story
Drama	2021	The Tender Bar
Documentary	2022	The Figo Affair: The Transfer that Changed Football
Drama	2022	North to Home
Mystery	2022	No Exit
Drama	2021	The Cleaner
Documentary	2021	The Day Sports Stood Still
Crime	2021	The Wimbledon Kidnapping
Comedy	2021	Sing 2
Mystery	1994	The Shadow
Thriller	2021	The Power
Horror	2022	The Twin
Romance	2022	Clowning
Reality-TV	2022	The 49th Annual Daytime Emmy Awards
Action	2021	You're Watching Video Music Box
Action	2022	Step Into... The Movies
Drama	2021	The War Below
Action	2021	The Conjuring: The Devil Made Me Do It
Action	2021	Toying with the Holidays
Action	1982	The Simple-Minded Murderer
Action	2022	Floodlights
Sci-Fi	2021	Spider-Man: No Way Home
Sport	2021	Otra forma de entender la vida
Adventure	2012	The Hobbit: An Unexpected Journey
Documentary	2022	Gamestop: Rise of the Players
Documentary	2021	Who We Are: A Chronicle of Racism in America
Drama	2021	Show Me the Father
Action	2021	Secret Santa
Drama	2021	The Forgiven
Drama	2021	The Dig
Animation	2021	The Boss Baby: Family Business
Thriller	2022	Losing Addison
Adventure	2019	Crown Vic
Comedy	2021	The Grand Duke of Corsica
Action	2021	Terry Venables: A Man Can Dream
Action	2021	Rise Again: Tulsa and the Red Summer
Thriller	2022	Kimi
Action	2021	The Souvenir: Part II
Action	2022	X
Action	2021	Pretenders
Documentary	2022	Holy Heist
Mystery	2021	To Catch a Spy
Family	2022	The Perfect Pairing
Action	2005	Elizabethtown
Action	2021	The Last Letter from Your Lover
Action	2021	The Race to Save the World
Thriller	2021	The Virtuoso
Action	2021	Paranormal Activity: Next of Kin
Sci-Fi	2022	Spiderhead
Drama	2011	Hick
Fantasy	2021	Xtreme
Drama	2021	Women Is Losers
Action	2021	The Healing Garden
Drama	2002	Insomnia
Drama	2021	Symphoria
Mystery	2021	Paranormal Activity: Next of Kin
Romance	2022	Crush
Animation	2022	The House
Thriller	2022	Nope
Comedy	2022	Chickenhare and the Hamster of Darkness
Thriller	2022	Day Shift
Drama	2021	Rise and Shine Benedict Stone
Action	2022	The Photographer: Murder in Pinamar
Drama	2021	The Mauritanian
Fantasy	2021	Tom and Jerry
Family	2022	A Tail of Love
Drama	2022	Senior Year
Romance	2021	Queen Bees
Documentary	2021	The Velvet Underground
Documentary	2022	Jackass 4.5
Action	2006	The Departed
Horror	2021	Veneciafrenia
Crime	2019	The Good Liar
Fantasy	2001	The Lord of the Rings: The Fellowship of the Ring
Sport	2021	Tony Parker: The Final Shot
Action	2011	Thor
Drama	2021	Songs for a Sloth
Drama	2000	State and Main
History	2016	The Promise
Action	2021	Wyrmwood: Apocalypse
Romance	2022	Heart of the Matter
Action	2021	The Tender Bar
Action	2021	Violet
Adventure	2022	Fireheart
Family	2022	A Genie's Tail
Documentary	2022	Carole King & James Taylor: Just Call Out My Name
Action	2022	Octopus Pot
Drama	2021	Stars Fell on Alabama
Mystery	1996	Heaven's Prisoners
Adventure	2022	Centaur
Documentary	2021	Private Network: Who Killed Manuel Buendía?
Romance	2021	Wicked
Drama	2021	The Exchange
Action	2022	Jane Fonda & Lily Tomlin: Ladies Night Live
Comedy	1975	The Rocky Horror Picture Show
Action	1985	Plenty
Action	2021	Snake Eyes
Documentary	2021	The Most Beautiful Boy in the World
Action	2022	Sonic the Hedgehog 2
Musical	2022	Never Alone
Music	1989	Great Balls of Fire!
Crime	2022	County Line: All In
Comedy	1993	Last Action Hero
Mystery	2021	Road to Damascus
Thriller	2013	The Wolverine
Thriller	2022	Morbius
Sport	2022	Unicorn Town
Action	2021	The Toolbox Killer
Sport	2021	This Is Port Adelaide
Action	2021	Pray Away
Action	2011	Hick
Drama	2022	The Reunion
Action	2021	Passing
Romance	2022	Redeeming Love
Crime	2021	The Cleaner
Comedy	2022	Groundswell
Action	2022	Terror on the Prairie
Documentary	2022	Randy Rhoads: Reflections of a Guitar Icon
Thriller	1999	Deep Blue Sea
Action	2022	Day Shift
Action	2022	Mo Gilligan: There's Mo to Life
Mystery	2021	Things Heard & Seen
Crime	2021	Rose West: Born Evil?
Comedy	2022	Three Months
Romance	2021	Our Christmas Journey
Comedy	2022	Easter Sunday
Documentary	2022	Girl in the Picture
Drama	2022	Death on the Nile
Drama	2000	Timecode
Romance	2021	Wish Dragon
Drama	2022	Dancing on Glass
Sci-Fi	2022	Morbius
Sport	2022	The Royal
Comedy	2022	Moriah's Lighthouse
Romance	2022	Christmas in Toyland
Romance	2021	Together
Comedy	2021	Tom and Jerry
Mystery	2011	The Girl with the Dragon Tattoo
Comedy	2021	Paul Dood's Deadly Lunch Break
Documentary	2021	Space Titans: Musk Bezos Branson
Romance	2021	Seven Deadly Sins: Lust
Horror	2002	Ritual
Romance	1993	The Three Musketeers
History	1989	Scandal
Mystery	2021	One and the Same
Biography	2021	To Olivia
Thriller	2021	The Alpines
Action	2006	X-Men: The Last Stand
Biography	2021	Tina
Action	2022	All the Old Knives
Adventure	2015	Cinderella
Action	2022	Orphan: First Kill
Mystery	2022	All the Old Knives
Drama	2022	Rip in Time
Adventure	2022	Minions: The Rise of Gru
Action	2022	Memory
Drama	1988	She's Having a Baby
Action	2021	Wedding Cake Dreams
Romance	2022	The Valet
Thriller	2022	The Weekend Away
Comedy	2021	Vacation Friends
Drama	2021	Trollhunters: Rise of the Titans
Documentary	2021	The Slow Hustle
Action	2022	The Janes
Thriller	2006	The Good Shepherd
Comedy	2021	The Santa Stakeout
Action	2021	Torn from Her Arms
Drama	2022	Lightyear
Comedy	2022	Emergency
Mystery	2022	Vengeance
Drama	2021	The Colour Room
Drama	2021	To All the Boys: Always and Forever
Action	2022	Lie Hard
Mystery	1985	Clue
Crime	1990	Miami Blues
Romance	1996	Breaking the Waves
Romance	2021	The Power of the Dog
Documentary	2021	The Pedal Movie
Horror	2022	Virus-32
Documentary	2022	Stay on Board: The Leo Baker Story
Action	2021	The Boss Baby: Family Business
Sci-Fi	2022	Exposure 36
Mystery	2021	The Murder of Gabby Petito: Truth Lies and Social Media
Drama	1999	Outside Providence
Documentary	2021	The Village Detective: a song cycle
Comedy	2022	Road Trip Romance
Documentary	2022	Christina P.: Mom Genes
Adventure	2021	The Marksman
Action	2021	The Humans
Fantasy	1988	Beetlejuice
Comedy	2022	Minions: The Rise of Gru
Documentary	2021	Reach for the Rings
Action	2021	SAS: Red Notice
Drama	2022	Save the Cinema
Animation	2021	The Addams Family 2
Fantasy	2003	The Lord of the Rings: The Return of the King
Documentary	2022	Harry Potter 20th Anniversary: Return to Hogwarts
Action	2022	Uncharted
Documentary	2022	Return to Space
Biography	2021	Potato Dreams of America
Family	2021	The Jump
Action	2021	This Is Port Adelaide
Action	2022	Rogue Agent
Animation	2021	Raya and the Last Dragon
Sci-Fi	2021	Ron's Gone Wrong
Crime	2022	A Violent Man
Adventure	2022	Green Lantern: Beware My Power
Comedy	2021	Together
Action	2021	Twice Bitten
Sport	2022	Stay on Board: The Leo Baker Story
Drama	2021	The Wrong Valentine
Musical	2022	Z-O-M-B-I-E-S 3
Family	2021	The Healing Garden
Drama	2022	Alone Together
Romance	2022	Love in the Limelight
Animation	2022	Luck
Documentary	2021	This is Gwar
Action	2022	Look at Me: XXXTentacion
Crime	2021	The Little Things
Biography	2021	The Survivor
Comedy	2022	Love in the Limelight
Drama	2022	Jerry and Marge Go Large
Horror	2021	Son
Comedy	2021	Spin
Action	2021	Resort to Love
Crime	2022	Resurrection
Action	1993	Last Action Hero
Action	2022	Romance to the Rescue
Romance	2021	The Nine Kittens of Christmas
Action	2022	The Sea Beast
Horror	2022	Crimes of the Future
Animation	2021	South Park: Post Covid - The Return of Covid
Action	2022	Assailant
Action	2022	Cristela Alonzo: Middle Classy
Music	2021	Spin
Crime	2022	Our Father
Animation	2021	Riverdance: The Animated Adventure
Drama	2022	The Mulligan
Drama	2021	Things Heard & Seen
Drama	2022	The Inside Outtakes
Mystery	2022	The Twin
Comedy	2022	Family Squares
Documentary	2021	Our Towns
Action	2021	Shoplifters of the World
Comedy	2022	Everything Everywhere All at Once
Documentary	2022	2000 Mules
Action	2021	The Housewives of the North Pole
Action	1991	The Marrying Man
Action	2021	The Ultimate Playlist of Noise
Drama	2022	Thirteen Lives
Documentary	2021	The Rise and Fall of LuLaRoe
Comedy	2022	Fireheart
Thriller	2022	Assailant
Horror	2022	Men
Mystery	2021	The Tragedy of Macbeth
Comedy	2021	The Nine Kittens of Christmas
Thriller	2022	No Exit
Action	2022	Lost Angel
Mystery	2021	The Deep House
Crime	2021	Operation Varsity Blues
Action	2022	2022 Oscar Nominated Short Films: Animation
Sci-Fi	2022	Men
Comedy	2012	Rock of Ages
History	2021	Wash My Soul in the River's Flow
Action	2021	The Slow Hustle
Drama	2021	This Is Not a Comedy
Action	2021	The Vault
Music	2021	Songs for a Sloth
Action	2021	The Cursed
Action	2022	Centaur
Action	2021	Our Dream Wedding
Comedy	1987	Jim & Piraterna Blom
Music	2022	Finding Carlos
Drama	2021	The Harder They Fall
Family	2022	Harry Potter 20th Anniversary: Return to Hogwarts
Action	2022	After Jackie
Action	2022	Wuthering Heights
Comedy	2022	Brian and Charles
Romance	1995	Restoration
Thriller	2021	Till Death
Action	2001	Pearl Harbor
Comedy	2022	That's Amor
Sci-Fi	2021	Strawberry Mansion
Romance	2022	Downton Abbey: A New Era
Action	2021	The White Tiger
Action	2021	Where Is Anne Frank
Thriller	2021	Wrong Turn
Adventure	2021	Vacation Friends
Drama	2021	The Final Code
Action	2021	The Girl in the Window
Romance	2021	Strawberry Mansion
Comedy	2022	King Tweety
Comedy	2022	Metal Lords
Romance	2022	Harmony in Paradise
Sci-Fi	2006	X-Men: The Last Stand
Drama	2021	Road to Perth
Comedy	2022	Bill Maher: #Adulting
Drama	2021	The Alpines
Action	2021	She Will
Comedy	2021	Sweetheart
Music	2022	Press Play
Thriller	2021	Payback
Crime	2021	The Many Saints of Newark
Action	2022	The Monkey King: The Legend Begins
Drama	2021	The Justice of Bunny King
Romance	2021	Stars Fell on Alabama
Action	2021	Persona: The Dark Truth Behind Personality Tests
Music	2022	Not Just a Girl
Drama	2021	Right in Front of Me
Action	2022	Shut In
Sport	2022	Home Team
Comedy	2022	Good Luck to You Leo Grande
Drama	2021	Together
Action	2021	Tony Parker: The Final Shot
Drama	2021	Samantha Rose
Drama	2018	A Star Is Born
Action	2021	Zack Snyder's Justice League
Fantasy	2022	The King's Daughter
Romance	2016	Rules Don't Apply
Crime	2021	Rise of the Footsoldier: Origins
Romance	1998	Apt Pupil
Drama	2022	Samaritan
Comedy	2022	Hidden Gems
Comedy	2022	Harmony from the Heart
Comedy	2021	The House of Flowers: The Movie
Documentary	2022	Aftershock
Mystery	2015	Mr. Holmes
Documentary	2022	How Did We Get Here?
Drama	2018	The Public
Horror	2022	Line Sisters
Family	2021	The Matchmaker
Drama	2022	Found Wandering Lost
Documentary	2021	Who is Bill Rebane?
Documentary	2021	The Hunt for Planet B
Comedy	2021	Red Rocket
Crime	2022	Spiderhead
Drama	2021	Spiral
Action	2021	The Man Putin Couldn't Kill
Romance	2016	Blind
Sci-Fi	2013	Thor: The Dark World
Action	2022	A Tail of Love
Drama	2022	Apollo 10½: A Space Age Childhood
Drama	2021	Pick A Side
Documentary	2022	Cristela Alonzo: Middle Classy
Comedy	2022	Mr. Malcolm's List
Documentary	2021	Reopening Night
Documentary	2022	Taylor Tomlinson: Look at You
Mystery	1992	Glengarry Glen Ross
Romance	2021	Open
Sci-Fi	2022	Green Lantern: Beware My Power
Documentary	2022	11M: Terror in Madrid
Thriller	2021	The Ballad of Billy McCrae
Music	2022	Metal Lords
Romance	2021	Sometime Other Than Now
Comedy	2021	Seal Team
Adventure	2000	Charlie's Angels
Action	2022	Hidden Gems
Drama	2022	Top Gun: Maverick
Action	2021	Silent Night
Action	2022	Holy Heist
Thriller	2022	Orphan: First Kill
Biography	2021	The United States of Insanity
Documentary	2021	Tulsa: The Fire and the Forgotten
Action	2022	Watcher
Adventure	2013	The Hobbit: The Desolation of Smaug
Mystery	2021	Infinitum: Subject Unknown
Action	2021	Queen Bees
Animation	2022	The Adventures of Peanut and Pig
Drama	2021	Potato Dreams of America
Drama	2022	The Princess
Action	2022	The Man from Toronto
Crime	2022	Silverton Siege
Action	2022	Polar Bear
Comedy	2022	Moon Manor
Romance	2021	The Right One
Documentary	2022	The Sound of Scars
Adventure	2021	PAW Patrol: The Movie
Action	2022	And Just Like That... The Documentary
Action	2021	Snowkissed
Romance	2022	Toy Aficiao
Action	2022	Against the Ice
Family	2021	Wish Dragon
Documentary	2021	The Found Footage Phenomenon
Adventure	2022	Morbius
Sci-Fi	2021	The Mitchells vs the Machines
Action	2021	Seal Team
Comedy	2022	Backpackers
Action	2021	The 27-Hour Day
Fantasy	1985	Legend
Romance	2021	Sounds Like Love
Thriller	2021	The Girl in the Window
Mystery	2021	The Righteous
Family	2008	The Secret of Moonacre
Documentary	2021	One of Ours
Action	2006	Pirates of the Caribbean: Dead Man's Chest
Horror	2022	Scream
Mystery	2022	The House
Action	2021	Stars Fell on Alabama
Comedy	1988	Married to the Mob
Thriller	2021	The Replacement
Thriller	2006	The Departed
Romance	1997	Good Will Hunting
Romance	2016	Paris Can Wait
Drama	2021	Raunch and Roll
Action	2021	Walking with Herb
Comedy	2022	Block Party
Drama	2021	Oslo
Sci-Fi	2022	Crimes of the Future
Action	2019	Before You Know It
Animation	2021	Peter Rabbit 2: The Runaway
Romance	2021	Two for the Win
Action	1998	Ronin
Action	2022	Seize the Night
Drama	2021	The White Tiger
Comedy	2022	Cha Cha Real Smooth
Adventure	2022	Tom and Jerry: Cowboy Up!
Action	2022	A Royal Runaway Romance
Romance	2008	My Best Friend's Girl
Sci-Fi	2022	Moonshot
Action	2022	The Batman
Drama	2021	Soccer Mom Madam
Sport	2022	The Figo Affair: The Transfer that Changed Football
Action	2021	Sand Dollar Cove
Documentary	2022	Picabo
Reality-TV	2022	Radford Returns
Crime	1988	Married to the Mob
Drama	2021	The Novice
Romance	2021	Trippin' with the Kandasamys
Documentary	2022	Deep in the Heart: A Texas Wildlife Story
Action	2021	Own the Room
Documentary	2022	Elizabeth: A Portrait in Part(s)
Sci-Fi	2022	After Yang
Action	1997	The Edge
Action	2021	You Had Me at Aloha
Action	2021	The Nine Kittens of Christmas
Thriller	2022	Seize the Night
Action	2001	Cats & Dogs
Drama	2021	Scenes from an Empty Church
Drama	2022	Dog
Comedy	2018	The Man Who Killed Don Quixote
Documentary	2021	Poly Styrene: I Am a Cliché
Romance	2013	Blue Jasmine
Adventure	1998	The Avengers
Action	2021	Road to Perth
Family	2022	King Tweety
Sci-Fi	1995	Congo
Documentary	2022	GoldenEra
Action	2006	The Da Vinci Code
Drama	2021	Two Yellow Lines
Documentary	2022	Catherine Cohen: The Twist...? She's Gorgeous
Comedy	2022	Family Camp
Family	2009	My Sister's Keeper
Fantasy	2007	Stardust
Romance	2022	The Sky Is Everywhere
Comedy	2021	The Addams Family 2
Family	2022	The King's Daughter
Documentary	2022	Snoop Dogg's F*Cn Around Comedy Special
Action	2021	Sir Alex Ferguson: Never Give In
Comedy	2011	Hick
Action	2021	Reefa
Thriller	2021	The Demented
Drama	2021	Outside
Comedy	2021	Small Engine Repair
Animation	2021	The Loud House Movie
Documentary	2022	Tom Daley: Illegal to Be Me
Drama	2021	Range Roads
Sci-Fi	2011	Thor
Romance	2022	Putting Love to the Test
Action	2021	The Found Footage Phenomenon
Sci-Fi	1998	The Avengers
Crime	2021	Psych 3: This Is Gus
Comedy	2021	Overrun
Action	2021	The Chronicle Mysteries Helped to Death
Romance	2001	Pearl Harbor
Drama	2021	Quickening
Comedy	2022	Christina P.: Mom Genes
Action	2022	Carole King & James Taylor: Just Call Out My Name
Documentary	2021	Untold: Breaking Point
Mystery	2021	The Green Sea
Comedy	2021	This Is Not a Comedy
Documentary	2021	The New York Times Presents Framing Britney Spears
Comedy	2021	What?
Action	1988	Talk Radio
Animation	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Drama	2022	Resisting Roots
Action	2021	Woodlands Dark and Days Bewitched: A History of Folk Horror
Thriller	1996	The Juror
Documentary	2021	Volcanic UFO Mysteries
Comedy	2021	Pretenders
Adventure	2021	The Daughter
Action	2021	The Unholy
Thriller	2021	Voyagers
Sci-Fi	2022	Jurassic World Dominion
Action	2009	My Sister's Keeper
Romance	2022	Groundswell
Mystery	1993	Malice
Fantasy	2013	The Hobbit: The Desolation of Smaug
Crime	2021	Silent Night
Comedy	2022	Studio 666
Comedy	2022	My Fake Boyfriend
Action	2022	The Wedding Veil Legacy
Crime	2022	Catwoman: Hunted
Action	2022	Stand Out: An LGBTQ+ Celebration
Romance	1985	Legend
Adventure	2022	King Tweety
Action	2022	Eddie Izzard: Wunderbar
Action	1996	Muppet Treasure Island
Action	2022	The Cellar
Comedy	2021	The Fabulous Filipino Brothers
Crime	2022	Minions: The Rise of Gru
Comedy	2021	Songs for a Sloth
Action	2021	Road to Damascus
Drama	2022	Emergency
Action	2022	Apollo 10½: A Space Age Childhood
Comedy	2021	Resort to Love
Action	2022	Samaritan
Action	2021	Twisted Little Lies
Drama	2021	Pati Patni and Joe
Thriller	2021	The Score
Action	2021	The Green Sea
Action	1982	Annie
Comedy	2021	Skateshop
Action	2021	This Is Not a War Story
Family	2021	Puff: Wonders of the Reef
Mystery	1995	Congo
Documentary	2022	Last Exit: Space
Action	2022	Gamestop: Rise of the Players
Adventure	2021	Spiral
Drama	2021	Operation Varsity Blues
Documentary	2021	The Race to Save the World
Romance	2021	Single All the Way
Mystery	2021	The Cleaner
Musical	2021	tick tick... BOOM!
Action	2021	What She Said
Horror	2021	Willy's Wonderland
Action	2012	The Avengers
Drama	2021	The Housewife and the Hustler
Sci-Fi	2022	Moonfall
Action	2022	The Highwayman
Comedy	2022	A Genie's Tail
Romance	2021	South Beach Love
Action	2021	The Judge of Harbor County
Drama	2022	Life After You
Comedy	2021	The Sacred Spirit
Thriller	2021	The Woman in the Window
Musical	2021	Sing 2
Thriller	2022	El Rezador
Crime	2022	Trophy Wife
Documentary	2021	The First Wave
Documentary	2022	Elizabeth: The Unseen Queen
Comedy	2021	The Exchange
Action	2021	Steve McQueen: The Lost Movie
Comedy	2022	The Finellis Movie
Action	2022	Take the Night
Action	2021	The Land of Owls
Drama	2021	The Lost Daughter
Adventure	2022	The Irish Connection
Crime	2021	Reno 911!: The Hunt for QAnon
Horror	2021	Seance
Drama	2022	Seize the Night
Comedy	2021	Ron's Gone Wrong
Family	2022	Luck
Romance	2021	Right in Front of Me
Action	2022	Jurassic World Dominion
Action	2022	Kimi
Thriller	2022	Spiderhead
Mystery	2021	Zebra Girl
Thriller	2021	The Mauritanian
Animation	2022	Green Lantern: Beware My Power
Romance	2022	Butlers in Love
Horror	2021	The Secret of Sinchanee
Drama	1996	Heaven's Prisoners
Adventure	2021	Sing 2
Action	2022	David Spade: Nothing Personal
Romance	1988	The Unbearable Lightness of Being
Horror	2021	We're All Going to the World's Fair
Family	2021	The Housewives of the North Pole
Thriller	2006	X-Men: The Last Stand
Horror	2021	The Alpines
Action	2021	Space Titans: Musk Bezos Branson
Action	2022	Chip 'n Dale: Rescue Rangers
Comedy	2021	Peace by Chocolate
Documentary	2021	The Sparks Brothers
Comedy	2021	Shoplifters of the World
Drama	2022	Downton Abbey: A New Era
Action	2021	Reopening Night
Action	2015	Concussion
Drama	2022	Fourth of July
Drama	2022	Floodlights
Drama	1996	The Juror
Documentary	2021	Pharma Bro
Drama	2001	Pearl Harbor
Thriller	2021	Oslo
Animation	2021	Sing 2
Thriller	2022	Shattered
Thriller	2022	Pride Jewel
Romance	2021	Taking a Shot at Love
Fantasy	2011	Thor
Drama	2021	There Is No I in Threesome
Comedy	2021	Snowkissed
Action	2021	Private Network: Who Killed Manuel Buendía?
Action	2021	The Replacement
Biography	2021	The Sparks Brothers
Action	2022	Honor Society
Action	2022	No Name and Dynamite Davenport
Comedy	2021	Roller Squad
Action	2021	The United States vs. Billie Holiday
Biography	2022	Lucy and Desi
Documentary	2022	Lancaster
Drama	2020	Beast Beast
Drama	2022	Unicorn Town
Action	1984	Dune
Action	2021	When Today Ends
Sport	2021	Streamline
Drama	2021	iGilbert
Action	2015	Cinderella
Thriller	2021	The Tomorrow War
Action	2022	Ronny Chieng: Speakeasy
Sport	2022	Untold: The Girlfriend Who Didn't Exist
Fantasy	2021	Wicked
Action	2022	Losing Addison
Adventure	2022	Doctor Strange in the Multiverse of Madness
Thriller	2021	The Black Phone
Drama	2021	The Land of Owls
Thriller	2000	Charlie's Angels
Action	2021	The Automat
Comedy	2021	Stop and Go
Comedy	2021	Pati Patni and Joe
Action	2022	Boon
Sci-Fi	2022	Doctor Strange in the Multiverse of Madness
Action	2021	The New York Times Presents Framing Britney Spears
Family	2021	Secret Agent Dingledorf and His Trusty Dog Splat
Sci-Fi	2001	Final Fantasy: The Spirits Within
History	2021	The Most Reluctant Convert
Action	2021	Redemption for Easter
Action	2021	Untold: Malice at the Palace
Drama	2021	Stillwater
Action	2021	The Middle Man
Drama	2020	Chick Fight
Thriller	2021	The Last Thing Mary Saw
Horror	2022	American Werewolves
Action	2022	Salesmen
Thriller	2014	X-Men: Days of Future Past
Documentary	2022	Jackass Forever
Sci-Fi	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Romance	2021	Sand Dollar Cove
Action	2022	The Winter Palace
Thriller	2021	Paul Dood's Deadly Lunch Break
Thriller	2021	The Ice Road
Mystery	2021	Wild Indian
Family	1987	Jim & Piraterna Blom
Comedy	2004	Along Came Polly
Action	2022	The Sound of Scars
History	2004	The Aviator
Music	2021	Wash My Soul in the River's Flow
Action	2021	The One and Only Dick Gregory
Comedy	2022	Line Sisters
Documentary	2021	To Which We Belong
Horror	2022	Resurrection
Documentary	2021	Stallone: Frank That Is
Drama	2022	Love You Anyway
Action	2021	Repeat
Thriller	2021	Repeat
Action	2022	Life After You
Action	2012	To Rome with Love
News	2022	The 49th Annual Daytime Emmy Awards
Action	2021	The Clue to Love
Sci-Fi	2022	DC League of Super-Pets
Adventure	2022	The Bad Guys
Action	2022	No Exit
Crime	2022	Running with the Devil: The Wild World of John McAfee
Action	2022	The Unbearable Weight of Massive Talent
Drama	2022	Purple Hearts
Mystery	2021	The Little Things
Action	2022	Rip in Time
Horror	2021	Wired Shut
Thriller	2021	Zebra Girl
Action	2006	Flushed Away
Action	2021	The Wedding Trip
Romance	2022	Anything's Possible
Action	2004	The Aviator
Comedy	2003	The Cat in the Hat
Animation	2022	The Bad Guys
Action	2013	Thor: The Dark World
Sci-Fi	2021	Seal Team
Action	2021	Volcanic UFO Mysteries
Crime	2022	The Outfit
Action	2021	The Pebble and the Boy
Drama	2011	Melancholia
Action	2022	The House
Documentary	2022	Jane Fonda & Lily Tomlin: Ladies Night Live
Drama	2022	Hollywood Stargirl
Crime	2022	The Unbearable Weight of Massive Talent
Family	2022	The Bad Guys
Mystery	2021	Seance
Romance	2022	Love on Fire
Family	2021	Street Gang: How We Got to Sesame Street
History	2006	Pirates of the Caribbean: Dead Man's Chest
Documentary	2021	The Housewife and the Hustler
Crime	2021	Twisted Little Lies
Action	2021	The Matrix Resurrections
Family	2022	Junkyard Dogs
Action	2022	Gatlopp
Documentary	2021	Revealed: The Hunt for Bin Laden
Comedy	2022	Luck
Drama	2015	Concussion
Comedy	2021	The Right One
Romance	2022	The Lost City
Drama	2021	Pig
Adventure	2022	The Sea Beast
Action	2021	The Girl Who Got Away
Action	2022	Kick Like Tayla
Action	2022	Norm Macdonald: Nothing Special
Music	2021	The Velvet Underground
Thriller	2021	Two Cents from a Pariah
Drama	2021	Vivo
Action	2022	Love & Gelato
Drama	2022	Cave Rescue
Drama	2021	Zoey's Extraordinary Christmas
Comedy	2022	Eddie Izzard: Wunderbar
Fantasy	2022	Erzulie
Action	2021	The Last Bus
Romance	2022	A Second Chance at Love
Documentary	2022	Navalny
Documentary	2021	Terry Venables: A Man Can Dream
Action	2021	Stallone: Frank That Is
Family	2021	Scooby-Doo! The Sword and the Scoob
Action	2021	Pig
Action	2021	This Little Love of Mine
Comedy	2022	Better Nate Than Ever
Action	2021	Payback
Action	2022	Persuasion
Action	2021	The Maltese Holiday
Adventure	2021	Tom and Jerry
Action	2021	Sisters on Track
Action	1985	Clue
Drama	2022	I Do (But I Don't)
Action	2021	One and the Same
Documentary	2021	The Way of Miracles
Crime	2022	Clowning
Comedy	2022	The Second Age of Aquarius
History	2021	The War Below
Romance	2022	Moonshot
Family	2022	Hollywood Stargirl
Action	2022	As They Made Us
Thriller	2021	The Conjuring: The Devil Made Me Do It
Thriller	2021	The Deep House
Family	2021	Spirit Untamed
Action	2021	Otra forma de entender la vida
Romance	2022	Presence of Love
Drama	2022	As They Made Us
Action	2021	You Keep the Kids
Action	2021	Stowaway
Action	2021	The Ballad of Billy McCrae
Thriller	2021	The Bezonians
Drama	2021	This Is the Night
Documentary	2022	The Wall: Climb for Gold
Romance	2021	Trust
Documentary	2021	Searching for Cannibal Holocaust
Action	2021	Redemption in Cherry Springs
Sci-Fi	2021	The Spine of Night
Action	2019	Out Stealing Horses
Drama	2021	Snakehead
Romance	2022	Moriah's Lighthouse
Documentary	2022	Jeff Foxworthy: The Good Old Days
Comedy	2022	Stand Out: An LGBTQ+ Celebration
Music	2021	Woodstock 99: Peace Love and Rage
Crime	2021	Xtreme
Action	2021	Spin
Musical	2021	Riverdance: The Animated Adventure
Drama	2021	Salt-N-Pepa
Fantasy	2021	The Spine of Night
Documentary	2021	Sisters on Track
Drama	2002	No Good Deed
Drama	2003	The Cooler
Documentary	2022	Olivia Rodrigo: driving home 2 u (a SOUR film)
Comedy	2021	People Just Do Nothing: Big in Japan
Action	2013	The Wolverine
Action	2022	The Twin
Drama	2022	Two Tickets to Paradise
Romance	2022	A Perfect Pairing
Action	2021	The French Dispatch
Sci-Fi	2022	The In Between
Documentary	2022	Sheryl
Action	2021	Spider-Man: No Way Home
Documentary	2021	The One and Only Dick Gregory
Thriller	2021	The Forever Purge
Drama	2021	Senior Moment
Adventure	2021	Red Notice
Crime	1991	Oscar
Thriller	2022	Gold
Romance	2021	Warming up to you
Drama	2016	The Promise
Drama	2016	Our Kind of Traitor
Action	2022	The Contractor
Adventure	2021	Spider-Man: No Way Home
Action	1999	Deep Blue Sea
Comedy	2022	Beavis and Butt-Head Do the Universe
Horror	2022	Torn Hearts
Drama	2021	The Woman in the Window
Thriller	2022	They Live in the Grey
Action	2021	Scarborough
Comedy	2022	Sweet as Pie
Action	2021	Shepherd
Comedy	2022	Junkyard Dogs
Thriller	2021	See for Me
Crime	1998	Apt Pupil
Action	2006	The Good Shepherd
Sci-Fi	2021	Repeat
Comedy	2022	Hustle
Crime	2021	The Murder of Gabby Petito: Truth Lies and Social Media
Thriller	2016	Our Kind of Traitor
Thriller	2021	Stowaway
Drama	2021	She Will
Comedy	2021	Taking a Shot at Love
Drama	2021	Ted K
Action	2021	The Big Rant
Comedy	2021	Right in Front of Me
Documentary	2022	Civil: Ben Crump
Action	2022	American Werewolves
Drama	2022	Dating the Delaneys
Action	2022	Navalny
Fantasy	2015	Cinderella
Thriller	2022	Dancing on Glass
Action	2022	White Hot: The Rise & Fall of Abercrombie & Fitch
Comedy	2021	The Super Bob Einstein Movie
Documentary	2022	Leave No Trace
Action	2021	The Last Mountain
Action	2021	Secret Agent Dingledorf and His Trusty Dog Splat
Thriller	2021	The Laureate
Drama	2022	Not Okay
Romance	2021	Swan Song
Drama	2022	Spiderhead
Biography	2021	Stallone: Frank That Is
Comedy	2022	Look Both Ways
Family	2021	Redeemed
Action	2021	The Ice Road
Comedy	2021	Ride the Eagle
Action	2021	The Mitchells vs the Machines
Animation	2006	Flushed Away
Romance	2021	Sweet Carolina
Drama	2022	Orphan: First Kill
Fantasy	2000	Thomas and the Magic Railroad
Action	2021	The Jump
Action	2021	The United Way
Sci-Fi	2022	Apollo 10½: A Space Age Childhood
Documentary	2021	The Storms of Jeremy Thomas
Action	2021	Small City
Adventure	1994	The Getaway
Thriller	2022	Caught in His Web
Drama	2001	The Royal Tenenbaums
Thriller	2022	Emergency
Documentary	2022	The Janes
Crime	2021	The Santa Stakeout
Biography	2021	The Most Beautiful Boy in the World
Action	2022	Love on Fire
Drama	2022	Hello Goodbye and Everything in Between
Adventure	2007	Stardust
Documentary	2022	Untold: The Rise and Fall of AND1
Crime	2022	Low Life
Action	2003	The Cooler
Drama	2021	Xtreme
Action	2022	How to Please a Woman
Drama	2021	Rattle-Can
Adventure	2022	The Adam Project
Action	2021	See You Then
Adventure	2022	Against the Ice
Action	1990	Alice
Action	2022	Beavis and Butt-Head Do the Universe
Documentary	2021	The Super Bob Einstein Movie
Thriller	2021	Paranormal Activity: Next of Kin
Thriller	1994	The Shadow
Documentary	2022	Belle Vie
Documentary	2022	Hello Bookstore
Comedy	2006	Mini's First Time
Adventure	2022	Fantastic Beasts: The Secrets of Dumbledore
Sport	2021	Untold: Breaking Point
Romance	2004	Kinsey
Action	2021	The Novice
Action	2021	The Colony
Family	2022	Minions: The Rise of Gru
Action	2022	11M: Terror in Madrid
Action	2022	Senior Year
History	2022	Against the Ice
Action	2021	Shock Docs The Exorcism of Roland Doe
Drama	2021	Our Christmas Journey
Comedy	2021	The Perfect Family
Romance	2022	My Grown-Up Christmas List
Action	2021	tick tick... BOOM!
Horror	2014	No Good Deed
Romance	2021	Wedding Cake Dreams
Biography	2022	American Experience Plague at the Golden Gate
Action	2022	Women of the White Buffalo
Music	2021	Sounds Like Love
Drama	2022	North of the 10
Musical	1996	Muppet Treasure Island
Comedy	1993	Six Degrees of Separation
Biography	2021	The Most Reluctant Convert
Comedy	2022	The Hall: Honoring the Greats of Stand-Up
Action	2022	The Hall: Honoring the Greats of Stand-Up
Action	2021	Roadrunner: A Film About Anthony Bourdain
History	2021	The First Wave
Drama	1988	Talk Radio
Mystery	2021	The Manor
Drama	2003	The Lord of the Rings: The Return of the King
Action	2021	Trigger Point
Musical	2021	Zoey's Extraordinary Christmas
Drama	2022	Redeeming Love
Drama	2021	Respect
Adventure	2022	The Railway Children Return
Action	2021	Try Harder!
Action	2021	The LCD Soundsystem Holiday Special
Documentary	2022	No Woman No Try
Music	2021	The Ultimate Playlist of Noise
Adventure	2021	Without Remorse
Drama	2021	The Witcher: Nightmare of the Wolf
Thriller	2021	Those Who Wish Me Dead
Action	2022	North of the 10
Family	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Documentary	2022	Shane
Romance	2021	West Side Story
Drama	2021	Sunday Mornings
Drama	2022	Trophy Wife
Music	2022	Olivia Rodrigo: driving home 2 u (a SOUR film)
Animation	2022	2022 Oscar Nominated Short Films: Animation
Comedy	2007	Suburban Girl
Family	2022	Game Set Love
Romance	2022	Persuasion
Crime	2014	No Good Deed
Family	2021	The Loud House Movie
Crime	2011	The Girl with the Dragon Tattoo
Action	2021	Sing 2
Adventure	1999	Deep Blue Sea
Action	2021	The Witcher: Nightmare of the Wolf
Drama	1999	The Confession
Thriller	2021	The Secret Lives of College Freshmen
Action	2022	The Adam Project
Drama	2021	Twice Bitten
Adventure	2011	Thor
Action	2012	Rock of Ages
Action	2021	Where the Land Meets the Sky
Animation	2022	The Bob's Burgers Movie
Crime	2022	The Bad Guys
Animation	2022	Chip 'n Dale: Rescue Rangers
Comedy	1999	Notting Hill
Action	2021	Rebellion
Comedy	2022	The Valet
Action	2022	Diamond Hands: The Legend of WallStreetBets
Action	2021	Scenes from an Empty Church
Action	1999	Outside Providence
Adventure	2022	Sonic the Hedgehog 2
Action	2021	The Many Saints of Newark
Action	2021	Our Father
Action	2021	The Red Star
Comedy	2020	Chick Fight
Action	2021	There Is No I in Threesome
Comedy	2019	Drunk Parents
Sci-Fi	2021	The Passenger
Adventure	2022	Prey
Thriller	2021	The Trick
Family	2022	Sonic the Hedgehog 2
Biography	2022	This Is Joan Collins
Comedy	2022	Feeling Butterflies
Drama	2021	Walk With Me
Drama	2021	Small Engine Repair
Animation	2022	Fireheart
Comedy	2022	The Royal Treatment
Comedy	2021	Secret Agent Dingledorf and His Trusty Dog Splat
Adventure	2021	Raya and the Last Dragon
Biography	2021	The Electrical Life of Louis Wain
Action	2021	Songs for a Sloth
Adventure	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Musical	2012	Rock of Ages
Thriller	2021	Without Remorse
Drama	2021	Real Talk
Romance	1988	Married to the Mob
War	2001	Pearl Harbor
Drama	2022	Infinite Storm
Documentary	2021	The Swim
Family	2022	Apollo 10½: A Space Age Childhood
Drama	2022	River Road
Sci-Fi	2021	The Tomorrow War
Drama	2022	Better Nate Than Ever
Thriller	2021	The Laws of the Border
Documentary	2022	Dinosaurs - The Final Day with David Attenborough
Crime	2022	Orphan: First Kill
Action	2021	Trollhunters: Rise of the Titans
Mystery	2021	Redemption in Cherry Springs
Action	2022	Metal Lords
Horror	2022	They Live in the Grey
Family	2021	Peter Rabbit 2: The Runaway
Romance	2021	Sugar Plum Twist
Adventure	2022	Everything Everywhere All at Once
Romance	1981	Priest of Love
Thriller	2014	In Order of Disappearance
Action	2021	Spring
Fantasy	2022	Turning Red
Action	2021	The Laws of the Border
Romance	2022	A Tail of Love
Action	1980	Times Square
Drama	1998	Apt Pupil
Romance	2006	Flushed Away
Action	2021	Wicked
Crime	2022	Memory
Adventure	2021	Snake Eyes
Action	2021	V/H/S/94
Action	2021	The Addams Family 2
Drama	2021	The Wheel
Biography	2021	Tony Parker: The Final Shot
Action	2021	Tinsel - The Lost Movie About Hollywood
Comedy	2022	The Man from Toronto
Action	2021	Silent Hours
Comedy	2022	David Spade: Nothing Personal
Action	2021	Out of Time
Action	2021	Rumba Love
Musical	1975	The Rocky Horror Picture Show
Romance	2021	Saying Yes to Christmas
Sci-Fi	2011	Melancholia
Action	2017	The Boss Baby
Crime	2016	Our Kind of Traitor
Biography	2022	Elvis
Action	2021	Veneciafrenia
Comedy	2021	Rhapsody of Love
Romance	2021	One Winter Wedding
Action	2022	The Perfect Pairing
Documentary	2021	The Price of Freedom
Romance	2022	Gabriel's Rapture: Part Three
Romance	2022	Gabriel's Rapture: Part Two
Drama	2021	The Big Rant
Adventure	1985	Legend
Crime	2021	South of Heaven
Romance	2022	That's Amor
Comedy	2022	Senior Year
Thriller	2021	Trigger Point
Action	2021	The Harder They Fall
Horror	2022	Shut In
Documentary	2021	Rise Again: Tulsa and the Red Summer
Documentary	2021	Paper & Glue
Thriller	1993	Malice
Adventure	2021	The Loneliest Whale: The Search for 52
Action	1996	Breaking the Waves
Action	2021	Red Notice
Drama	2014	No Good Deed
Family	2021	The Nine Kittens of Christmas
Comedy	2021	The Ghost and the Tout Too
Drama	2022	How to Please a Woman
History	2021	The Legend of Molly Johnson
Action	2021	Switched Before Birth
Thriller	1998	The Avengers
Action	2021	Slapface
Documentary	2022	Halftime
Action	2022	Sheryl
Action	2021	The Show
Mystery	2021	The Rescue
Mystery	2021	The Witcher: Nightmare of the Wolf
Action	2022	Benjamin Franklin
Biography	2021	The Murder of Gabby Petito: Truth Lies and Social Media
Drama	2021	The Christmas Contest
Biography	2021	The Dig
Sci-Fi	2021	The Matrix Resurrections
Romance	2021	You Had Me at Aloha
Horror	2021	Shepherd
Drama	2021	We Broke Up
Action	2021	Wrong Turn
Action	1994	The Getaway
Action	2021	Till Death
Drama	2021	Second Chances
Thriller	2022	Scream
Documentary	2022	Inside the Mind of a Cat
Action	2022	Watergate: High Crimes in the White House
Documentary	2021	The Wonderful: Stories from the Space Station
Romance	2021	Romeo & Juliet
Biography	2022	Civil: Ben Crump
Comedy	2022	I Want You Back
Mystery	1993	Six Degrees of Separation
Action	2021	Robbo: The Bryan Robson Story
Fantasy	2021	The Boss Baby: Family Business
Adventure	2021	The Replacement
Mystery	2022	The Sixth Secret
Action	2021	Saying Yes to Christmas
Comedy	2021	Wish Dragon
Horror	2021	The Demented
Comedy	2021	Pirates
Thriller	2022	The Good Neighbor
Mystery	2022	Dying for Chocolate: A Curious Caterer Mystery
Thriller	2021	Reminiscence
Sci-Fi	2022	Catwoman: Hunted
Drama	2021	Overrun
Sport	2021	Skater Girl
Documentary	2022	Downfall: The Case Against Boeing
Drama	2021	Tango Shalom
Action	2021	Stop and Go
Crime	2022	Dying for Chocolate: A Curious Caterer Mystery
Drama	2022	13: The Musical
Documentary	2022	The Disruptors
Action	2021	Peace by Chocolate
Comedy	2022	13: The Musical
Action	1975	The Rocky Horror Picture Show
Drama	2022	Three Months
Action	2022	Jackass Forever
Comedy	2022	North of the 10
Action	2022	The Ledge
Romance	2021	The Souvenir: Part II
Drama	2021	The Righteous
Horror	2021	The Last Thing Mary Saw
Fantasy	2021	The Green Knight
Drama	2006	The Good Shepherd
Action	2021	Sold Out
Comedy	2022	Love Accidentally
Comedy	2021	The Horrific Evil Monsters
History	2021	The United Way
Action	2021	The Power of the Dog
Romance	2022	Purple Hearts
Drama	2021	The Last Thing Mary Saw
Crime	2021	The Laws of the Border
Action	2021	Oprah with Meghan and Harry: A CBS Primetime Special
Documentary	2022	Gerry Anderson: A Life Uncharted
Drama	2015	Mr. Holmes
Adventure	1998	Ronin
Documentary	2021	There Is No I in Threesome
Action	2022	The King's Daughter
War	2016	The Promise
Adventure	2022	Uncharted
Drama	2021	Sweet Girl
Documentary	2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)
Animation	2021	Vivo
Thriller	2021	Twice Bitten
Drama	2021	Stowaway
Comedy	2021	The Big Rant
Comedy	2021	Patrice O'Neal: Killing Is Easy
Thriller	2022	The Gray Man
Romance	2022	Book of Love
Mystery	2009	Angels & Demons
Crime	2021	The Bezonians
Action	2021	Strawberry Mansion
Thriller	2021	The Colony
Documentary	2021	Under the Volcano
Documentary	2021	Who Killed the KLF?
Romance	2021	The Wedding Trip
Family	2022	Dakota
Adventure	2006	Flushed Away
Mystery	2021	One Summer
Comedy	2021	Sounds Like Love
Action	2021	The Power
Thriller	1996	Heaven's Prisoners
Sci-Fi	2021	The Resonator: Miskatonic U
Action	2021	Operation Varsity Blues
Crime	2021	Overrun
Horror	2022	Day Shift
Comedy	2022	Two Tickets to Paradise
Family	2008	Mamma Mia!
Biography	2022	Prizefighter: The Life of Jem Belcher
Family	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Romance	2021	The Clue to Love
Action	2021	WWE: Royal Rumble
Biography	2018	BlacKkKlansman
Thriller	2021	Wrath of Man
Comedy	1985	Clue
Drama	2007	Suburban Girl
Thriller	2022	Take the Night
Romance	2021	The One You're With
Action	2022	A Second Chance at Love
Documentary	2022	In Search of Tomorrow
Romance	2022	Love Under the Lemon Tree
Crime	2021	The Unforgivable
Action	2021	The Righteous
Sci-Fi	2002	The Adventures of Pluto Nash
Action	2000	Charlie's Angels
Music	2021	Raunch and Roll
Biography	2022	Tony Hawk: Until the Wheels Fall Off
Comedy	2021	The Ultimate Playlist of Noise
Adventure	2021	Scooby-Doo! The Sword and the Scoob
Thriller	2022	The Twin
Documentary	2022	Benjamin Franklin
Action	2003	The Lord of the Rings: The Return of the King
Family	2007	Stardust
Family	2022	The Sea Beast
Family	2021	Second Chances
Action	2021	Trippin' with the Kandasamys
Horror	2021	The Addams Family 2
Action	2021	The Fabulous Filipino Brothers
Action	2021	Twyla Moves
Adventure	2021	The House of Snails
Thriller	2022	Borrego
Family	2021	Vivo
Family	2021	Sing 2
Action	2022	Run & Gun
Drama	2021	Wildhood
Adventure	2022	Thirteen Lives
Drama	2021	To Olivia
Action	2021	The Horrific Evil Monsters
Action	2021	Zebra Girl
Drama	2021	The Eyes of Tammy Faye
Horror	2021	The Seance
Mystery	2021	Shepherd
Thriller	2021	Small City
Romance	2021	Seduction & Snacks
Comedy	2021	Sister Swap: A Hometown Holiday
Documentary	2021	The Cleveland Kidnappings
Romance	2022	Along for the Ride
Comedy	2021	Vivo
Horror	2022	The Sixth Secret
Animation	2021	Spirit Untamed
Action	2022	Harmony from the Heart
Adventure	2021	The Loud House Movie
Comedy	1988	Beetlejuice
Family	2022	Chip 'n Dale: Rescue Rangers
Action	2022	The Adventures of Peanut and Pig
Sci-Fi	2021	Snake Eyes
Action	2021	The Act of Reading
Documentary	2021	Untold: Crimes and Penalties
Action	2021	The Cleaner
Drama	2015	Cinderella
Action	2021	Trust
Action	2022	Easter Sunday
Biography	2021	The Toolbox Killer
Romance	2021	Our Dream Wedding
Mystery	2021	South of Heaven
Crime	2021	Red Notice
Thriller	2022	City of Vultures 2
Horror	2021	The Spine of Night
Adventure	1996	Muppet Treasure Island
Romance	2022	Resisting Roots
Action	1989	Great Balls of Fire!
Documentary	2021	Simple as Water
Comedy	2022	The Sea Beast
Romance	2021	The Christmas Pitch
Sci-Fi	2021	Resident Evil: Welcome to Raccoon City
Documentary	2021	Steve McQueen: The Lost Movie
Music	2022	Step Into... The Movies
Family	2022	Fantastic Beasts: The Secrets of Dumbledore
Romance	2022	I Want You Back
Documentary	2021	The Beatles and India
Western	2022	No Name and Dynamite Davenport
Sci-Fi	2021	Venom: Let There Be Carnage
Documentary	2021	Rebel Dykes
Action	2022	Rescued by Ruby
Romance	2022	The Perfect Pairing
Drama	2021	Twisted Little Lies
Adventure	2022	Slash/Back
Music	2022	The 64th Annual Grammy Awards
Action	2022	The Disruptors
Action	2022	What Is a Woman?
Drama	2019	Motherless Brooklyn
Action	2021	Resident Evil: Welcome to Raccoon City
Drama	2021	The Man from Nowhere
Sport	2022	Untold: The Rise and Fall of AND1
Comedy	2021	See You Next Christmas
Drama	2021	Spring
Music	2022	Studio 666
Comedy	2022	Hollywood Stargirl
Action	2021	Trevor Noah Presents Josh Johnson: # (Hashtag)
Documentary	2021	The United Way
Horror	2021	The Manor
Drama	1997	The Edge
Action	2022	Torn Hearts
Action	2021	The 43rd Annual Kennedy Center Honors
Documentary	2021	Untold: Caitlyn Jenner
Fantasy	2022	Rip in Time
Western	2021	The Judge of Harbor County
Fantasy	2021	Shang-Chi and the Legend of the Ten Rings
Action	2021	The Map of Tiny Perfect Things
Action	2021	Skater Girl
Action	2014	In Order of Disappearance
Mystery	2022	Chip 'n Dale: Rescue Rangers
Comedy	2021	Sweet Pecan Summer
Action	2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony
Drama	2022	Aloha with Love
Sport	2020	Chick Fight
Action	2021	Welcome Matt
Adventure	2021	The Boss Baby: Family Business
Documentary	2022	Our Father
Drama	2021	Sweet Carolina
Horror	2022	Flux Gourmet
Mystery	2021	Rattle-Can
Romance	2021	Resort to Love
Drama	2021	The Electrical Life of Louis Wain
Action	2021	The Pharm
Sci-Fi	2022	Secret Headquarters
History	2021	Oslo
Thriller	2021	Rushed
Drama	2018	BlacKkKlansman
Biography	2022	Rise
Drama	2021	The Ice Road
Action	1999	Notting Hill
Horror	2021	Wyrmwood: Apocalypse
Sci-Fi	2022	The Second Age of Aquarius
Biography	2022	The Royal
Fantasy	2021	Zack Snyder's Justice League
Animation	2021	Rock Dog 2: Rock Around the Park
Mystery	2021	Scooby-Doo! The Sword and the Scoob
Thriller	2021	The Legend of Molly Johnson
Action	2022	The Mystery of Marilyn Monroe: The Unheard Tapes
Adventure	2018	The Man Who Killed Don Quixote
Crime	1994	The Shadow
Thriller	1997	The Edge
Romance	2022	The Wedding Veil Legacy
Action	2021	The Real Charlie Chaplin
Thriller	2021	The Protégé
Drama	1997	Amistad
Fantasy	2022	King Tweety
Thriller	2022	Windfall
Comedy	2022	Game Set Love
Documentary	2022	The Loyola Project
Action	2022	Love You Anyway
Drama	2022	Joyride
History	2022	Untold: The Rise and Fall of AND1
Mystery	2022	Girl in the Picture
Drama	2022	Adeline
Drama	2022	Tyson's Run
Fantasy	2001	Cats & Dogs
Horror	2021	The House of Snails
Action	1998	Mercury Rising
Action	2021	Procession
Thriller	2011	The Girl with the Dragon Tattoo
Thriller	2021	The Rescue
Thriller	2021	The Marksman
Thriller	2021	The Influencer
Thriller	2021	Symphoria
Drama	2022	The Outfit
Action	1997	Insomnia
Action	2000	Dancer in the Dark
Music	2021	The Housewives of the North Pole
Action	2022	Exposure 36
Drama	2021	Open
Horror	2022	Prey
Action	2021	Superhost
Documentary	2022	Look at Me: XXXTentacion
Action	2022	Tyler Perry's A Madea Homecoming
Comedy	1996	Muppet Treasure Island
Comedy	2021	The Razz Guy
Action	2022	Lightyear
Action	2021	The Grand Duke of Corsica
Romance	2021	Saving Paradise
Fantasy	2021	Raya and the Last Dragon
Comedy	2021	To All the Boys: Always and Forever
Action	2021	The Marksman
Thriller	2021	Superhost
Drama	2021	Saints & Sinners Judgment Day
Drama	2021	Saving Paradise
Action	2021	Prince Philip: The Man Behind the Throne
Animation	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Documentary	2022	Tosh
Sci-Fi	2021	The Unwonted Sasquatch - Director's Cut
Action	2022	Swap Me Baby
Mystery	2021	The Alpines
Drama	2021	Trees of Peace
Music	1991	The Marrying Man
Thriller	2022	All the Old Knives
Comedy	2022	Jeff Foxworthy: The Good Old Days
Romance	1999	Notting Hill
Biography	2004	Kinsey
Action	2002	Ritual
Drama	2021	The Holiday Fix Up
Romance	1988	She's Having a Baby
Romance	2001	Final Fantasy: The Spirits Within
Action	2021	¡A todo tren! Destino Asturias
Family	2022	Lightyear
Adventure	2021	The Tomorrow War
Mystery	2022	Boon
Drama	2021	Taking a Shot at Love
Action	2022	Spiderhead
Action	2022	Shane
Mystery	2021	Strange Friends
Comedy	2022	Taylor Tomlinson: Look at You
Thriller	2022	Ambulance
Romance	2021	The Santa Stakeout
Action	2021	Theo Von: Regular People
Drama	2021	See for Me
Action	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Action	2021	Two for the Win
Mystery	2021	The Voyeurs
Thriller	2022	The Princess
Action	2022	City of Vultures 2
Documentary	2022	The Photographer: Murder in Pinamar
Action	2022	El Rezador
Action	2022	The Outfit
Animation	2021	The Ogglies
Comedy	2022	A Royal Runaway Romance
Sci-Fi	2022	Press Play
Drama	2021	Prayers for the Stolen
Action	2021	Outside
Thriller	2021	The Little Things
Thriller	2022	Line Sisters
Action	2021	Super Hot
Comedy	2021	Tinsel - The Lost Movie About Hollywood
Romance	2022	Burden
Action	2021	The Children of God
Action	2022	Erzulie
Action	2022	Toy Aficiao
Adventure	2016	The Promise
Adventure	2021	Playing with Sharks: The Valerie Taylor Story
Action	2022	A Cowgirl's Song
Action	2022	Harry Potter 20th Anniversary: Return to Hogwarts
Sport	2021	Steve McQueen: The Lost Movie
Documentary	2021	Prince Philip: The Man Behind the Throne
Music	2022	Carole King & James Taylor: Just Call Out My Name
Action	2021	The Dog Who Wouldn't Be Quiet
History	2022	The Northman
Drama	2022	Here Out West
Action	2021	Raunch and Roll
Thriller	2021	The Girl Who Got Away
Action	2022	Spring Awakening: Those You've Known
Drama	1995	Two Bits
Music	2022	Machine Gun Kelly's Life in Pink
Drama	2021	The Voyeurs
Action	2021	Rumble
Action	2022	The Lost City
Comedy	2013	Blue Jasmine
Comedy	2022	Jackass Shark Week 2.0
History	2001	Pearl Harbor
Crime	2022	Kimi
Romance	2022	Backpackers
Adventure	2021	Voyagers
Action	2021	The Enormity of Life
Adventure	2022	Lotawana
Drama	2021	The Tragedy of Macbeth
Music	2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony
Documentary	2021	Operation Varsity Blues
Action	2021	Zone 414
Comedy	2022	Marry Me
Drama	2022	Father of the Bride
Documentary	2022	Not Just a Girl
Romance	2022	The Winter Palace
Sci-Fi	2022	The Adam Project
Drama	2021	Out of Time
Drama	2012	Rise of the Guardians
Drama	2021	The Story of My Wife
Action	2022	Civil: Ben Crump
Action	2022	Slash/Back
Action	2021	The Perfect Family
Action	2022	Ray Donovan: The Movie
Thriller	2021	The Wrong Valentine
History	2021	This Is Port Adelaide
Documentary	2021	Rebel Hearts
Drama	1998	Gods and Monsters
Comedy	1991	The Marrying Man
Comedy	2005	Elizabethtown
Mystery	2022	Resurrection
Adventure	2021	Seaspiracy
Romance	1999	Outside Providence
Mystery	2022	Orphan: First Kill
Action	2021	Saints & Sinners Judgment Day
Mystery	2022	County Line: All In
Documentary	2022	Running with the Devil: The Wild World of John McAfee
Action	2021	The Wisdom of Trauma
Drama	2021	The Dog Who Wouldn't Be Quiet
Action	2022	Catherine Cohen: The Twist...? She's Gorgeous
Romance	2022	Rip in Time
Action	2021	Women Is Losers
Music	2021	The Score
Comedy	2021	The Sparks Brothers
Action	1988	Beetlejuice
Romance	2021	The Story of My Wife
Drama	2021	Superior
Documentary	2022	David A. Arnold: It Ain't for the Weak
Adventure	2006	Pirates of the Caribbean: Dead Man's Chest
Action	2022	Rise
Action	2021	Scooby-Doo! The Sword and the Scoob
Drama	2014	Still Alice
Biography	2022	Jerry and Marge Go Large
Fantasy	2003	The Cat in the Hat
Documentary	2022	Explorer
Action	2021	Second Chances
Family	2019	Arctic Dogs
Action	2021	Strings
Romance	2022	A Splash of Love
Mystery	2022	The Weekend Away
Comedy	2022	Wedding Season
Family	2021	Raya and the Last Dragon
Action	2022	Downton Abbey: A New Era
Romance	2021	Rhapsody of Love
Action	2021	The Phantom
Action	2022	Just One Kiss
Action	2022	Due Season
Biography	2021	The Red Star
Action	2008	Mamma Mia!
Documentary	2021	The Children of God
Biography	2022	Moon Manor
Documentary	2021	Sir Alex Ferguson: Never Give In
Action	2021	Vivo
Drama	2021	Peter Rabbit 2: The Runaway
Comedy	2021	The One You're With
Action	2022	The 49th Annual Daytime Emmy Awards
Action	2021	South of Heaven
Documentary	2022	Bill Burr: Live at Red Rocks
Crime	2006	Pirates of the Caribbean: Dead Man's Chest
Mystery	2021	See for Me
Thriller	2021	Vengeance Is Mine
Action	2022	How Did We Get Here?
History	2021	The Dig
Family	2021	Sweet Pecan Summer
Action	2022	The Modern Way
Fantasy	2021	Peter Rabbit 2: The Runaway
Drama	2021	Raya and the Last Dragon
Horror	2021	Wrong Turn
Comedy	2022	Mother's Love
Adventure	2021	Outside the Wire
Family	2021	Rock Dog 2: Rock Around the Park
Drama	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Family	2022	Fireheart
Action	2021	Who is Bill Rebane?
Action	2021	The Justice of Bunny King
Sci-Fi	1984	Dune
Sci-Fi	2013	The Wolverine
Drama	2021	The Bezonians
Horror	2021	Paranormal Activity: Next of Kin
Comedy	2002	The Adventures of Pluto Nash
Fantasy	2022	Father of the Bride
Action	2021	Yes Day
Action	2021	The Woman in the Window
Documentary	2021	The Toolbox Killer
Documentary	2022	VALLDAURA: A Quarantine Cabin
Drama	2021	The Middle Man
Adventure	2001	Final Fantasy: The Spirits Within
Fantasy	2006	Flushed Away
Drama	2005	Neverwas
Comedy	2022	Funny Pages
Action	2016	Blind
Fantasy	2021	The Witcher: Nightmare of the Wolf
Adventure	2015	Avengers: Age of Ultron
Family	2022	The Royal Treatment
Action	2022	King Tweety
Action	2021	iGilbert
Fantasy	2021	Strawberry Mansion
Animation	2021	The Spine of Night
Crime	2022	Windfall
Comedy	2022	Ronny Chieng: Speakeasy
Action	2021	The Right One
Action	2022	Don't Make Me Go
Action	2021	Tina
Drama	2004	The Aviator
Action	2022	Home2Home
Mystery	2019	Out Stealing Horses
Documentary	2021	To Be Determined
Action	2001	The Royal Tenenbaums
Mystery	2022	Gone in the Night
Drama	2022	Ambulance
Drama	2022	The Wrath of God
Documentary	2021	Twyla Moves
Romance	2021	Rumba Love
Drama	2021	Strange Friends
Biography	2021	tick tick... BOOM!
Thriller	2022	Glorious
Sci-Fi	2021	Out of Time
Action	2022	Terry Bradshaw: Going Deep
Drama	2021	Our Father
Comedy	2022	I Do (But I Don't)
Fantasy	2022	Sonic the Hedgehog 2
Animation	2022	Apollo 10½: A Space Age Childhood
Biography	2022	Not Just a Girl
Thriller	2021	The Guilty
Fantasy	2008	The Secret of Moonacre
Family	2022	Finding Carlos
Comedy	2022	Jackass Forever
Musical	1982	Annie
Documentary	2021	Rebellion
Thriller	2021	Willy's Wonderland
Comedy	2021	Senior Moment
Comedy	2021	Scooby-Doo! The Sword and the Scoob
Horror	2022	No Exit
Thriller	2021	Rattle-Can
Action	2021	The Dig
Documentary	2021	Wash My Soul in the River's Flow
Drama	2021	The Christmas Promise
Action	2021	Triumph
Drama	2021	Saying Yes to Christmas
Action	2022	North to Home
Musical	2021	West Side Story
Comedy	2021	Our Father
Drama	2021	Triumph
Comedy	2022	Chip 'n Dale: Rescue Rangers
Action	2022	Backpackers
Drama	2021	The Pharm
Comedy	1988	She's Having a Baby
Thriller	2022	X
Documentary	2021	The River Runner
Crime	2021	Private Network: Who Killed Manuel Buendía?
Documentary	2022	Chernobyl: The Lost Tapes
Action	2021	Wired Shut
Action	2022	The Mystery of Her
Comedy	2021	Werewolves Within
Drama	2021	Sand Dollar Cove
Action	1995	Restoration
Action	2021	The Beta Test
Comedy	2022	Nude Tuesday
Horror	2021	The Grandmother
Animation	2022	King Tweety
Action	2022	Cha Cha Real Smooth
Action	2022	Nude Tuesday
Romance	2022	A Royal Runaway Romance
Crime	2021	The Card Counter
History	2021	Our Lady of San Juan Four Centuries of Miracles
Action	2021	Xtreme
Sport	2021	Skateshop
Action	2021	Tollbooth
Drama	2021	The Pebble and the Boy
Fantasy	2021	The Nine Kittens of Christmas
Drama	2022	Deep Water
Sport	2021	Untold: Malice at the Palace
Action	2022	Save the Cinema
Comedy	2021	The Starling
Thriller	2022	Watcher
Documentary	2022	What Is a Woman?
Comedy	2022	A Splash of Love
Romance	2007	Suburban Girl
Action	2022	Studio 666
Action	2022	Family Squares
Drama	2021	The Humans
Drama	2022	Wuthering Heights
Fantasy	2011	Melancholia
Mystery	2021	The Cursed
Action	2004	Along Came Polly
Adventure	2021	The Ogglies
Fantasy	1994	The Shadow
Action	2022	Family Camp
Action	2021	Past Shadows
Action	2021	Truth to Power
Music	2021	Who Killed the KLF?
Horror	2022	Single Black Female
Family	2022	13: The Musical
Adventure	2003	The Lord of the Rings: The Return of the King
Fantasy	2021	The Razz Guy
Family	2022	DC League of Super-Pets
Documentary	2021	Tinsel - The Lost Movie About Hollywood
Mystery	2021	Psych 3: This Is Gus
Action	2021	UnPerfect Christmas Wish
Sci-Fi	2021	Infinitum: Subject Unknown
Drama	2000	Harlan County War
Drama	1988	Working Girl
History	2021	Tulsa: The Fire and the Forgotten
Thriller	2021	She Will
Action	2021	Tango Shalom
Action	2021	Untold: Breaking Point
Adventure	2022	Erzulie
Thriller	2022	Thirteen Lives
Action	2022	The Reunion
Comedy	2022	Paulie Go!
Action	2022	Virus-32
Comedy	2021	The Influencer
Thriller	2022	Infinite Storm
Drama	2021	Things Don't Stay Fixed
Action	2022	Silverton Siege
Adventure	2021	The Colony
Action	2021	The Secret of Sinchanee
Crime	2021	Spiral
Adventure	2021	The Swim
Music	2021	Poser
Adventure	2013	Thor: The Dark World
Drama	2015	Aloha
Horror	2021	The Forever Purge
Action	2021	Sometime Other Than Now
Biography	2022	Jeff Foxworthy: The Good Old Days
Documentary	2021	The Wimbledon Kidnapping
Action	2022	American Carnage
Action	2021	Subjects of Desire
Romance	2017	Return to Montauk
Action	2021	The Virtuoso
Fantasy	2021	Snake Eyes
Fantasy	2022	Day Shift
Action	2021	Saving Paradise
Action	2021	The Enchanted Christmas Cake
Animation	2022	Minions: The Rise of Gru
Action	2009	Angels & Demons
Adventure	1990	The Hunt for Red October
Adventure	1995	Congo
Action	2022	Burn
Adventure	2021	Spirit Untamed
Comedy	2021	The Hating Game
Adventure	2021	Shang-Chi and the Legend of the Ten Rings
Romance	2022	Love Accidentally
Comedy	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Fantasy	2013	Thor: The Dark World
Sport	2022	The Only
Sci-Fi	2021	Reminiscence
Action	2021	Rebel Dykes
Action	2021	The Green Knight
Documentary	2021	The Real Charlie Chaplin
Documentary	2022	Facing Nolan
Drama	2021	The Most Reluctant Convert
Sport	2021	Untold: Deal with the Devil
Drama	2019	Out Stealing Horses
Thriller	2021	The Beta Test
Drama	2021	The Marksman
Comedy	2001	The Royal Tenenbaums
Documentary	2021	This Is Port Adelaide
Comedy	2021	Warming up to you
Sport	2021	Rumble
Mystery	2022	Death on the Nile
Action	2021	Seance
Drama	2021	The Devil's Ring
Crime	1993	Loaded Weapon 1
Action	2021	Workhorse Queen
Sci-Fi	2022	In Search of Tomorrow
Drama	2021	Strawberry Mansion
Comedy	2021	Scenes from an Empty Church
Comedy	1995	Two Bits
Action	2022	River Road
Animation	2022	Sonic the Hedgehog 2
Crime	2022	Ambulance
Thriller	2022	The Unbearable Weight of Massive Talent
Action	2021	One Summer
Drama	1993	Six Degrees of Separation
Drama	2022	Boon
Romance	2022	Just One Kiss
Crime	1985	Clue
Action	2011	The Girl with the Dragon Tattoo
Action	2002	The Adventures of Pluto Nash
Action	2021	Wild Indian
Action	2021	We Broke Up
Family	2021	Rumble
Action	1987	Jim & Piraterna Blom
Drama	2022	Father Stu
Action	2021	Red Snow
Romance	2018	A Star Is Born
Action	2022	Deep in the Heart: A Texas Wildlife Story
Drama	2021	The Little Things
Adventure	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Drama	2006	Flushed Away
Action	2022	Endangered
Adventure	2022	DC League of Super-Pets
Action	2021	Sonsational
Romance	2021	Spin
Action	2021	The Survivor
Comedy	2021	Strawberry Mansion
Drama	2022	Crimes of the Future
Crime	2021	See for Me
Mystery	1997	Insomnia
Thriller	1985	Clue
Horror	2021	The Beta Test
Action	2021	Ron's Gone Wrong
Thriller	2021	Silk Road
Animation	2021	Seal Team
Mystery	2022	The Batman
Drama	2001	The Lord of the Rings: The Fellowship of the Ring
Drama	2016	Back in the Day
Documentary	2021	Shock Docs The Exorcism of Roland Doe
Action	2022	The Bad Guys
Romance	2022	The King's Daughter
Sport	2022	Shane
Fantasy	2021	Trollhunters: Rise of the Titans
Crime	2021	Wrath of Man
Action	2022	Love Accidentally
Drama	2021	The Grand Duke of Corsica
Drama	2021	You Had Me at Aloha
Drama	2009	My Sister's Keeper
Drama	2022	Metal Lords
Action	2022	Our Father
Thriller	2022	Last Seen Alive
Romance	2022	Two Tickets to Paradise
Comedy	1999	Outside Providence
Action	1978	The Shout
Documentary	2022	Elizabeth Windsor
Music	2021	Salt-N-Pepa
Action	1997	Good Will Hunting
Documentary	2021	Seaspiracy
Romance	2022	The In Between
Thriller	2021	Twisted Little Lies
Comedy	2022	Tom and Jerry: Cowboy Up!
Drama	2022	It Snows All the Time
Biography	2022	Untold: The Girlfriend Who Didn't Exist
Adventure	2022	The Lost City
Drama	2022	A Cowgirl's Song
Documentary	2021	The United States of Insanity
Action	2021	The Final Code
Thriller	2019	Crown Vic
History	1995	Restoration
Fantasy	2021	Seal Team
Comedy	2022	Fourth of July
Action	2021	Real Talk
Drama	2021	Silk Road
Drama	2021	The Jenkins Family Christmas
Family	2022	Chickenhare and the Hamster of Darkness
Action	1998	The Avengers
Family	1992	Home Alone 2: Lost in New York
Musical	2021	Vivo
Action	2022	Putting Love to the Test
Romance	2021	The 27-Hour Day
Thriller	1997	Insomnia
Comedy	2021	Red Notice
Action	2021	Simple as Water
Action	2021	Our Towns
Thriller	2021	Slapface
Action	2021	Too Soon: Comedy After 9/11
Romance	2022	Feeling Butterflies
Animation	2021	Rumble
History	2021	The Eyes of Tammy Faye
Action	2021	Wrath of Man
Comedy	2021	The French Dispatch
Drama	2021	Saving Sloane
Horror	2021	The Resonator: Miskatonic U
Drama	2022	Watcher
Romance	2022	Tyler Perry's A Madea Homecoming
Mystery	2021	The Red Star
Mystery	2021	Ultrasound
Action	1989	Scandal
Action	2000	Timecode
Action	2022	Block Party
Horror	2001	Scary Movie 2
Comedy	2021	Together Together
Comedy	2022	Vengeance
Drama	2022	Men
Action	2022	Flux Gourmet
Drama	2022	Master
Romance	1991	The Marrying Man
Action	1997	Amistad
Comedy	2022	Ricardo Quevedo: Tomorrow Will Be Worse
Music	2021	People Just Do Nothing: Big in Japan
Documentary	2021	Strip Down Rise Up
Comedy	2021	The Loud House Movie
Music	2022	This Much I Know to Be True
Comedy	2021	Toying with the Holidays
Action	2021	The Holiday Fix Up
Action	2022	Paul Virzi: Nocturnal Admissions
Romance	2022	Sex Appeal
Comedy	2021	The 27-Hour Day
Thriller	2021	Red Snow
Thriller	2022	Silverton Siege
Action	2021	The Lost Sons
Sci-Fi	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Sci-Fi	2022	Wifelike
Thriller	2022	Shut In
Action	2021	Soccer Mom Madam
Action	1988	Working Girl
Adventure	2022	Apollo 10½: A Space Age Childhood
Action	2021	Prayers for the Stolen
Family	2021	Skater Girl
Action	2016	Our Kind of Traitor
Drama	2011	The Girl with the Dragon Tattoo
Adventure	1984	Dune
Drama	2022	Love & Gelato
Mystery	2021	Rushed
Family	2000	Thomas and the Magic Railroad
Drama	2021	The Starling
Family	2022	Better Nate Than Ever
Comedy	2022	Sex Appeal
Action	2022	Dakota
Romance	2007	Stardust
Drama	2021	The Santa Stakeout
Action	1985	Legend
Thriller	2021	Zone 414
Biography	2021	Twyla Moves
Adventure	2017	The Boss Baby
Mystery	2021	V/H/S/94
Drama	2022	Romance to the Rescue
Drama	2022	Burden
Musical	2022	13: The Musical
Fantasy	2021	The Power
Animation	2021	PAW Patrol: The Movie
Action	2021	The Christmas Contest
Sci-Fi	2021	Outside the Wire
Horror	2022	Watcher
Music	2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)
Action	2022	Moriah's Lighthouse
Action	2022	They Live in the Grey
Documentary	2021	Tony Parker: The Final Shot
Romance	2021	Sister Swap: A Hometown Holiday
Romance	2021	The Fabulous Filipino Brothers
Drama	2022	Low Life
Action	1999	The Confession
Action	1990	Miami Blues
Thriller	2021	One Shot
Comedy	2022	Romance to the Rescue
Animation	2021	The Witcher: Nightmare of the Wolf
Documentary	2022	Cypress Hill: Insane in the Brain
Romance	2021	The Matchmaker
Comedy	1991	Oscar
Documentary	2022	Bank Robbers: The Last Great Heist
Biography	2021	Schumacher
Action	2021	Warming up to you
Action	2022	Chernobyl: The Lost Tapes
Romance	2022	Marry Me
Romance	2021	The Valentine Competition
Crime	1992	Home Alone 2: Lost in New York
Animation	2022	South Park: The 25th Anniversary Concert
Crime	2019	Motherless Brooklyn
Drama	2021	West Side Story
Action	2021	Raya and the Last Dragon
Romance	2022	Hollywood Stargirl
Documentary	2022	Lucy and Desi
Action	2021	The Most Reluctant Convert
Horror	2022	X
Sport	2021	The Day Sports Stood Still
Action	2022	Dirty Daddy: The Bob Saget Tribute
Comedy	2022	The Bob's Burgers Movie
Drama	2021	Stop and Go
Thriller	2014	No Good Deed
Mystery	2021	Pig
Thriller	2022	The House
Animation	2022	Catwoman: Hunted
Action	2022	Everything Everywhere All at Once
Documentary	2022	Katrina Babies
Mystery	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Action	2021	Seven Deadly Sins: Lust
Action	2022	The Hyperions
Comedy	2022	Love Under the Lemon Tree
Drama	2021	South Beach Love
Biography	1989	Great Balls of Fire!
Drama	2021	Rise of the Footsoldier: Origins
Action	2022	The Loyola Project
Drama	2022	Lucy and Desi
Thriller	2021	Veneciafrenia
Drama	2021	This Is Not a War Story
Documentary	2021	Untold: Malice at the Palace
Action	2022	Hunting Souls
Action	2021	To Be Determined
Comedy	2022	A Perfect Pairing
Action	2022	The Lost
Action	1992	Glengarry Glen Ross
Horror	2022	The Cellar
Sport	2021	Reach for the Rings
Comedy	2021	Single All the Way
Comedy	2021	Soy Rada: Serendipity
Adventure	2022	The Bob's Burgers Movie
Adventure	2021	Trollhunters: Rise of the Titans
Documentary	2021	The Unspeakable
Action	2022	The 355
War	2021	The War Below
Crime	2021	The Replacement
Biography	2022	Father Stu
Action	2022	Turning Red
Adventure	2022	Home2Home
Western	2021	The Harder They Fall
Action	2021	Sweet Girl
Comedy	2022	The Wedding Veil Legacy
Drama	2021	The Last Letter from Your Lover
Comedy	2014	In Order of Disappearance
Sci-Fi	2021	The Sacred Spirit
Mystery	2022	Master
Comedy	2006	Flushed Away
Action	2022	Love Under the Lemon Tree
Biography	2021	Spencer
Action	2021	Seaspiracy
Documentary	2021	Untold: Deal with the Devil
Fantasy	2021	Wish Dragon
Action	2021	The Trick
Adventure	2022	The King's Daughter
Action	2022	The Northman
Documentary	2021	Pray Away
Action	2021	Peter Rabbit 2: The Runaway
Crime	2022	DC League of Super-Pets
Action	2021	The Demented
Comedy	2021	The Good Boss
Action	2022	Never Alone
Music	2021	The United States of Insanity
Romance	2021	The Wedding Ring
Documentary	2021	The Sailor
Comedy	2021	¡A todo tren! Destino Asturias
Drama	2016	Paris Can Wait
Comedy	2022	Turning Red
Documentary	2021	Woodstock 99: Peace Love and Rage
Action	2021	The Space Between
Romance	1997	Swept from the Sea
Drama	2021	Scarborough
Drama	2021	Two for the Win
Drama	2021	V.C. Andrews' Landry Family V.C. Andrews' Hidden Jewel
Action	2000	State and Main
Comedy	2021	Rumble
Sci-Fi	2022	Minions: The Rise of Gru
Horror	2021	The Horrific Evil Monsters
Action	2021	The Card Counter
Romance	2021	See You Next Christmas
Comedy	2022	Fire Island
Romance	2021	The Hating Game
Action	2021	Poly Styrene: I Am a Cliché
Family	2021	Ron's Gone Wrong
Drama	2021	Skater Girl
Drama	2022	Never Alone
Crime	2021	Those Who Wish Me Dead
Adventure	2021	Peter Rabbit 2: The Runaway
Action	2019	Crown Vic
Drama	1999	Notting Hill
Romance	2021	Sweetheart
Music	2022	Elvis
Thriller	2012	Rise of the Guardians
Thriller	2021	Venom: Let There Be Carnage
Documentary	2021	Shadow Game
Animation	2021	The Mitchells vs the Machines
Sci-Fi	2022	Prey
Talk-Show	2021	Oprah with Meghan and Harry: A CBS Primetime Special
Action	2021	Soy Rada: Serendipity
Action	2022	The Princess
Crime	2021	The Cleveland Kidnappings
Drama	2021	Swan Song
History	2022	Lucy and Desi
Animation	2022	Tom and Jerry: Cowboy Up!
Drama	2022	Last Seen Alive
Adventure	2014	The Hobbit: The Battle of the Five Armies
Action	2021	Venom: Let There Be Carnage
Biography	2021	The United States vs. Billie Holiday
Action	2022	My Fake Boyfriend
Action	2022	Return to Space
Adventure	2022	Moonfall
Action	2021	Vengeance Is Mine
Comedy	2021	The Princess Switch 3
Drama	2021	Repeat
Thriller	2022	Frank and Penelope
Documentary	2022	Endangered
Adventure	2022	Chickenhare and the Hamster of Darkness
Adventure	2021	Rock Dog 2: Rock Around the Park
Horror	2022	Studio 666
Musical	2021	Rumba Love
Action	2022	The Wall: Climb for Gold
Drama	2022	Take the Night
Action	2022	Tankhouse
Documentary	2021	The Show
Music	2022	A Cowgirl's Song
Comedy	2000	Charlie's Angels
Action	2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn
Action	2000	Thomas and the Magic Railroad
Action	2021	One Shot
Biography	1998	Gods and Monsters
Drama	2021	The Exorcism of God
Comedy	2021	Sand Dollar Cove
Comedy	2022	Moonshot
Drama	2021	The Good Boss
Thriller	2022	Boon
Documentary	2021	What Drives Us
Music	2021	Respect
Action	2022	Beyond Impossible
Adventure	2021	The Addams Family 2
Action	2022	Lotawana
Documentary	2021	The Loneliest Whale: The Search for 52
Horror	2022	Doctor Strange in the Multiverse of Madness
Action	2021	Playing Cupid
Action	2021	The Wimbledon Kidnapping
Thriller	2022	Terror on the Prairie
Comedy	2008	My Best Friend's Girl
Sci-Fi	2021	Shang-Chi and the Legend of the Ten Rings
Adventure	2021	The Ice Road
Drama	2022	Octopus Pot
Action	2006	Running with Scissors
Comedy	2021	Theo Von: Regular People
Mystery	2021	The Unwonted Sasquatch - Director's Cut
Sport	2021	Sisters on Track
Documentary	2022	Surviving Paradise: A Family Tale
Romance	2021	Open by Christmas
Documentary	2022	After Jackie
Action	2021	Superior
Romance	2004	Along Came Polly
Action	2008	The Secret of Moonacre
Action	2003	The Cat in the Hat
Drama	2022	The Northman
Drama	2022	The Mystery of Her
Family	2022	Romance to the Rescue
Action	2012	The Hobbit: An Unexpected Journey
Adventure	2021	Strawberry Mansion
Documentary	2021	Set!
Horror	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Comedy	2022	I Love My Dad
Thriller	1998	Apt Pupil
Family	2021	Trollhunters: Rise of the Titans
Drama	2022	Terror on the Prairie
Mystery	2021	Silent Night
Fantasy	1992	Prelude to a Kiss
Mystery	2002	Insomnia
Adventure	2021	Xtreme
Comedy	2021	Stars Fell on Alabama
Adventure	2003	The Cat in the Hat
Crime	2022	Death on the Nile
Drama	2019	Crown Vic
Action	2021	Shatner in Space
Comedy	2021	Taking the Reins
Adventure	2014	X-Men: Days of Future Past
Sci-Fi	1999	Deep Blue Sea
Adventure	2021	The Laws of the Border
Action	2022	Gerry Anderson: A Life Uncharted
Drama	2021	Streamline
Music	2021	Tina
Comedy	2022	Moses Storm: Trash White
Thriller	2021	The Voyeurs
Crime	2021	West Side Story
Fantasy	2021	The Ghost and the Tout Too
Adventure	2021	The King's Man
Fantasy	2005	Neverwas
Thriller	1994	The Getaway
Documentary	2021	Tina
Romance	2021	Taking the Reins
Action	2002	Insomnia
Action	2021	Wolfgang
Thriller	2012	The Avengers
Romance	2021	You Me & the Christmas Trees
Mystery	2021	Trigger Point
Action	2021	Searchers
Sport	2016	Back in the Day
Animation	2021	Where Is Anne Frank
Action	1988	The Unbearable Lightness of Being
Adventure	2021	Ron's Gone Wrong
Thriller	2022	The Northman
Drama	2021	The Sacred Spirit
Family	2017	The Boss Baby
Adventure	2012	The Avengers
Action	2018	A Star Is Born
Comedy	2022	Joel Kim Booster: Psychosexual
Drama	2022	Due Season
Family	2021	PAW Patrol: The Movie
Action	1997	McHale's Navy
History	1996	Ghosts of Mississippi
Action	2021	Revealed: The Hunt for Bin Laden
Action	2021	Rhapsody of Love
History	2021	Twyla Moves
Romance	2021	Wildhood
Action	2021	Patrice O'Neal: Killing Is Easy
Music	2022	The Sky Is Everywhere
Action	2021	The Colour Room
Thriller	2022	Resurrection
Action	2022	Top Gun: Maverick
Action	2022	A Tear in the Sky
Thriller	2022	Single Black Female
Action	2021	The Tomorrow War
Drama	2012	Rock of Ages
Mystery	2021	Spiral
Documentary	2022	Stand Out: An LGBTQ+ Celebration
Horror	2021	Rushed
Comedy	2022	My Grown-Up Christmas List
Documentary	2021	You're Watching Video Music Box
Drama	2021	See You Then
Drama	2021	The Laureate
Adventure	2021	Veneciafrenia
Action	2021	The Hunt for Planet B
Action	2021	The Rescue
Action	2021	The Loneliest Whale: The Search for 52
Comedy	2021	Willy's Wonderland
Romance	2022	Game Set Love
Comedy	2022	Bill Burr: Live at Red Rocks
Action	2006	Mini's First Time
Thriller	2021	The Pharm
Mystery	2019	Motherless Brooklyn
Family	2021	Spin
Action	2022	The Wrath of God
Documentary	2021	River's End: California's Latest Water War
Drama	2022	Resurrection
Romance	2022	Welcome to Mama's
Drama	2021	Ultrasound
Action	2022	The Valet
Action	2021	Rock Dog 2: Rock Around the Park
Action	2015	Aloha
Thriller	2021	The Daughter
Romance	2021	The Christmas Contest
Adventure	2021	Riverdance: The Animated Adventure
Thriller	2022	Proyecto Emperador
Adventure	2022	Line Sisters
Adventure	1997	The Edge
Crime	2006	Mini's First Time
Drama	2021	Redemption for Easter
Action	2018	The Man Who Killed Don Quixote
Documentary	2022	Beyond Impossible
Drama	1982	The Simple-Minded Murderer
Musical	2021	Twyla Moves
Action	2022	Fantastic Beasts: The Secrets of Dumbledore
Crime	2006	The Departed
Action	2021	Strip Down Rise Up
Action	2021	Take Me to Tarzana
Thriller	2022	Prey
Action	2022	I Challenger
Action	2022	Malicious Mind Games
Documentary	2021	Why Did You Kill Me?
Sci-Fi	2012	The Avengers
Documentary	2021	The Conservation Game
Action	2022	I Want You Back
Family	2021	The Girl Who Believes in Miracles
Sci-Fi	2022	Sonic the Hedgehog 2
Thriller	2022	River Road
Documentary	2021	The Murder of Gabby Petito: Truth Lies and Social Media
Drama	2022	Against the Ice
Fantasy	2022	Doctor Strange in the Multiverse of Madness
Drama	1992	Glengarry Glen Ross
Animation	2019	Arctic Dogs
Comedy	2021	The Jenkins Family Christmas
Documentary	2021	The Rescue
Horror	1975	The Rocky Horror Picture Show
Action	2018	The Public
Biography	2021	Robin Roberts Presents: Mahalia
Musical	2022	Better Nate Than Ever
Drama	2021	Sweetheart
Sci-Fi	2021	The Colony
Action	2021	Pirates
Thriller	2022	Paradise Highway
Action	2022	Jerry and Marge Go Large
Action	2022	Gold
Documentary	2021	The Lost Leonardo
History	2022	Benjamin Franklin
Music	2022	Marry Me
Comedy	2022	Tyler Perry's A Madea Homecoming
Romance	2022	Love Fashion Repeat
Biography	2022	Benjamin Franklin
Thriller	1998	Mercury Rising
Action	2022	Bear Witness
Horror	2022	Morbius
Action	2021	Prince of Muck
Music	2022	Torn Hearts
Drama	2021	Palmer
Documentary	2021	River
Sci-Fi	2022	Everything Everywhere All at Once
Action	2021	Sister Swap: A Hometown Holiday
Action	2021	Ride the Eagle
Drama	2022	Finding Carlos
Drama	2022	The Sky Is Everywhere
Comedy	2021	The LCD Soundsystem Holiday Special
Fantasy	2022	DC League of Super-Pets
Family	2022	Rescued by Ruby
Action	2022	Aloha with Love
Romance	2021	Twice Bitten
Sport	2022	Tony Hawk: Until the Wheels Fall Off
Action	2021	Wild Game
Crime	2022	Girl in the Picture
Drama	2022	After Yang
Mystery	2021	The Chronicle Mysteries Helped to Death
Drama	2021	Peace by Chocolate
Comedy	2021	Walking with Herb
Documentary	2021	The Smartest Kids in the World
Action	2022	A Genie's Tail
Drama	1989	Scandal
Music	2021	Sold Out
Action	2022	Not Just a Girl
Fantasy	2006	X-Men: The Last Stand
Family	2022	The Railway Children Return
Action	2022	Hustle
Drama	2021	Two Cents from a Pariah
Fantasy	2022	Samaritan
Thriller	2022	The Contractor
Comedy	2021	The Christmas Pitch
Fantasy	2022	Rise of the Teenage Mutant Ninja Turtles: The Movie
Documentary	2022	Freedom Uncut
Action	2021	The Valentine Competition
Action	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Action	2021	Quickening
Action	2021	The Resonator: Miskatonic U
Action	2022	Ricky Gervais: SuperNature
Action	2017	Return to Montauk
Mystery	2019	Crown Vic
Family	2012	The Hobbit: An Unexpected Journey
Action	2021	The Story of My Wife
Romance	1992	Prelude to a Kiss
Crime	2021	Peter Rabbit 2: The Runaway
Horror	2021	The Power
Drama	2021	The Power
Family	2021	Where Is Anne Frank
Horror	2021	Slapface
Music	2022	Halftime
Drama	2022	Sex Appeal
Fantasy	2022	Everything Everywhere All at Once
Drama	1982	Annie
Sport	2021	Untold: Crimes and Penalties
Action	2021	The Beatles and India
Crime	2021	Silent Hours
Action	2022	The 75th Annual Tony Awards
Action	2022	Last Exit: Space
Comedy	1992	Home Alone 2: Lost in New York
Horror	2021	The Righteous
Action	2021	Why Did You Kill Me?
Horror	2022	Hunting Souls
Action	2022	DC League of Super-Pets
Comedy	1990	Miami Blues
Thriller	2022	Killer Ambition
Drama	2021	The Souvenir: Part II
Drama	1988	The Unbearable Lightness of Being
Thriller	2021	The Tragedy of Macbeth
Horror	2021	You Are Not My Mother
Music	2002	No Good Deed
Drama	2005	Elizabethtown
Comedy	2019	Arctic Dogs
Action	2021	The Murder of Gabby Petito: Truth Lies and Social Media
Comedy	2021	We Broke Up
Drama	2022	Elvis
Documentary	2021	Roadrunner: A Film About Anthony Bourdain
Romance	2022	The Journey Ahead
Comedy	2022	Ricky Gervais: SuperNature
Action	2021	Untold: Deal with the Devil
Comedy	2021	Raya and the Last Dragon
Documentary	2022	This Is Joan Collins
Action	2022	Dinosaurs - The Final Day with David Attenborough
Drama	2021	Switched Before Birth
Crime	2018	BlacKkKlansman
Action	2022	Three Months
Mystery	2021	Werewolves Within
Drama	2021	The Girl Who Believes in Miracles
Thriller	2021	The Card Counter
Thriller	2021	Son
Documentary	2021	The Gig Is Up
Drama	2021	Road to Damascus
Western	2021	The Power of the Dog
Romance	2022	Through My Window
Action	2021	Slumber Party Massacre
Biography	2021	Wolfgang
Comedy	2022	The Unbearable Weight of Massive Talent
Drama	2021	The Space Between
Drama	2021	Single All the Way
History	2021	Where Is Anne Frank
Drama	2021	The Last Bus
Romance	2021	Reminiscence
Action	1998	Apt Pupil
Crime	2021	The Virtuoso
Comedy	2022	Spin Me Round
Documentary	2021	The Kids
Fantasy	2013	The Wolverine
Sci-Fi	2015	Avengers: Age of Ultron
Action	2021	The Jenkins Family Christmas
Adventure	2022	Turning Red
Action	2021	Those Who Wish Me Dead
Family	2021	Tango Shalom
Action	2021	The Wrong Valentine
Action	2022	Home Team
Drama	2021	Taking the Reins
Horror	2021	The Black Phone
Drama	2021	Rushed
Action	2022	Love Classified
Drama	1981	Priest of Love
Documentary	2021	The Forever Prisoner
Family	2022	Tom and Jerry: Cowboy Up!
Drama	2021	Spencer
Action	2021	Playing with Sharks: The Valerie Taylor Story
Drama	2021	The French Dispatch
Action	2014	X-Men: Days of Future Past
Fantasy	2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog
Crime	2022	The Batman
Mystery	2022	The Outfit
Comedy	2021	Seduction & Snacks
Crime	1993	Malice
Thriller	2021	V/H/S/94
Horror	2022	Gatlopp
Drama	2013	Blue Jasmine
Comedy	2022	Snoop Dogg's F*Cn Around Comedy Special
Biography	2022	Olivia Rodrigo: driving home 2 u (a SOUR film)
Comedy	2021	Potato Dreams of America
Drama	2022	Nude Tuesday
Mystery	2022	X
Romance	1988	Working Girl
Action	2021	Rattle-Can
Drama	2021	tick tick... BOOM!
Documentary	2021	The Automat
Romance	2021	The Score
Drama	2022	Hustle
Thriller	2021	Silent Hours
Family	2021	Saving Sloane
Drama	1997	Swept from the Sea
Drama	2021	One Summer
Crime	2021	Wild Indian
Action	1993	The Three Musketeers
Adventure	1987	Jim & Piraterna Blom
Action	2021	The Princess Switch 3
Comedy	2022	Toy Aficiao
Action	2021	Redeemed
Action	2022	Machine Gun Kelly's Life in Pink
Comedy	2021	Queen Bees
Sport	2021	WWE: Royal Rumble
Action	2021	Son
Action	2022	Road Trip Romance
Drama	2021	The Unforgivable
Action	2021	The Gig Is Up
Action	2022	Belle Vie
Horror	2021	Slumber Party Massacre
Action	2021	The Velvet Underground
Documentary	2022	Los Tigres Del Norte: Stories to Tell
Documentary	2022	The Tinder Swindler
Action	2022	The Second Age of Aquarius
Family	2022	Love Classified
Action	2022	Two Tickets to Paradise
Mystery	2021	Reminiscence
Thriller	2009	Angels & Demons
Action	2021	The Pedal Movie
Biography	2015	Concussion
Documentary	2022	Watergate: High Crimes in the White House
Drama	2021	South of Heaven
Sci-Fi	2022	Samaritan
Drama	2021	Past Shadows
Comedy	2022	The Inside Outtakes
Comedy	2021	The Map of Tiny Perfect Things
Action	2016	Rules Don't Apply
Action	2021	The Art of Incarceration
Documentary	2021	This Is Francis X. Bushman
Fantasy	2012	Rise of the Guardians
Thriller	2021	Red Notice
Adventure	2001	Cats & Dogs
Thriller	2022	Centaur
Romance	2022	Look Both Ways
Family	2021	Seal Team
Action	2021	Salt-N-Pepa
Thriller	2022	The 355
Family	2022	Paws of Fury: The Legend of Hank
Crime	2021	The Chronicle Mysteries Helped to Death
Sport	2021	Open
Sport	2015	Concussion
Comedy	2022	Movers Ultimate
Animation	2001	Final Fantasy: The Spirits Within
Thriller	2021	Sweet Girl
Action	2021	Rise and Shine Benedict Stone
Action	2022	Super Turnt
Action	2021	Royal Blossom
Documentary	2021	Robbo: The Bryan Robson Story
Mystery	2021	The Woman in the Window
Romance	2015	Cinderella
Comedy	1988	Working Girl
Comedy	2022	The Bad Guys
Drama	2021	Romeo & Juliet
History	2021	The Sparks Brothers
Musical	2022	The Bob's Burgers Movie
Drama	2021	The Fallout
Thriller	2022	Dual
Action	2021	Wildhood
Crime	2021	Untold: Malice at the Palace
Comedy	2022	Gatlopp
Documentary	2022	Rooney
Action	2022	Fire Island
Romance	2021	Playing Cupid
Documentary	2021	Schumacher
Action	2021	The Good Father: The Martin MacNeill Story
Action	2021	Sweet Pecan Summer
Romance	2021	The Enchanted Christmas Cake
Action	2022	The Inside Outtakes
Action	2022	Her Private Hell
Horror	2021	Things Heard & Seen
Documentary	2021	Searchers
Action	2021	The Wonderful: Stories from the Space Station
Action	2021	The Lost Daughter
Music	2018	A Star Is Born
Family	1996	Muppet Treasure Island
Sport	2021	Untold: Caitlyn Jenner
Documentary	2022	Loving Highsmith
Drama	2021	Redeemed
Drama	2022	Just One Kiss
Sci-Fi	2022	Nope
Family	2021	Tom and Jerry
History	1997	Amistad
Comedy	2012	To Rome with Love
Thriller	2021	Secrets in the Wilderness
Romance	2022	Dating the Delaneys
Action	2021	The Wedding Ring
Comedy	2022	Fresh
Biography	2022	Thirteen Lives
Drama	2021	The Ultimate Playlist of Noise
Drama	1990	Miami Blues
Mystery	2006	The Da Vinci Code
Comedy	2022	Flux Gourmet
Action	2021	See for Me
Sci-Fi	2021	Ultrasound
Action	2021	The Mauritanian
Action	2021	Skateshop
Family	2001	Cats & Dogs
Action	2001	Scary Movie 2
Drama	2016	Rules Don't Apply
Comedy	2021	Riverdance: The Animated Adventure
Drama	1995	Restoration
Comedy	2021	Rock Dog 2: Rock Around the Park
Romance	2021	Royal Blossom
Crime	2021	Queenpins
Documentary	2021	Rose West: Born Evil?
Romance	2022	The Royal Treatment
Action	2022	Surviving Paradise: A Family Tale
Drama	2021	Ride the Eagle
Drama	2021	You Are Not My Mother
Mystery	2019	The Good Liar
Action	2022	The Only
Mystery	2021	Wolf
Drama	2022	The Modern Way
Horror	2021	South of Heaven
Documentary	2022	White Hot: The Rise & Fall of Abercrombie & Fitch
History	2021	Street Gang: How We Got to Sesame Street
Action	2022	Elizabeth: The Unseen Queen
Action	2021	Senior Moment
Action	2019	Arctic Dogs
Drama	1989	Great Balls of Fire!
Documentary	2021	Street Gang: How We Got to Sesame Street
Horror	2021	The Unholy
Action	2021	The Cleveland Kidnappings
Documentary	2021	The Art of Incarceration
Thriller	2021	Wolf
Drama	2021	The Cabin
Crime	2021	Untold: Deal with the Devil
Thriller	2022	Rogue Agent
Drama	2022	Donkeyhead
Action	2021	Ted K
Biography	1981	Priest of Love
Musical	2022	Trevor: The Musical
Romance	2021	The Princess Switch 3
Action	2021	Saving Sloane
Documentary	2022	This Much I Know to Be True
Biography	2022	Icahn: The Restless Billionaire
Action	2021	Roller Squad
Music	2021	The United States vs. Billie Holiday
Documentary	2021	The Story of Film: A New Generation
Drama	2022	No Exit
Thriller	2021	The Killer in My Backyard
Action	2021	Reno 911!: The Hunt for QAnon
Romance	2021	Senior Moment
Action	2022	Icahn: The Restless Billionaire
Family	2022	Family Camp
Drama	2022	Rise
Thriller	2022	Memory
History	2021	The Electrical Life of Louis Wain
Crime	2022	The Weekend Away
Action	2022	Along for the Ride
Action	2022	Olivia Rodrigo: driving home 2 u (a SOUR film)
Family	2021	The Princess Switch 3
Comedy	2022	The Hyperions
Romance	2022	Father of the Bride
Action	2021	Woodstock 99: Peace Love and Rage
Family	2006	Pirates of the Caribbean: Dead Man's Chest
Drama	2022	Proyecto Emperador
Adventure	2021	The Green Knight
Documentary	2021	The Rise of the Anti-Vaxx Movement
Crime	1994	The Getaway
Documentary	2021	Truth to Power
Comedy	2022	American Carnage
Documentary	2022	Ronny Chieng: Speakeasy
Documentary	2022	Bear Witness
Drama	2021	The Deep House
Thriller	2022	Run & Gun
Action	2022	Moonfall
Documentary	2021	Prince of Muck
Drama	2021	Sold Out
Drama	2021	Where Is Anne Frank
Action	1996	Ghosts of Mississippi
Drama	2021	The Matchmaker
Thriller	2022	Malicious Mind Games
Drama	2022	Prey
Action	2022	The Great American Tag Sale with Martha Stewart
Musical	2008	Mamma Mia!
Action	2021	The Sparks Brothers
Documentary	2022	Unicorn Town
Adventure	2019	Arctic Dogs
Thriller	2021	Switched Before Birth
Action	2021	Wish Dragon
Action	1990	The Hunt for Red October
Action	2018	BlacKkKlansman
Action	2021	The Passenger
Drama	2006	Mini's First Time
Drama	2021	The Card Counter
Action	2021	Together Together
History	2021	The Most Beautiful Boy in the World
Horror	2021	Till Death
Adventure	1993	The Three Musketeers
Horror	2021	Super Hot
Comedy	2021	Yes Day
Adventure	2008	The Secret of Moonacre
Action	2022	Moonshot
Thriller	2022	Brut Force
Crime	1998	Ronin
Action	2021	The Eternal Moment
Thriller	2021	What Josiah Saw
Drama	2021	Violet
Action	2021	One Winter Wedding
Drama	2017	Return to Montauk
Action	2021	People Just Do Nothing: Big in Japan
Romance	2021	To Catch a Spy
Action	2022	The Issue with Elvis
Romance	2021	One Summer
Comedy	2022	Butlers in Love
Thriller	2002	No Good Deed
Comedy	2001	Cats & Dogs
Romance	2012	To Rome with Love
Action	2021	Strange Friends
Thriller	2022	Vengeance
Drama	2022	The Railway Children Return
Documentary	2022	Untrapped: The Story of Lil Baby
Action	2021	PAW Patrol: The Movie
Comedy	2021	Zoey's Extraordinary Christmas
Biography	2021	Respect
Family	2021	The Addams Family 2
Drama	2022	The Twin
Documentary	2021	Subjects of Desire
Crime	2021	The Score
Action	2021	The King's Man
Fantasy	2014	X-Men: Days of Future Past
Action	2021	Small Engine Repair
Horror	2022	American Carnage
Comedy	2022	Dog
Action	1995	Congo
Action	2022	The Tinder Swindler
Horror	2021	Werewolves Within
Western	2021	The Legend of Molly Johnson
Romance	1990	Alice
Crime	1996	The Juror
Comedy	2022	Me Time
Action	2021	The Laureate
Action	2022	Moses Storm: Trash White
Biography	2021	The Mauritanian
Fantasy	2017	The Boss Baby
Action	2022	Father Stu
Drama	2021	Wild Indian
Comedy	2022	Dirty Daddy: The Bob Saget Tribute
Documentary	2013	Seduced and Abandoned
Comedy	2022	Paul Virzi: Nocturnal Admissions
Action	2011	Melancholia
Action	2021	Palmer
Drama	2021	Seven Deadly Sins: Lust
Horror	2021	Superhost
Action	2021	Plan B
Action	2021	Shang-Chi and the Legend of the Ten Rings
Thriller	2021	Xtreme
Action	2021	Tulsa: The Fire and the Forgotten
Action	2022	Trophy Wife
Animation	2021	Scooby-Doo! The Sword and the Scoob
Romance	2021	Time for Them to Come Home for Christmas
Fantasy	2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse
Comedy	2021	The Enormity of Life
Action	2022	Dual
Sci-Fi	2015	Andron
Comedy	2020	Pixie
Thriller	2022	Low Life
Comedy	2021	South Park: Post Covid - The Return of Covid
Comedy	2022	Lie Hard
Thriller	1988	Talk Radio
Crime	2020	Pixie
Adventure	2001	The Lord of the Rings: The Fellowship of the Ring
Romance	1994	The Getaway
Sci-Fi	2022	The Hyperions
Action	2022	Good Luck to You Leo Grande
Mystery	2021	The Lost Leonardo
Action	2022	Jackass 4.5
Adventure	2021	The Mitchells vs the Machines
Sport	2021	Sonsational
Drama	2014	In Order of Disappearance
Drama	2022	Heart of the Matter
Action	1994	The Shadow
Crime	1998	Mercury Rising
Crime	2021	The Toolbox Killer
Action	2021	Open by Christmas
Crime	2021	The Housewife and the Hustler
Adventure	2022	The Northman
Drama	2021	Sundown
Action	2022	God's Waiting Room
Sci-Fi	2021	Zone 414
Biography	2021	The Super Bob Einstein Movie
Action	2022	The 64th Annual Grammy Awards
Crime	2021	Stillwater
Documentary	2022	Women of the White Buffalo
Romance	2021	Spring
Musical	2022	The Inside Outtakes
Sport	2021	Schumacher
Romance	2022	Wedding Season
Action	2022	Mother's Love
Thriller	2022	Jurassic World Dominion
Drama	2021	Poser
Comedy	2021	Red Snow
Action	2021	Operation Mincemeat
Drama	2022	Shut In
Crime	1997	Insomnia
Action	2021	You Are Not My Mother
Action	2021	True Things
Animation	2022	Beavis and Butt-Head Do the Universe
Action	2021	Voyagers
Crime	2000	Charlie's Angels
Documentary	2021	The Eternal Moment
Drama	2021	We're All Going to the World's Fair
Documentary	2021	Wolfgang
Adventure	2014	No Good Deed
Documentary	2022	Untold: The Girlfriend Who Didn't Exist
Action	2021	The Bezonians
Romance	2022	Love & Gelato
History	2021	Tina
Action	2014	No Good Deed
Action	2021	Rise of the Footsoldier: Origins
History	2022	Redeeming Love
Action	2021	This Is Not a Comedy
Drama	2021	Pleasure
Thriller	2021	South of Heaven
Drama	2022	Road Trip Romance
Drama	2016	Blind
Comedy	2022	Through My Window
Crime	2021	Silk Road
Action	2021	Tom and Jerry
Family	2021	Project Pay Day
Thriller	2022	Lost Angel
Comedy	2019	Before You Know It
Action	2021	The Protégé
Romance	2021	This Little Love of Mine
Thriller	2022	The Man from Toronto
Thriller	2021	Superior
Action	2022	Sex Appeal
Crime	2021	The Guilty
Comedy	2021	Reno 911!: The Hunt for QAnon
Romance	2005	Elizabethtown
Adventure	2021	Wish Dragon
Thriller	1999	The Confession
Comedy	1993	The Three Musketeers
Crime	2021	Ted K
Animation	2022	Turning Red
Musical	2022	Spring Awakening: Those You've Known
Action	2021	River's End: California's Latest Water War
Crime	2021	The Forever Prisoner
War	2021	The Tragedy of Macbeth
Documentary	2022	Gabby Giffords Won't Back Down
Biography	2022	Halftime
Biography	2021	Wash My Soul in the River's Flow
Action	2022	Prey
Crime	2021	Rushed
Thriller	2021	Spiral
Comedy	2021	Trevor Noah Presents Josh Johnson: # (Hashtag)
Thriller	2021	Small Engine Repair
Action	1997	Swept from the Sea
Thriller	2022	Master
Comedy	2021	Queenpins
Romance	2000	Timecode
Action	2021	To Catch a Spy
Thriller	2021	The Cleaner
Comedy	2016	Rules Don't Apply
Action	2022	Last Seen Alive
Action	2022	Catwoman: Hunted
War	2021	Without Remorse
Sport	2021	The Novice
Documentary	2022	Terry Bradshaw: Going Deep
Comedy	2021	South Beach Love
Drama	1996	Ghosts of Mississippi
Drama	2021	Wolf
Action	2012	Rise of the Guardians
Romance	1996	Muppet Treasure Island
Music	2021	Tango Shalom
Action	2021	The Score
Family	1982	Annie
Action	2022	Dying for Chocolate: A Curious Caterer Mystery
Action	2022	Moon Manor
Drama	2021	The Many Saints of Newark
Drama	1997	Good Will Hunting
Action	2021	The Legend of Molly Johnson
Comedy	2021	The Middle Man
Comedy	2016	Paris Can Wait
Action	2021	Pharma Bro
Action	2021	The Loud House Movie
\.


--
-- Data for Name: pag_web; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.pag_web (nombre, url, tipo) FROM stdin;
https://forummovies.org/reviews/phill_freeman/love_classified_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_pedal_movie_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/one_and_the_same_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/take_the_night_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/untold:_deal_with_the_devil_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/walk_with_me_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/rise_of_the_teenage_mutant_ninja_turtles:_the_movie_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/trees_of_peace_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_legend_of_molly_johnson_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/hunting_souls_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/reach_for_the_rings_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_adam_project_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_mitchells_vs_the_machines_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/gamestop:_rise_of_the_players_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/v.c._andrews'_landry_family_v.c._andrews'_pearl_in_the_mist_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_hating_game_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/this_is_not_a_comedy_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/trophy_wife_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/watcher_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/stand_out:_an_lgbtq+_celebration_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_avengers_1998	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/overrun_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_war_below_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/donkeyhead_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/dogville_2003	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_valentine_competition_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_figo_affair:_the_transfer_that_changed_football_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/joel_kim_booster:_psychosexual_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/operation_varsity_blues_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/orphan:_first_kill_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/untold:_the_girlfriend_who_didn't_exist_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_dog_who_wouldn't_be_quiet_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/beavis_and_butt-head_do_the_universe_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/playing_cupid_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_card_counter_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/caught_in_his_web_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/american_werewolves_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tina_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/alone_together_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/robin_roberts_presents:_mahalia_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/red_snow_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/strawberry_mansion_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/seize_the_night_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_marksman_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/two_tickets_to_paradise_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_toolbox_killer_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_wolverine_2013	\N	\N
https://forummovies.org/reviews/phill_freeman/paulie_go!_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_virtuoso_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/terror_on_the_prairie_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_rise_and_fall_of_lularoe_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/tina_and_lori_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/lightyear_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_cat_in_the_hat_2003	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_trick_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/own_the_room_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_sea_beast_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tyler_perry's_a_madea_homecoming_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/outside_the_wire_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/mo_gilligan:_there's_mo_to_life_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/downfall:_the_case_against_boeing_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/rise_and_shine_benedict_stone_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_unbearable_lightness_of_being_1988	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_highwayman_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/sundown_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/father_stu_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_pebble_and_the_boy_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/taking_a_shot_at_love_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/workhorse_queen_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/heart_of_the_matter_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/rose_west:_born_evil?_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/stardust_2007	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_secret_of_sinchanee_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/back_in_the_day_2016	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tick_tick..._boom!_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/christmas_in_toyland_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/freedom_uncut_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/river_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/a_perfect_pairing_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/last_seen_alive_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/chernobyl:_the_lost_tapes_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_edge_1997	\N	\N
https://palomitas.es/reviews/melissa_stillton/this_is_not_a_war_story_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/ride_the_eagle_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_contractor_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/save_the_cinema_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/swan_song_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_eyes_of_tammy_faye_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/pride_jewel_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/swap_me_baby_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/schumacher_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_christmas_promise_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/navalny_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_real_charlie_chaplin_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/death_on_the_nile_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_hunt_for_red_october_1990	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/planning_on_forever_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/prizefighter:_the_life_of_jem_belcher_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_secret_of_moonacre_2008	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/harry_potter_20th_anniversary:_return_to_hogwarts_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_house_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/right_in_front_of_me_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/poser_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/loving_highsmith_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/cinderella_2015	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_protégé_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/movers_ultimate_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_enchanted_christmas_cake_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/ronin_1998	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/fireheart_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/hello_goodbye_and_everything_in_between_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/wild_indian_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/dc_league_of_super-pets_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/mchale's_navy_1997	\N	\N
https://andysreviews.org/wordpress/andy_connor/concussion_2015	\N	\N
https://palomitas.es/reviews/paul_pendergast/spiral_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/lie_hard_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_gig_is_up_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/a_tail_of_love_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/resurrection_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/last_exit:_space_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/wifelike_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/rise_again:_tulsa_and_the_red_summer_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/silk_road_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_murder_of_gabby_petito:_truth_lies_and_social_media_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/pick_a_side_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/redemption_for_easter_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_man_putin_couldn't_kill_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/infinite_storm_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_gray_man_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_photographer:_murder_in_pinamar_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_irish_connection_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/pretenders_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/our_father_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/ray_donovan:_the_movie_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/prince_of_muck_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_good_father:_the_martin_macneill_story_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/shadow_game_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/not_okay_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/president_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/straight_outta_nowhere:_scooby-doo!_meets_courage_the_cowardly_dog_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_royal_treatment_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/annie_1982	\N	\N
https://palomitas.es/reviews/paul_pendergast/this_is_joan_collins_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_cooler_2003	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/prelude_to_a_kiss_1992	\N	\N
https://forummovies.org/reviews/paul_mulligan/stallone:_frank_that_is_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/beyond_impossible_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/goldenera_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/i_challenger_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_issue_with_elvis_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_wedding_ring_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/centaur_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/chick_fight_2020	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/love_fashion_repeat_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/avengers:_age_of_ultron_2015	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/thirteen_lives_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/wwe:_royal_rumble_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/they_live_in_the_grey_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/shepherd_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/rooney_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_passenger_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/charlie's_angels_2000	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/shoplifters_of_the_world_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/you_keep_the_kids_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/persuasion_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/seduced_and_abandoned_2013	\N	\N
https://forummovies.org/reviews/phill_freeman/home_team_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_princess_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/here_out_west_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/andron_2015	\N	\N
https://palomitas.es/reviews/melissa_stillton/snake_eyes_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/reopening_night_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/trollhunters:_rise_of_the_titans_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/jessie_and_the_elf_boy_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/mrs_harris_goes_to_paris_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/twice_bitten_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_grandmother_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/tango_shalom_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/oscar_1991	\N	\N
https://forummovies.org/reviews/phill_freeman/the_housewives_of_the_north_pole_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_lost_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/things_don't_stay_fixed_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/welcome_matt_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_ultimate_playlist_of_noise_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/summer_of_soul_(...or_when_the_revolution_could_not_be_televised)_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/silent_hours_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_christmas_pitch_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_second_age_of_aquarius_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/hustle_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_clue_to_love_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_story_of_film:_a_new_generation_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/stroke_of_luck_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_black_phone_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_last_thing_mary_saw_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/my_fake_boyfriend_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/taking_the_fall_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_cabin_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/hello_bookstore_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/rebel_hearts_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/untold:_breaking_point_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/gerry_anderson:_a_life_uncharted_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/notting_hill_1999	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/xtreme_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/sugar_plum_twist_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/thor:_the_dark_world_2013	\N	\N
https://forummovies.org/reviews/phill_freeman/block_party_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/love_on_fire_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/a_royal_runaway_romance_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/secretly_santa_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/rebel_dykes_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/thor_2011	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/cave_rescue_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/you_had_me_at_aloha_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/final_fantasy:_the_spirits_within_2001	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_land_of_owls_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/dual_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/kick_like_tayla_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/z-o-m-b-i-e-s_3_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/love_&_gelato_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/shatner_in_space_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_king's_daughter_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/red_notice_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/green_lantern:_beware_my_power_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_disruptors_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/songs_for_a_sloth_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_manor_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/psych_3:_this_is_gus_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/sas:_red_notice_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/spirit_untamed_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_public_2018	\N	\N
https://forummovies.org/reviews/phill_freeman/swept_from_the_sea_1997	\N	\N
https://palomitas.es/reviews/melissa_stillton/poly_styrene:_i_am_a_cliché_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/legend_1985	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_rise_of_the_anti-vaxx_movement_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/wuthering_heights_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_tender_bar_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/skater_girl_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/wedding_cake_dreams_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_aviator_2004	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_boss_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_resonator:_miskatonic_u_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_loyola_project_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/chickenhare_and_the_hamster_of_darkness_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/riverdance:_the_animated_adventure_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/better_nate_than_ever_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/what_josiah_saw_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_ghost_and_the_tout_too_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/aftershock_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/north_of_the_10_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/life_after_you_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_wimbledon_kidnapping_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_wedding_veil_legacy_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/our_kind_of_traitor_2016	\N	\N
https://andysreviews.org/wordpress/andy_connor/cha_cha_real_smooth_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/running_with_scissors_2006	\N	\N
https://palomitas.es/reviews/melissa_stillton/searchers_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_shepherd_2006	\N	\N
https://forummovies.org/reviews/paul_mulligan/tony_parker:_the_final_shot_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/curse_of_the_macbeths_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/gabby_giffords_won't_back_down_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/blackkklansman_2018	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/purple_hearts_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/terry_venables:_a_man_can_dream_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/belle_vie_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/bank_robbers:_the_last_great_heist_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/saving_paradise_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/rise_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/senior_year_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/trevor:_the_musical_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_last_letter_from_your_lover_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/due_season_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/sister_swap:_a_hometown_holiday_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/no_name_and_dynamite_davenport_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_harder_they_fall_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_green_knight_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/lancaster_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/picabo_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/2022_oscar_nominated_short_films:_animation_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/city_of_vultures_3_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/jon_stewart:_the_kennedy_center_mark_twain_prize_for_american_humor_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/saving_sloane_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/super_hot_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/not_just_a_girl_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/windfall_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_king's_man_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/how_to_please_a_woman_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_eternal_moment_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/till_death_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/cristela_alonzo:_middle_classy_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/prayers_for_the_stolen_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/secret_headquarters_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/look_both_ways_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/rushed_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/rebellion_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/low_life_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_big_rant_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/holy_heist_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/two_yellow_lines_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/harmony_from_the_heart_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/you_are_not_my_mother_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/boon_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_juror_1996	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/sold_out_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/cats_&_dogs_2001	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_janes_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/this_is_francis_x._bushman_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_ogglies_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/peace_by_chocolate_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/to_olivia_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_da_vinci_code_2006	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/shane_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_show_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/wyrmwood:_apocalypse_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/harmony_in_paradise_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/slapface_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_story_of_my_wife_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_forever_purge_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_justice_of_bunny_king_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/seal_team_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_man_who_killed_don_quixote_2018	\N	\N
https://palomitas.es/reviews/melissa_stillton/turning_red_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/ronny_chieng:_speakeasy_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_humans_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/who_is_bill_rebane?_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_man_who_fell_from_the_sky_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/crown_vic_2019	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/catwoman:_hunted_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/space_titans:_musk_bezos_branson_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/malice_1993	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_hobbit:_the_battle_of_the_five_armies_2014	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_valet_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/redemption_in_cherry_springs_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_jenkins_family_christmas_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/sir_alex_ferguson:_never_give_in_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/who_killed_the_klf?_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_promise_2016	\N	\N
https://palomitas.es/reviews/paul_pendergast/jazz_fest:_a_new_orleans_story_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/sounds_like_love_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_christmas_contest_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/a_violent_man_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/x_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_art_of_incarceration_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_secret_lives_of_college_freshmen_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_railway_children_return_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/aloha_2015	\N	\N
https://forummovies.org/reviews/phill_freeman/no_exit_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/symphoria_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/arctic_dogs_2019	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/paul_virzi:_nocturnal_admissions_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/explorer_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/son_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/welcome_to_mama's_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/we're_all_going_to_the_world's_fair_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_journey_ahead_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/los_tigres_del_norte:_stories_to_tell_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/more_than_robots_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/gods_and_monsters_1998	\N	\N
https://andysreviews.org/wordpress/andy_connor/rules_don't_apply_2016	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_middle_man_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/trippin'_with_the_kandasamys_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_unbearable_weight_of_massive_talent_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_cellar_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_space_between_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/pearl_harbor_2001	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_crimes_and_penalties_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/master_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/sunday_mornings_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_influencer_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/playing_with_sharks:_the_valerie_taylor_story_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/our_dream_wedding_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/procession_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/apollo_10½:_a_space_age_childhood_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_man_from_nowhere_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/unperfect_christmas_wish_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_phantom_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_sacred_spirit_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_355_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_holiday_fix_up_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_pharm_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/river's_end:_california's_latest_water_war_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_demented_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/fire_island_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/seven_deadly_sins:_lust_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/scream_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/silverton_siege_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/last_seen_alive_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_power_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_sparks_brothers_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_final_code_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/feeling_butterflies_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/one_of_ours_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/in_search_of_tomorrow_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/one_summer_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/a_genie's_tail_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/igilbert_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/women_of_the_white_buffalo_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_great_american_tag_sale_with_martha_stewart_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_devil's_ring_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/venom:_let_there_be_carnage_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/subjects_of_desire_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/slumber_party_massacre_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_seance_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/and_just_like_that..._the_documentary_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/¡a_todo_tren!_destino_asturias_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/dakota_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/my_sister's_keeper_2009	\N	\N
https://forummovies.org/reviews/phill_freeman/outside_providence_1999	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/blue_jasmine_2013	\N	\N
https://palomitas.es/reviews/melissa_stillton/steve_mcqueen:_the_lost_movie_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/deep_water_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/priest_of_love_1981	\N	\N
https://palomitas.es/reviews/paul_pendergast/married_to_the_mob_1988	\N	\N
https://forummovies.org/reviews/paul_mulligan/quickening_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_monkey_king:_the_legend_begins_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/elizabeth:_the_unseen_queen_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/seance_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/return_to_montauk_2017	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/doctor_strange_in_the_multiverse_of_madness_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/zone_414_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_ledge_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/home2home_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_conjuring:_the_devil_made_me_do_it_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/wired_shut_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/ted_k_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_cleveland_kidnappings_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/rise_of_the_guardians_2012	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_finellis_movie_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/surviving_paradise:_a_family_tale_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/stay_on_board:_the_leo_baker_story_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_bezonians_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/stillwater_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_house_of_flowers:_the_movie_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/try_harder!_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_beatles_and_india_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_tinder_swindler_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/woodstock_99:_peace_love_and_rage_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/mr._malcolm's_list_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/downton_abbey:_a_new_era_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/pirates_of_the_caribbean:_dead_man's_chest_2006	\N	\N
https://andysreviews.org/wordpress/andy_connor/tyson's_run_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/elizabeth:_a_portrait_in_part(s)_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_right_one_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_slow_hustle_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/elizabethtown_2005	\N	\N
https://forummovies.org/reviews/phill_freeman/the_french_dispatch_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/hollywood_stargirl_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/seduction_&_snacks_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/moriah's_lighthouse_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/bill_burr:_live_at_red_rocks_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_united_states_of_insanity_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_mulligan_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/senior_moment_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/to_which_we_belong_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_housewife_and_the_hustler_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2002	\N	\N
https://palomitas.es/reviews/melissa_stillton/jerry_and_marge_go_large_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_exchange_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_automat_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_most_reluctant_convert_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/glengarry_glen_ross_1992	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/frank_and_penelope_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_ploughman's_lunch_1983	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_souvenir:_part_ii_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_novice_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/eddie_izzard:_wunderbar_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_baker's_son_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/truth_to_power_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/rumble_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/violet_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/woodlands_dark_and_days_bewitched:_a_history_of_folk_horror_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/wrath_of_man_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/puff:_wonders_of_the_reef_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_twin_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/vivo_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/moonfall_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/warming_up_to_you_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/jackass_forever_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/paradise_highway_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/vacation_friends_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_sailor_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/deep_blue_sea_1999	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/beetlejuice_1988	\N	\N
https://forummovies.org/reviews/phill_freeman/rock_of_ages_2012	\N	\N
https://andysreviews.org/wordpress/andy_connor/voyagers_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/what?_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/under_the_volcano_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_tomorrow_war_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/palmer_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/out_stealing_horses_2019	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/yes_day_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/a_cowgirl's_song_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/sweet_as_pie_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/two_cents_from_a_pariah_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_unspeakable_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/emergency_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/endangered_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/a_star_is_born_2018	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/samantha_rose_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_49th_annual_daytime_emmy_awards_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/valldaura:_a_quarantine_cabin_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/this_is_gwar_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_girl_in_the_window_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/elvis_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/to_rome_with_love_2012	\N	\N
https://forummovies.org/reviews/paul_mulligan/metal_lords_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/pati_patni_and_joe_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/this_much_i_know_to_be_true_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/funny_pages_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/dog_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/still_alice_2014	\N	\N
https://andysreviews.org/wordpress/andy_connor/strings_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/otra_forma_de_entender_la_vida_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/wish_dragon_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/love_under_the_lemon_tree_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/polar_bear_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/walking_with_herb_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/men_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/jeff_foxworthy:_the_good_old_days_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/one_shot_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/flushed_away_2006	\N	\N
https://palomitas.es/reviews/paul_pendergast/south_park:_post_covid_-_the_return_of_covid_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_wrong_valentine_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_girl_who_believes_in_miracles_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/elizabeth_windsor_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_replacement_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_avengers_2012	\N	\N
https://forummovies.org/reviews/phill_freeman/talk_radio_1988	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_shadow_1994	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tankhouse_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/paris_can_wait_2016	\N	\N
https://forummovies.org/reviews/paul_mulligan/neverwas_2005	\N	\N
https://palomitas.es/reviews/melissa_stillton/river_road_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/together_together_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/american_carnage_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/clowning_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/nude_tuesday_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/fantastic_beasts:_the_secrets_of_dumbledore_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_hobbit:_the_desolation_of_smaug_2013	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/south_beach_love_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/a_splash_of_love_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/past_shadows_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_outfit_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/saints_&_sinners_judgment_day_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_shout_1978	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_wheel_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/wild_game_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_green_sea_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/gabriel's_rapture:_part_two_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/butlers_in_love_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/angels_&_demons_2009	\N	\N
https://palomitas.es/reviews/paul_pendergast/malicious_mind_games_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/open_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_beta_test_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/leave_no_trace_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/uncharted_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/revealed:_the_hunt_for_bin_laden_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_enormity_of_life_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/after_yang_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/payback_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/searching_for_cannibal_holocaust_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/mr._holmes_2015	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/shock_docs_amityville_horror_house_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_price_of_freedom_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/wework:_or_the_making_and_breaking_of_a_$47_billion_unicorn_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_forever_prisoner_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/paul_dood's_deadly_lunch_break_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/times_square_1980	\N	\N
https://andysreviews.org/wordpress/andy_connor/theo_von:_regular_people_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_fabulous_filipino_brothers_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_adventures_of_pluto_nash_2002	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/snakehead_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_departed_2006	\N	\N
https://palomitas.es/reviews/paul_pendergast/civil:_ben_crump_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/after_jackie_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/drunk_parents_2019	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_one_and_only_dick_gregory_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/wicked_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/how_did_we_get_here?_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/second_chances_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/redeeming_love_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_simple-minded_murderer_1982	\N	\N
https://forummovies.org/reviews/phill_freeman/easter_sunday_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/spring_awakening:_those_you've_known_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/octopus_pot_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/day_shift_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/to_all_the_boys:_always_and_forever_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/this_is_port_adelaide_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/wolf_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_day_the_music_died/american_pie_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/killer_ambition_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/gone_in_the_night_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/potato_dreams_of_america_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/willy's_wonderland_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_wedding_trip_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/who_we_are:_a_chronicle_of_racism_in_america_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/shut_in_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_2021_rock_&_roll_hall_of_fame_induction_ceremony_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_dig_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_voyeurs_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/she's_having_a_baby_1988	\N	\N
https://andysreviews.org/wordpress/andy_connor/look_at_me:_xxxtentacion_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_chronicle_mysteries_helped_to_death_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/catherine_cohen:_the_twist...?_she's_gorgeous_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/spring_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/scenes_from_an_empty_church_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/13:_the_musical_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/luck_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/sand_dollar_cove_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/icahn:_the_restless_billionaire_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/shang-chi_and_the_legend_of_the_ten_rings_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/norm_macdonald:_nothing_special_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_boss_baby:_family_business_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/spin_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/pleasure_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/rise_of_the_footsoldier:_origins_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/family_squares_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/ritual_2002	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_lost_leonardo_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_princess_switch_3_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/along_came_polly_2004	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_inside_outtakes_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/royal_blossom_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/toy_aficiao_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_perfect_family_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/queen_bees_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/romeo_&_juliet_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/radford_returns_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/v/h/s/94_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/sisters_on_track_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_jesus_music_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/crimes_of_the_future_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/soccer_mom_madam_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_adventures_of_peanut_and_pig_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_forgiven_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/take_me_to_tarzana_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/strange_friends_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_royal_tenenbaums_2001	\N	\N
https://forummovies.org/reviews/phill_freeman/the_winter_palace_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_white_tiger_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/deep_in_the_heart:_a_texas_wildlife_story_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_swim_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/people_just_do_nothing:_big_in_japan_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/2000_mules_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_wall:_climb_for_gold_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_hyperions_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_caitlyn_jenner_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/together_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_city_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/operation_mincemeat_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_64th_annual_grammy_awards_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_getaway_1994	\N	\N
https://forummovies.org/reviews/paul_mulligan/oprah_with_meghan_and_harry:_a_cbs_primetime_special_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/fourth_of_july_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_united_states_vs._billie_holiday_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/exposure_36_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/sweet_carolina_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/ricardo_quevedo:_tomorrow_will_be_worse_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/six_degrees_of_separation_1993	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/why_did_you_kill_me?_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_kids_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/studio_666_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_weekend_away_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/outside_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/return_to_space_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/presence_of_love_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/resident_evil:_welcome_to_raccoon_city_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_only_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/diamond_hands:_the_legend_of_wallstreetbets_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/dirty_daddy:_the_bob_saget_tribute_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/burden_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/women_is_losers_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/seaspiracy_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/love_you_anyway_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_storms_of_jeremy_thomas_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_in_between_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tinsel_-_the_lost_movie_about_hollywood_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_loneliest_whale:_the_search_for_52_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/volcanic_ufo_mysteries_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/wildhood_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/resisting_roots_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/county_line:_all_in_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/found_wandering_lost_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/putting_love_to_the_test_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_cursed_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_ballad_of_billy_mccrae_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_royal_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/king_tweety_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/without_remorse_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/loaded_weapon_1_1993	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/to_catch_a_spy_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_43rd_annual_kennedy_center_honors_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/there_is_no_i_in_threesome_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_last_mountain_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/romance_to_the_rescue_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/miami_blues_1990	\N	\N
https://forummovies.org/reviews/phill_freeman/the_mauritanian_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/love_accidentally_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_starling_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_27-hour_day_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_loud_house_movie_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/you're_watching_video_music_box_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/marry_me_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/trigger_point_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_razz_guy_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/great_balls_of_fire!_1989	\N	\N
https://forummovies.org/reviews/paul_mulligan/before_you_know_it_2019	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_alpines_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/scooby-doo!_the_sword_and_the_scoob_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/gold_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/mamma_mia!_2008	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/against_the_ice_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/resurgence_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/jim_&_piraterna_blom_1987	\N	\N
https://andysreviews.org/wordpress/andy_connor/secret_santa_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/three_months_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/untold:_malice_at_the_palace_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/two_for_the_win_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/see_you_next_christmas_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_lost_sons_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/mini's_first_time_2006	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/terry_bradshaw:_going_deep_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/vengeance_is_mine_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/slash/back_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/god's_waiting_room_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/true_things_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_mystery_of_her_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_maltese_holiday_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_unholy_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/time_for_them_to_come_home_for_christmas_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/last_action_hero_1993	\N	\N
https://palomitas.es/reviews/paul_pendergast/watergate:_high_crimes_in_the_white_house_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/nope_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/jackass_shark_week_2.0_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/moon_manor_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/skateshop_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_batman_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_velvet_underground_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/moonshot_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/we_broke_up_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/what_drives_us_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/v.c._andrews'_landry_family_v.c._andrews'_hidden_jewel_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_rescue_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/murder_at_yellowstone_city_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/rattle-can_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/prey_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/jane_fonda_&_lily_tomlin:_ladies_night_live_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/step_into..._the_movies_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_fellowship_of_the_ring_2001	\N	\N
https://forummovies.org/reviews/paul_mulligan/blind_2016	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/sonic_the_hedgehog_2_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_map_of_tiny_perfect_things_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/where_the_land_meets_the_sky_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/wedding_season_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/out_of_time_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_one_you're_with_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/those_who_wish_me_dead_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_red_star_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/superior_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_nine_kittens_of_christmas_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_river_runner_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_ice_road_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/ranveer_vs._wild_with_bear_grylls_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/silent_night_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/dying_for_chocolate:_a_curious_caterer_mystery_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_power_of_the_dog_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/me_time_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/twyla_moves_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_smartest_kids_in_the_world_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/triumph_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/i_love_my_dad_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/state_and_main_2000	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/in_order_of_disappearance_2014	\N	\N
https://palomitas.es/reviews/paul_pendergast/family_camp_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/x-men:_days_of_future_past_2014	\N	\N
https://palomitas.es/reviews/melissa_stillton/redeemed_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/road_trip_romance_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/our_christmas_journey_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/veneciafrenia_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/flux_gourmet_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/don't_make_me_go_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/pixie_2020	\N	\N
https://palomitas.es/reviews/melissa_stillton/what_is_a_woman?_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_lcd_soundsystem_holiday_special_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_boss_baby_2017	\N	\N
https://palomitas.es/reviews/melissa_stillton/adeline_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/virus-32_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/rhapsody_of_love_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/ghosts_of_mississippi_1996	\N	\N
https://forummovies.org/reviews/paul_mulligan/saying_yes_to_christmas_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_confession_1999	\N	\N
https://palomitas.es/reviews/melissa_stillton/minions:_the_rise_of_gru_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/pirates_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/motherless_brooklyn_2019	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_good_neighbor_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/range_roads_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/muppet_treasure_island_1996	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/girl_in_the_picture_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/el_rezador_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/this_is_the_night_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/street_gang:_how_we_got_to_sesame_street_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_woman_in_the_window_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_killer_in_my_backyard_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/scarborough_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/robbo:_the_bryan_robson_story_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/david_spade:_nothing_personal_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/david_a._arnold:_it_ain't_for_the_weak_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/see_you_then_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/running_with_the_devil:_the_wild_world_of_john_mcafee_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2014	\N	\N
https://palomitas.es/reviews/melissa_stillton/secrets_in_the_wilderness_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/south_of_heaven_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/stop_and_go_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/trevor_noah_presents_josh_johnson:_#_(hashtag)_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/that's_amor_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/tulsa:_the_fire_and_the_forgotten_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_day_sports_stood_still_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/salt-n-pepa_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_united_way_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/strip_down_rise_up_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/pray_away_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/lotawana_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_colour_room_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/super_turnt_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/samaritan_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_good_liar_2019	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/sex_appeal_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/parallel_mothers_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/father_of_the_bride_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_hobbit:_an_unexpected_journey_2012	\N	\N
https://forummovies.org/reviews/phill_freeman/the_daughter_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/everything_everywhere_all_at_once_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/run_&_gun_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/soy_rada:_serendipity_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/spiderhead_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_jump_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/her_private_hell_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/carole_king_&_james_taylor:_just_call_out_my_name_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/game_set_love_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/kimi_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/line_sisters_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/roadrunner:_a_film_about_anthony_bourdain_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/bear_witness_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/biffy_clyro:_cultural_sons_of_scotland_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/top_gun:_maverick_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/snowkissed_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/repeat_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_wisdom_of_trauma_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/press_play_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_guilty_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_matrix_resurrections_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/prince_philip:_the_man_behind_the_throne_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/single_all_the_way_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/working_girl_1988	\N	\N
https://forummovies.org/reviews/paul_mulligan/torn_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/tosh_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/phil_wang:_philly_philly_wang_wang_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/resort_to_love_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/one_winter_wedding_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_healing_garden_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/suburban_girl_2007	\N	\N
https://palomitas.es/reviews/paul_pendergast/assailant_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/jackass_4.5_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_mystery_of_marilyn_monroe:_the_unheard_tapes_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/project_pay_day_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_last_bus_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_horrific_evil_monsters_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/when_today_ends_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/sweet_girl_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/passing_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/respect_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/swan_song_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/rip_in_time_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/home_alone_2:_lost_in_new_york_1992	\N	\N
https://palomitas.es/reviews/paul_pendergast/paws_of_fury:_the_legend_of_hank_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/untold:_the_rise_and_fall_of_and1_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/our_father_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_act_of_reading_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/mercury_rising_1998	\N	\N
https://andysreviews.org/wordpress/andy_connor/ricky_gervais:_supernature_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/crush_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/secret_agent_dingledorf_and_his_trusty_dog_splat_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/a_second_chance_at_love_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/city_of_vultures_2_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/along_for_the_ride_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/hidden_gems_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_exorcism_of_god_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/a_tear_in_the_sky_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/queenpins_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/this_little_love_of_mine_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/tom_and_jerry:_cowboy_up!_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/melancholia_2011	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_sixth_secret_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_score_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/no_woman_no_try_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/private_network:_who_killed_manuel_buendía?_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/our_lady_of_san_juan_four_centuries_of_miracles_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_tragedy_of_macbeth_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/olivia_rodrigo:_driving_home_2_u_(a_sour_film)_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/dating_the_delaneys_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_matchmaker_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/paper_&_glue_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/dancing_on_glass_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/sweet_pecan_summer_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/the_75th_annual_tony_awards_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/x-men:_the_last_stand_2006	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/things_heard_&_seen_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/ambulance_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/road_to_perth_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/she_will_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/cypress_hill:_insane_in_the_brain_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/taking_the_reins_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/rescued_by_ruby_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/shock_docs_the_exorcism_of_roland_doe_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/erzulie_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/it_snows_all_the_time_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/gatlopp_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_hall:_honoring_the_greats_of_stand-up_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/congo_1995	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_survivor_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/peter_rabbit_2:_the_runaway_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_return_of_the_king_2003	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/plan_b_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/sonsational_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/teen_titans_go!_&_dc_super_hero_girls:_mayhem_in_the_multiverse_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_judge_of_harbor_county_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/mother's_love_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/just_one_kiss_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/tollbooth_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/white_hot:_the_rise_&_fall_of_abercrombie_&_fitch_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/werewolves_within_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/pig_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_legend_of_the_underground_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/pharma_bro_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/amistad_1997	\N	\N
https://andysreviews.org/wordpress/andy_connor/glorious_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_house_of_snails_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/untrapped:_the_story_of_lil_baby_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/plenty_1985	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/wash_my_soul_in_the_river's_flow_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_race_to_save_the_world_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/benjamin_franklin_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/patrice_o'neal:_killing_is_easy_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/fresh_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/zebra_girl_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/machine_gun_kelly's_life_in_pink_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/proyecto_emperador_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_cleaner_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/lucy_and_desi_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/too_soon:_comedy_after_9/11_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/burn_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/switched_before_birth_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_28th_annual_screen_actors_guild_awards_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_new_york_times_presents_framing_britney_spears_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_addams_family_2_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/joyride_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_three_musketeers_1993	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/raya_and_the_last_dragon_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_fallout_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/oslo_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_righteous_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_children_of_god_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/tony_hawk:_until_the_wheels_fall_off_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/my_grown-up_christmas_list_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/real_talk_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_many_saints_of_newark_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/spin_me_round_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_boss_baby:_family_business_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/storm_lake_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/ron's_gone_wrong_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/sheryl_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/roller_squad_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/reefa_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/11m:_terror_in_madrid_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/insomnia_2002	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/hick_2011	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_way_of_miracles_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/infinitum:_subject_unknown_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/my_best_friend's_girl_2008	\N	\N
https://andysreviews.org/wordpress/andy_connor/backpackers_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/brut_force_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_sound_of_scars_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/scandal_1989	\N	\N
https://forummovies.org/reviews/phill_freeman/unicorn_town_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/restoration_1995	\N	\N
https://palomitas.es/reviews/paul_pendergast/lost_angel_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/set!_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/where_is_anne_frank_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/i_do_(but_i_don't)_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_bob's_burgers_movie_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_reunion_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/taylor_tomlinson:_look_at_you_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/groundswell_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/we_met_in_virtual_reality_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/gabriel's_rapture:_part_three_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_marrying_man_1991	\N	\N
https://andysreviews.org/wordpress/andy_connor/breaking_the_waves_1996	\N	\N
https://forummovies.org/reviews/paul_mulligan/road_to_damascus_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/paw_patrol:_the_movie_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_grand_duke_of_corsica_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/insomnia_1997	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_perfect_pairing_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/jurassic_world_dominion_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/two_bits_1995	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_hunt_for_planet_b_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/dinosaurs_-_the_final_day_with_david_attenborough_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/dune_1984	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/our_towns_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/see_for_me_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/toying_with_the_holidays_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_conservation_game_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_man_from_toronto_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/i_want_you_back_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/ultrasound_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_first_wave_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_deep_house_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/sweetheart_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/borrego_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_super_bob_einstein_movie_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/paranormal_activity:_next_of_kin_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_girl_who_got_away_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/apt_pupil_1998	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/superhost_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/rock_dog_2:_rock_around_the_park_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/junkyard_dogs_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/torn_hearts_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/the_northman_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/halftime_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/vengeance_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_girl_with_the_dragon_tattoo_2011	\N	\N
https://palomitas.es/reviews/melissa_stillton/rumba_love_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/heaven's_prisoners_1996	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/never_alone_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/open_by_christmas_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/good_luck_to_you_leo_grande_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/persona:_the_dark_truth_behind_personality_tests_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/truly_texas_mexican_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/all_the_old_knives_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/anything's_possible_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_spine_of_night_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/alice_1990	\N	\N
https://forummovies.org/reviews/phill_freeman/stowaway_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/good_will_hunting_1997	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/west_side_story_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/moses_storm:_trash_white_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/tom_daley:_illegal_to_be_me_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/single_black_female_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/snoop_dogg's_f*cn_around_comedy_special_2022	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_wrath_of_god_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_colony_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_village_detective:_a_song_cycle_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/raunch_and_roll_2021	\N	\N
https://forummovies.org/reviews/paul_mulligan/through_my_window_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/american_experience_plague_at_the_golden_gate_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/rogue_agent_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/the_unwonted_sasquatch_-_director's_cut_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/losing_addison_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/memory_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/inside_the_mind_of_a_cat_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/finding_carlos_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/sometime_other_than_now_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/katrina_babies_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/shattered_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_wonderful:_stories_from_the_space_station_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/clue_1985	\N	\N
https://forummovies.org/reviews/phill_freeman/christina_p.:_mom_genes_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/aloha_with_love_2022	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_unforgivable_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/simple_as_water_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/beast_beast_2020	\N	\N
https://andysreviews.org/wordpress/andy_connor/north_to_home_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/chip_'n_dale:_rescue_rangers_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/dancer_in_the_dark_2000	\N	\N
https://andysreviews.org/wordpress/andy_connor/spencer_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/small_city_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/trust_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/morbius_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/streamline_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/reno_911!:_the_hunt_for_qanon_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_laws_of_the_border_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/the_most_beautiful_boy_in_the_world_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/south_park:_the_25th_anniversary_concert_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/show_me_the_father_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_little_things_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/reminiscence_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_found_footage_phenomenon_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/twisted_little_lies_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/wrong_turn_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/torn_from_her_arms_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/wolfgang_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/thomas_and_the_magic_railroad_2000	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/timecode_2000	\N	\N
https://forummovies.org/reviews/phill_freeman/the_electrical_life_of_louis_wain_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/zack_snyder's_justice_league_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/honor_society_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_daughter_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_laureate_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_sky_is_everywhere_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/vanished:_searching_for_my_sister_2022	\N	\N
https://forummovies.org/reviews/phill_freeman/harlan_county_war_2000	\N	\N
https://forummovies.org/reviews/phill_freeman/tom_and_jerry_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/spider-man:_no_way_home_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/the_witcher:_nightmare_of_the_wolf_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/bill_maher:_#adulting_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/romeo_santos:_king_of_bachata_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/the_modern_way_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/what_she_said_2021	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_vault_2021	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/small_engine_repair_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/zoey's_extraordinary_christmas_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/sing_2_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/scary_movie_2_2001	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/stars_fell_on_alabama_2021	\N	\N
https://palomitas.es/reviews/melissa_stillton/randy_rhoads:_reflections_of_a_guitar_icon_2022	\N	\N
https://forummovies.org/reviews/paul_mulligan/floodlights_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/brian_and_charles_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/the_bad_guys_2022	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/the_rocky_horror_picture_show_1975	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/fittest_on_earth:_next_gen_2022	\N	\N
https://blockbusted.org/jim/jim_mc-cauling/facing_nolan_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/as_they_made_us_2022	\N	\N
https://palomitas.es/reviews/paul_pendergast/love_in_the_limelight_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/red_rocket_2021	\N	\N
https://palomitas.es/reviews/paul_pendergast/salesmen_2022	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/the_santa_stakeout_2021	\N	\N
https://cars_n_movies.com/movie_reviews/clint_brinner/you_me_&_the_christmas_trees_2021	\N	\N
https://forummovies.org/reviews/phill_freeman/to_be_determined_2021	\N	\N
https://andysreviews.org/wordpress/andy_connor/kinsey_2004	\N	\N
https://myspace.us/claires_word/movies/claire_johnson/book_of_love_2022	\N	\N
\.


--
-- Data for Name: peliculas; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.peliculas (anno, titulo, duracion, idioma, calificacion, nombre_personal_director) FROM stdin;
2022	The Wrath of God	97	es	\N	\N
2021	The War Below	96	en	\N	\N
2022	The House	97	en	\N	\N
2022	Paul Virzi: Nocturnal Admissions	65	en	\N	\N
2022	Day Shift	113	en	R	\N
2006	Pirates of the Caribbean: Dead Man's Chest	151	en	PG-13	Gore Verbinski
1998	The Avengers	89	en	PG-13	Joss Whedon
2014	The Hobbit: The Battle of the Five Armies	144	en	\N	Peter Jackson
2001	Cats & Dogs	87	en	PG	\N
2021	Overrun	105	en	\N	\N
2022	Love Under the Lemon Tree	88	en	\N	\N
2022	The Janes	101	en	\N	\N
2021	Torn from Her Arms	86	en	\N	\N
2022	Orphan: First Kill	99	en	R	\N
2022	The Tinder Swindler	114	en	\N	\N
2016	The Promise	133	en	PG-13	\N
2021	The Slow Hustle	88	en	\N	\N
2021	Rock Dog 2: Rock Around the Park	87	en	\N	\N
2022	Spiderhead	106	en	R	\N
2022	Brian and Charles	90	en	PG	\N
2022	Terror on the Prairie	107	en	\N	\N
2021	You Me & the Christmas Trees	84	en	\N	\N
2021	The Electrical Life of Louis Wain	111	en	PG-13	\N
2022	Katrina Babies	79	en	\N	\N
2022	Chickenhare and the Hamster of Darkness	91	en	\N	\N
2022	Windfall	92	en	R	\N
2006	The Departed	151	en	R	Martin Scorsese
2022	Here Out West	120	en	\N	\N
2022	Deep in the Heart: A Texas Wildlife Story	101	en	\N	\N
2021	The Man Who Fell from the Sky	60	en	\N	\N
2021	Steve McQueen: The Lost Movie	87	en	\N	\N
2022	North of the 10	154	en	\N	\N
2022	Trevor: The Musical	113	en	\N	\N
2022	Block Party	90	en	\N	\N
1990	Miami Blues	97	en	\N	George Armitage
2021	Xtreme	111	es	\N	\N
2002	No Good Deed	97	en	R	Bob Rafelson
2022	City of Vultures 3	83	en	\N	\N
2022	Jeff Foxworthy: The Good Old Days	60	en	\N	\N
2000	Charlie's Angels	98	en	PG-13	\N
2022	Last Seen Alive	95	en	R	\N
1997	Insomnia	96	no	\N	\N
2002	The Adventures of Pluto Nash	95	en	PG-13	\N
2022	Cristela Alonzo: Middle Classy	60	en	\N	\N
2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony	188	en	\N	\N
2021	Prince of Muck	77	en	\N	\N
2022	The Inside Outtakes	63	en	\N	\N
2021	Road to Perth	82	en	\N	\N
2021	Schumacher	112	en	\N	\N
2021	Reopening Night	85	en	\N	\N
2022	13: The Musical	91	en	PG	\N
2022	Metal Lords	97	en	R	\N
2021	The Seance	82	en	\N	\N
2022	American Werewolves	80	en	\N	\N
2021	The King's Man	131	en	R	\N
2022	Explorer	140	en	\N	\N
2021	This Is Not a War Story	112	en	\N	\N
2021	The Kids	88	en	\N	\N
2014	Still Alice	101	en	PG-13	\N
2021	The Lost Sons	98	en	\N	\N
2022	In Search of Tomorrow	305	en	\N	\N
2021	The Velvet Underground	121	en	R	\N
2022	Beavis and Butt-Head Do the Universe	87	en	\N	\N
2021	The Passenger	90	es	\N	\N
2021	The Valentine Competition	92	en	\N	\N
2021	Scenes from an Empty Church	98	en	\N	\N
2021	Zoey's Extraordinary Christmas	99	en	\N	\N
2013	Thor: The Dark World	112	en	PG-13	\N
2021	The Housewives of the North Pole	84	en	\N	\N
2021	The Pebble and the Boy	101	en	\N	\N
2022	Z-O-M-B-I-E-S 3	88	en	\N	\N
2021	Tollbooth	83	en	\N	\N
2021	Right in Front of Me	84	en	\N	\N
2021	The Last Mountain	107	en	R	\N
2022	Loving Highsmith	83	en	\N	\N
2021	Veneciafrenia	100	es	R	\N
2022	Elizabeth Windsor	90	en	\N	\N
2022	Love You Anyway	80	en	\N	\N
2022	Found Wandering Lost	99	en	\N	\N
2021	The Price of Freedom	94	en	\N	\N
2021	Show Me the Father	91	en	PG	\N
2022	Burden	95	en	\N	\N
2022	Joel Kim Booster: Psychosexual	67	en	\N	\N
2021	The Mauritanian	129	en	R	\N
2022	Clowning	96	en	\N	\N
2021	We Broke Up	80	en	\N	\N
2022	Redeeming Love	134	en	PG-13	\N
2021	Procession	118	en	R	\N
2022	The Royal	98	en	\N	\N
2021	The Last Letter from Your Lover	110	en	\N	\N
2021	Taking a Shot at Love	84	en	\N	\N
2021	Secretly Santa	85	en	\N	\N
2021	Two Yellow Lines	96	en	\N	\N
2022	My Grown-Up Christmas List	84	en	\N	\N
2021	iGilbert	90	en	\N	\N
2022	Home Team	95	en	PG	\N
2021	The Middle Man	95	en	\N	\N
2022	Carole King & James Taylor: Just Call Out My Name	90	en	\N	\N
2021	Sundown	82	en	R	\N
2022	City of Vultures 2	95	en	\N	\N
2021	SAS: Red Notice	124	en	R	\N
2021	Outside the Wire	114	en	R	\N
2021	The Man from Nowhere	79	en	\N	\N
2021	The Good Father: The Martin MacNeill Story	87	en	\N	\N
2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)	118	en	PG-13	\N
2022	Snoop Dogg's F*Cn Around Comedy Special	67	en	\N	\N
2022	Last Exit: Space	80	en	\N	\N
2021	Terry Venables: A Man Can Dream	97	en	\N	\N
2022	Inside the Mind of a Cat	67	en	\N	\N
2022	The Loyola Project	88	en	\N	\N
2021	Searchers	81	en	\N	\N
2022	Two Tickets to Paradise	84	en	\N	\N
2022	Presence of Love	84	en	\N	\N
2022	Death on the Nile	127	en	PG-13	\N
2022	2000 Mules	89	en	\N	\N
2021	UnPerfect Christmas Wish	90	en	\N	\N
2022	Rise	113	en	PG	\N
2022	Lie Hard	89	en	\N	\N
2022	The 49th Annual Daytime Emmy Awards	94	en	\N	\N
2021	Second Chances	79	en	\N	\N
2000	State and Main	105	en	R	\N
1988	The Unbearable Lightness of Being	171	en	\N	Philip Kaufman
2021	Simple as Water	97	en	\N	\N
2022	God's Waiting Room	95	en	\N	\N
2021	Single All the Way	99	en	\N	\N
2022	The Royal Treatment	96	en	\N	\N
2021	Roadrunner: A Film About Anthony Bourdain	119	en	R	\N
2022	The Sixth Secret	90	en	\N	\N
2022	Love Accidentally	85	en	\N	\N
2021	Sing 2	110	en	PG	\N
2022	The 75th Annual Tony Awards	138	en	\N	\N
2015	Avengers: Age of Ultron	141	en	PG-13	Joss Whedon
2022	Dating the Delaneys	84	en	\N	\N
2019	Motherless Brooklyn	144	en	R	\N
2021	The Map of Tiny Perfect Things	98	en	PG-13	\N
2012	Rock of Ages	123	en	PG-13	\N
2022	The Only	99	en	\N	\N
1995	Congo	109	en	PG-13	\N
1991	Oscar	109	en	\N	John Landis
2016	Blind	98	en	R	\N
2021	You're Watching Video Music Box	92	en	\N	\N
2022	The Northman	137	en	R	\N
2021	The Deep House	85	en	\N	\N
2022	Sheryl	94	en	\N	\N
2021	The Big Rant	84	en	\N	\N
1998	Apt Pupil	111	en	R	Bryan Singer
2021	The One You're With	88	en	\N	\N
2022	Spin Me Round	104	en	\N	\N
2021	The Gig Is Up	88	en	\N	\N
2021	The Man Putin Couldn't Kill	86	en	\N	\N
2022	Kimi	89	en	R	\N
2021	South Park: Post Covid - The Return of Covid	62	en	\N	\N
2000	Dancer in the Dark	140	en	R	Lars Von Trier
2021	Sunday Mornings	72	en	\N	\N
2021	Who We Are: A Chronicle of Racism in America	117	en	PG-13	\N
2021	The Princess Switch 3	106	en	\N	\N
2009	Angels & Demons	138	en	PG-13	Ron Howard
2021	Passing	98	en	PG-13	\N
2022	The Issue with Elvis	88	en	\N	\N
2022	The Day the Music Died/American Pie	94	en	\N	\N
2021	The Enormity of Life	102	en	\N	\N
2013	The Wolverine	126	en	PG-13	James Mangold
2021	The Forever Purge	103	en	R	\N
2021	The Secret Lives of College Freshmen	90	en	\N	\N
2021	Our Father	96	en	\N	\N
2021	The Spine of Night	93	en	\N	\N
1981	Priest of Love	125	en	\N	\N
2021	The Fabulous Filipino Brothers	99	en	\N	\N
2022	I Love My Dad	96	en	R	\N
1994	The Shadow	108	en	PG-13	\N
2022	Sonic the Hedgehog 2	122	en	PG	\N
2022	Losing Addison	90	en	\N	\N
2022	American Carnage	101	en	R	\N
2021	Slumber Party Massacre	86	en	\N	\N
2022	More Than Robots	89	en	\N	\N
2022	Elvis	159	en	PG-13	\N
2021	The Colour Room	108	en	\N	\N
2022	Untold: The Girlfriend Who Didn't Exist	124	en	\N	\N
2022	Torn Hearts	97	en	\N	\N
2021	The Unholy	99	en	PG-13	\N
2005	Neverwas	103	en	PG-13	\N
1988	Married to the Mob	104	en	\N	Jonathan Demme
2022	Ranveer vs. Wild with Bear Grylls	70	en	\N	\N
2021	River	75	en	\N	\N
2022	Watcher	91	en	R	\N
2021	The Laws of the Border	127	es	\N	\N
2021	The Green Knight	130	en	R	\N
1999	The Confession	114	en	R	\N
2021	Raya and the Last Dragon	107	en	PG	\N
2021	Till Death	88	en	R	\N
2022	Women of the White Buffalo	86	en	\N	\N
2022	Gamestop: Rise of the Players	94	en	R	\N
2021	Together	92	en	R	\N
1975	The Rocky Horror Picture Show	100	en	\N	\N
2022	Turning Red	100	en	PG	\N
2021	Spin	93	en	\N	\N
2021	The Toolbox Killer	89	en	\N	\N
2022	Hello Bookstore	86	en	\N	\N
1993	Malice	107	en	R	\N
2022	Picabo	91	en	\N	\N
2022	Game Set Love	84	en	\N	\N
2022	The Adventures of Peanut and Pig	75	en	\N	\N
2021	Symphoria	100	en	\N	\N
2022	Better Nate Than Ever	94	en	PG	\N
2022	Glorious	79	en	\N	\N
2021	Untold: Crimes and Penalties	85	en	\N	\N
2022	X	105	en	R	\N
1985	Plenty	121	en	\N	\N
2021	Women Is Losers	84	en	\N	\N
2021	The Green Sea	104	en	\N	\N
2021	Our Dream Wedding	87	en	\N	\N
2021	South of Heaven	120	en	\N	\N
2022	Ambulance	136	en	R	\N
2022	Return to Space	128	en	\N	\N
2022	Polar Bear	84	en	PG	\N
2021	Rushed	101	en	\N	\N
2022	Gabby Giffords Won't Back Down	98	en	PG-13	\N
2021	Subjects of Desire	103	en	\N	\N
2020	Beast Beast	85	en	\N	\N
2022	Frank and Penelope	112	en	R	\N
2022	Resisting Roots	91	en	\N	\N
2021	The Power of the Dog	126	en	R	\N
2022	The Lost	120	en	\N	\N
2021	Our Lady of San Juan Four Centuries of Miracles	122	es	\N	\N
2021	The Race to Save the World	102	en	\N	\N
2020	Pixie	93	en	R	\N
2022	A Cowgirl's Song	93	en	PG	\N
2021	Untold: Breaking Point	68	en	\N	\N
2021	Take Me to Tarzana	106	en	\N	\N
2021	The Secret of Sinchanee	115	en	\N	\N
2021	Palmer	110	en	R	\N
2021	Rise Again: Tulsa and the Red Summer	90	en	\N	\N
2022	Tosh	79	en	\N	\N
2021	WWE: Royal Rumble	230	en	\N	\N
2022	Moriah's Lighthouse	84	en	\N	\N
2021	V/H/S/94	103	en	\N	\N
2022	Samaritan	102	en	PG-13	\N
2021	Oslo	118	en	\N	\N
1997	Amistad	155	en	R	Steven Spielberg
2022	Chernobyl: The Lost Tapes	96	en	\N	\N
1995	Two Bits	85	en	PG-13	James Foley
2021	Scooby-Doo! The Sword and the Scoob	76	en	\N	\N
2021	The Unspeakable	90	en	\N	\N
2011	Melancholia	135	en	R	Lars Von Trier
2022	Hollywood Stargirl	105	en	PG	\N
2021	Vacation Friends	103	en	R	\N
2021	Try Harder!	85	en	\N	\N
2006	The Da Vinci Code	149	en	PG-13	Ron Howard
2021	Tom and Jerry	101	en	PG	\N
2021	Workhorse Queen	88	en	\N	\N
2021	To Catch a Spy	90	en	\N	\N
2022	I Want You Back	116	en	R	\N
1990	The Hunt for Red October	135	en	\N	John McTiernan
2021	The River Runner	86	en	\N	\N
2021	The Art of Incarceration	81	en	\N	\N
2021	Open	71	en	\N	\N
2022	Cave Rescue	99	en	PG-13	\N
2022	Purple Hearts	122	en	\N	\N
2022	Persuasion	107	en	PG	\N
2009	My Sister's Keeper	109	en	PG-13	\N
2022	Moon Manor	103	en	\N	\N
2022	Men	100	en	R	\N
2021	To Which We Belong	90	en	\N	\N
2022	Surviving Paradise: A Family Tale	78	en	\N	\N
2021	Truth to Power	79	en	\N	\N
1988	She's Having a Baby	106	en	\N	John Hughes
2011	Thor	115	en	PG-13	Kenneth Branagh
2022	My Fake Boyfriend	100	en	R	\N
2021	Zone 414	98	en	R	\N
2021	Open by Christmas	84	en	\N	\N
2021	Soy Rada: Serendipity	68	es	\N	\N
2021	tick tick... BOOM!	120	en	PG-13	\N
2021	Theo Von: Regular People	61	en	\N	\N
2022	Father Stu	124	en	R	\N
1995	Restoration	117	en	R	\N
2022	Press Play	85	en	PG-13	\N
2021	This Is Not a Comedy	105	es	\N	\N
2022	A Second Chance at Love	84	en	\N	\N
2021	Small Engine Repair	102	en	R	\N
2021	The Legend of Molly Johnson	109	en	\N	\N
2022	Our Father	97	en	\N	\N
2022	The Reunion	85	en	\N	\N
2022	Belle Vie	77	en	\N	\N
2016	Our Kind of Traitor	108	en	R	\N
2022	Wifelike	105	en	R	\N
2022	Resurrection	103	en	\N	\N
2021	Who is Bill Rebane?	115	en	\N	\N
2021	Rumba Love	103	en	\N	\N
2022	The Wall: Climb for Gold	96	en	\N	\N
2022	Paulie Go!	86	en	\N	\N
2022	Norm Macdonald: Nothing Special	86	en	\N	\N
2022	Leave No Trace	108	en	\N	\N
2022	Jessie and the Elf Boy	83	en	\N	\N
2022	Cypress Hill: Insane in the Brain	89	en	\N	\N
2021	The Real Charlie Chaplin	114	en	\N	\N
2022	Virus-32	90	es	\N	\N
1996	Heaven's Prisoners	132	en	R	\N
2021	The Eternal Moment	90	es	\N	\N
2022	Emergency	105	en	R	\N
1985	Clue	94	en	\N	\N
2019	Drunk Parents	97	en	R	\N
2021	Switched Before Birth	87	en	\N	\N
2022	The Mystery of Her	108	en	\N	\N
2021	The 27-Hour Day	85	en	\N	\N
2021	The Humans	108	en	R	\N
2021	Wrath of Man	119	en	R	\N
2022	Mo Gilligan: There's Mo to Life	65	en	\N	\N
2021	Sir Alex Ferguson: Never Give In	108	en	PG-13	\N
2021	The Space Between	95	en	R	\N
2021	Paranormal Activity: Next of Kin	98	en	R	\N
2001	Final Fantasy: The Spirits Within	106	en	PG-13	\N
2022	Moonfall	130	en	PG-13	\N
2022	Dual	94	en	R	\N
2021	Tina	118	en	\N	\N
2022	Master	98	en	R	\N
2021	Plan B	107	en	\N	\N
2021	Tony Parker: The Final Shot	98	en	\N	\N
2022	Freedom Uncut	87	en	\N	\N
2016	Rules Don't Apply	127	en	PG-13	\N
2022	River Road	88	en	\N	\N
2021	Rattle-Can	90	en	\N	\N
2021	The Little Things	128	en	R	\N
2022	Shattered	92	en	R	\N
2022	A Royal Runaway Romance	84	en	\N	\N
2021	Spencer	117	en	R	\N
2022	Dirty Daddy: The Bob Saget Tribute	83	en	\N	\N
2022	Life After You	90	en	R	\N
2021	The Justice of Bunny King	101	en	\N	\N
2022	A Genie's Tail	89	en	\N	\N
2021	The Good Boss	116	es	\N	\N
1991	The Marrying Man	115	en	R	\N
2022	The 64th Annual Grammy Awards	153	en	\N	\N
2022	Dancing on Glass	137	es	\N	\N
2021	The Killer in My Backyard	85	en	\N	\N
2021	The Grandmother	100	es	R	\N
2021	The 43rd Annual Kennedy Center Honors	91	en	\N	\N
2007	Suburban Girl	97	en	PG-13	\N
2021	The Housewife and the Hustler	68	en	\N	\N
2021	Red Snow	80	en	\N	\N
2021	Snakehead	97	en	\N	\N
2022	Me Time	101	en	R	\N
2021	Two for the Win	85	en	\N	\N
2022	Kick Like Tayla	60	en	\N	\N
2022	David A. Arnold: It Ain't for the Weak	78	en	\N	\N
2021	There Is No I in Threesome	88	en	\N	\N
2021	The Starling	102	en	PG-13	\N
2021	The Pedal Movie	142	en	\N	\N
2022	Endangered	90	en	\N	\N
2022	Navalny	98	en	R	\N
2021	One Summer	84	en	\N	\N
2021	Together Together	90	en	R	\N
2022	Tom Daley: Illegal to Be Me	60	en	\N	\N
2008	Mamma Mia!	108	en	PG-13	\N
2021	The Hating Game	102	en	R	\N
2022	Catherine Cohen: The Twist...? She's Gorgeous	61	en	\N	\N
2021	The Laureate	104	en	R	\N
2022	Her Private Hell	84	en	\N	\N
2021	The Clue to Love	84	en	\N	\N
2022	How Did We Get Here?	90	en	\N	\N
2021	Seaspiracy	89	en	\N	\N
2022	David Spade: Nothing Personal	66	en	\N	\N
2021	The Matrix Resurrections	148	en	R	\N
2021	Queenpins	110	en	R	\N
1997	Good Will Hunting	126	en	R	Gus Van Sant
2022	Nude Tuesday	90	en	\N	\N
2021	Playing Cupid	84	en	\N	\N
2021	The Virtuoso	110	en	R	\N
2022	Downfall: The Case Against Boeing	89	en	PG-13	\N
2021	The Perfect Family	110	es	\N	\N
2022	Trophy Wife	87	en	\N	\N
2022	Due Season	93	en	\N	\N
2021	The Survivor	129	en	R	\N
1983	The Ploughman's Lunch	107	en	\N	Richard Eyre
2022	Fittest on Earth: Next Gen	118	en	\N	\N
2021	Silent Hours	156	en	\N	\N
2022	Run & Gun	96	en	R	\N
2021	The United States vs. Billie Holiday	126	en	R	\N
1997	Swept from the Sea	115	en	PG-13	\N
2022	Tony Hawk: Until the Wheels Fall Off	135	en	\N	\N
2022	Backpackers	96	es	\N	\N
2022	Stroke of Luck	81	en	\N	\N
2021	Too Soon: Comedy After 9/11	90	en	\N	\N
2022	Love Fashion Repeat	90	en	\N	\N
2021	The Score	100	en	\N	\N
2021	Ultrasound	103	en	\N	\N
2022	The Photographer: Murder in Pinamar	106	es	\N	\N
2021	Operation Mincemeat	128	en	PG-13	\N
2022	Home2Home	111	en	\N	\N
2020	Chick Fight	97	en	R	\N
2021	You Are Not My Mother	93	en	\N	\N
2021	Space Titans: Musk Bezos Branson	120	en	\N	\N
2021	The Devil's Ring	95	en	\N	\N
2021	The Story of Film: A New Generation	160	en	\N	\N
2021	People Just Do Nothing: Big in Japan	97	en	R	\N
2022	Wuthering Heights	150	en	\N	\N
2022	Chip 'n Dale: Rescue Rangers	97	en	PG	\N
2022	No Exit	95	en	R	\N
2021	Warming up to you	84	en	\N	\N
2021	Strings	84	en	\N	\N
2022	The Finellis Movie	90	en	\N	\N
2021	The Christmas Promise	84	en	\N	\N
2021	Respect	145	en	PG-13	\N
2021	Seance	92	en	R	\N
2021	The Black Phone	103	en	R	\N
2022	No Woman No Try	63	en	\N	\N
2021	Two Cents from a Pariah	82	en	\N	\N
2021	The Healing Garden	95	en	\N	\N
2021	The Wisdom of Trauma	87	en	\N	\N
2022	Los Tigres Del Norte: Stories to Tell	105	es	\N	\N
2021	The Super Bob Einstein Movie	75	en	\N	\N
2022	White Hot: The Rise & Fall of Abercrombie & Fitch	88	en	\N	\N
2022	Love & Gelato	110	en	\N	\N
2021	Otra forma de entender la vida	69	es	\N	\N
2008	My Best Friend's Girl	101	en	R	\N
2021	Spring	87	en	\N	\N
2021	One of Ours	88	en	\N	\N
2019	Before You Know It	98	en	\N	\N
2021	West Side Story	156	en	PG-13	\N
2021	Project Pay Day	91	en	\N	\N
2021	The Beta Test	93	en	\N	\N
2022	Jurassic World Dominion	147	en	PG-13	\N
2021	The Conservation Game	107	en	PG-13	\N
2021	The Harder They Fall	139	en	R	\N
2021	Romeo Santos: King of Bachata	92	en	\N	\N
2021	The Guilty	90	en	R	\N
2018	The Public	119	en	PG-13	\N
2021	Patrice O'Neal: Killing Is Easy	91	en	\N	\N
2021	Own the Room	91	en	\N	\N
2022	Gatlopp	80	en	\N	\N
2021	Reefa	96	en	\N	\N
2022	Olivia Rodrigo: driving home 2 u (a SOUR film)	76	en	\N	\N
2022	Swap Me Baby	82	en	\N	\N
2021	The Most Reluctant Convert	73	en	\N	\N
2022	A Tail of Love	87	en	\N	\N
2022	Vanished: Searching for My Sister	85	en	\N	\N
2021	Vengeance Is Mine	79	en	\N	\N
2022	The Perfect Pairing	82	en	\N	\N
2021	The Mitchells vs the Machines	114	en	\N	\N
2022	Scream	114	en	R	\N
2021	Prayers for the Stolen	110	es	R	\N
2022	Marry Me	112	en	PG-13	\N
2021	The Smartest Kids in the World	105	en	\N	\N
2021	Silent Night	92	en	\N	\N
2021	This is Gwar	112	en	\N	\N
2022	Heart of the Matter	85	en	\N	\N
2021	We're All Going to the World's Fair	86	en	\N	\N
2019	Arctic Dogs	92	en	PG	\N
2011	The Girl with the Dragon Tattoo	158	en	R	David Fincher
2021	Woodlands Dark and Days Bewitched: A History of Folk Horror	194	en	\N	\N
2021	The Card Counter	111	en	R	\N
2021	Saying Yes to Christmas	90	en	\N	\N
2021	The Replacement	117	es	\N	\N
2021	Quickening	90	en	\N	\N
2022	Putting Love to the Test	91	en	\N	\N
2022	They Live in the Grey	123	en	\N	\N
2022	Gerry Anderson: A Life Uncharted	88	en	\N	\N
2022	Pride Jewel	96	en	\N	\N
2022	Terry Bradshaw: Going Deep	74	en	\N	\N
2022	Wedding Season	98	en	\N	\N
2021	The Tender Bar	106	en	R	\N
2022	The Sea Beast	115	en	\N	\N
2021	The Power	92	en	\N	\N
2022	Fire Island	105	en	\N	\N
2022	Morbius	104	en	PG-13	\N
2017	Return to Montauk	106	de	\N	\N
2021	Saving Sloane	89	en	PG	\N
2022	Eddie Izzard: Wunderbar	78	en	\N	\N
2021	Stowaway	116	en	\N	\N
2021	The Horrific Evil Monsters	70	en	\N	\N
2022	Feeling Butterflies	83	en	\N	\N
2022	Father of the Bride	117	en	PG-13	\N
2021	Trippin' with the Kandasamys	93	en	\N	\N
2022	Bill Maher: #Adulting	67	en	\N	\N
2022	Jane Fonda & Lily Tomlin: Ladies Night Live	60	en	\N	\N
2021	Infinitum: Subject Unknown	86	en	\N	\N
2021	The Dog Who Wouldn't Be Quiet	73	es	\N	\N
1988	Beetlejuice	92	en	\N	Tim Burton
2021	Shepherd	103	en	R	\N
2021	Skateshop	62	en	\N	\N
2021	The Fallout	96	en	R	\N
2022	Book of Love	106	en	\N	\N
2022	The Bad Guys	100	en	PG	\N
2021	Raunch and Roll	107	en	\N	\N
2022	Christmas in Toyland	85	en	\N	\N
2021	True Things	102	en	\N	\N
2022	Love Classified	90	en	\N	\N
2021	The Matchmaker	116	en	\N	\N
2006	X-Men: The Last Stand	104	en	PG-13	\N
2021	Reach for the Rings	118	en	\N	\N
2022	Funny Pages	86	en	R	\N
2022	The Sound of Scars	90	en	\N	\N
2022	Welcome to Mama's	84	en	\N	\N
2021	Twyla Moves	82	en	\N	\N
2021	Shang-Chi and the Legend of the Ten Rings	132	en	PG-13	\N
2022	Untrapped: The Story of Lil Baby	93	en	R	\N
2021	Time for Them to Come Home for Christmas	84	en	\N	\N
2021	What?	100	en	\N	\N
2022	The Valet	124	en	PG-13	\N
2022	Rip in Time	84	en	\N	\N
2022	Caught in His Web	84	en	\N	\N
2021	Road to Damascus	98	en	\N	\N
2000	Timecode	97	en	R	Mike Figgis
2022	Ray Donovan: The Movie	100	en	\N	\N
2022	Family Squares	95	en	R	\N
2012	The Avengers	143	en	PG-13	Joss Whedon
2003	The Lord of the Rings: The Return of the King	201	en	PG-13	Peter Jackson
2019	Crown Vic	110	en	R	\N
2021	Trigger Point	85	en	\N	\N
2021	The Ice Road	109	en	PG-13	\N
2001	Pearl Harbor	183	en	PG-13	\N
2022	Erzulie	86	en	\N	\N
2022	Dinosaurs - The Final Day with David Attenborough	90	en	\N	\N
2021	Wolf	99	en	R	\N
2001	The Royal Tenenbaums	110	en	R	Wes Anderson
2021	The Rise and Fall of LuLaRoe	104	en	\N	\N
2021	Red Rocket	130	en	R	\N
2022	The Disruptors	98	en	\N	\N
2021	Our Christmas Journey	84	en	\N	\N
2022	The Second Age of Aquarius	81	en	\N	\N
1988	Working Girl	113	en	\N	Mike Nichols
2022	Love in the Limelight	84	en	\N	\N
2022	Elizabeth: The Unseen Queen	76	en	\N	\N
2021	Trollhunters: Rise of the Titans	104	en	\N	\N
2021	The Baker's Son	87	en	\N	\N
2022	After Yang	96	en	PG	\N
2022	Romance to the Rescue	87	en	\N	\N
2022	This Much I Know to Be True	105	en	\N	\N
2022	Killer Ambition	85	en	\N	\N
2022	Donkeyhead	106	en	\N	\N
2022	Malicious Mind Games	83	en	\N	\N
2021	What Josiah Saw	120	en	\N	\N
2022	Girl in the Picture	101	en	\N	\N
2015	Andron	100	en	R	\N
2021	The Wedding Trip	99	en	\N	\N
2022	That's Amor	96	en	\N	\N
2021	Oprah with Meghan and Harry: A CBS Primetime Special	86	en	\N	\N
2021	The Lost Leonardo	96	en	PG-13	\N
2021	Queen Bees	100	en	PG-13	\N
2021	The Tragedy of Macbeth	105	en	\N	\N
2022	The Good Neighbor	97	en	R	\N
2021	The Lost Daughter	121	en	R	\N
2021	The Way of Miracles	82	en	\N	\N
2022	All the Old Knives	101	en	R	\N
2021	The Ultimate Playlist of Noise	99	en	\N	\N
2021	Sweetheart	103	en	\N	\N
2007	Stardust	127	en	PG-13	Matthew Vaughn
2022	The Highwayman	85	en	\N	\N
2021	The Land of Owls	79	en	\N	\N
1993	Six Degrees of Separation	112	en	R	\N
2022	Adeline	97	en	\N	\N
2022	Gone in the Night	90	en	R	\N
2021	The Addams Family 2	93	en	PG	\N
2021	Untold: Caitlyn Jenner	69	en	\N	\N
2022	Mr. Malcolm's List	117	en	PG	\N
1999	Outside Providence	96	en	R	\N
2022	Road Trip Romance	83	en	\N	\N
2022	Boon	95	en	\N	\N
2021	The First Wave	93	en	R	\N
2022	The Adam Project	106	en	PG-13	\N
2021	Sister Swap: A Hometown Holiday	83	en	\N	\N
2021	The Sacred Spirit	97	es	\N	\N
2022	Butlers in Love	84	en	\N	\N
2022	Floodlights	80	en	\N	\N
2021	Snake Eyes	121	en	PG-13	\N
2021	This Is the Night	107	en	R	\N
2018	The Man Who Killed Don Quixote	132	en	\N	Terry Gilliam
2021	The Exchange	93	en	\N	\N
2022	Burn	99	en	\N	\N
2021	This Little Love of Mine	91	en	\N	\N
2022	Senior Year	111	en	\N	\N
2022	Against the Ice	102	en	\N	\N
2021	Who Killed the KLF?	88	en	\N	\N
2022	I Do (But I Don't)	97	en	\N	\N
2022	How to Please a Woman	107	en	\N	\N
2021	The Razz Guy	99	en	\N	\N
2021	The Swim	92	en	\N	\N
2022	Mrs Harris Goes to Paris	115	en	\N	\N
2021	The Pharm	92	en	\N	\N
2022	Hello Goodbye and Everything in Between	82	en	\N	\N
1998	Ronin	122	en	R	John Frankenheimer
2021	The Ballad of Billy McCrae	93	en	\N	\N
2021	Wolfgang	78	en	\N	\N
2022	The Princess	94	en	R	\N
2022	Lost Angel	90	en	\N	\N
2022	Christina P.: Mom Genes	62	en	\N	\N
1999	Deep Blue Sea	105	en	R	\N
2021	Sweet Carolina	84	en	\N	\N
2021	Strip Down Rise Up	112	en	R	\N
2021	Under the Volcano	96	en	\N	\N
2021	Without Remorse	109	en	R	\N
2021	The Unwonted Sasquatch - Director's Cut	64	en	\N	\N
1982	The Simple-Minded Murderer	108	sv	\N	\N
2022	The Journey Ahead	102	en	\N	\N
2021	Tango Shalom	115	en	PG-13	\N
2021	You Keep the Kids	90	es	\N	\N
2022	Dog	101	en	PG-13	\N
2021	Payback	91	en	\N	\N
2021	Trees of Peace	97	en	\N	\N
2021	The Wimbledon Kidnapping	120	en	\N	\N
2021	Skater Girl	107	en	PG	\N
2022	Elizabeth: A Portrait in Part(s)	89	en	\N	\N
2021	The Marksman	108	en	PG-13	\N
2002	Ritual	99	en	R	\N
2021	Pharma Bro	85	en	\N	\N
2021	The Phantom	82	en	\N	\N
2021	Poser	87	en	\N	\N
2022	Brut Force	93	en	\N	\N
2021	Walking with Herb	110	en	PG	\N
2021	Toying with the Holidays	86	en	\N	\N
2021	The Woman in the Window	100	en	R	\N
2021	The Demented	96	en	\N	\N
2021	The Forgiven	117	en	R	\N
2022	Not Just a Girl	88	en	\N	\N
2022	The Gray Man	122	en	PG-13	\N
2021	Ride the Eagle	88	en	\N	\N
2022	Honor Society	98	en	\N	\N
2022	Dakota	96	en	\N	\N
2021	The Murder of Gabby Petito: Truth Lies and Social Media	85	en	\N	\N
2022	As They Made Us	100	en	R	\N
2021	The Grand Duke of Corsica	93	en	\N	\N
2021	Shock Docs The Exorcism of Roland Doe	84	en	\N	\N
2022	Look Both Ways	110	en	\N	\N
2021	You Had Me at Aloha	85	en	\N	\N
2022	Tom and Jerry: Cowboy Up!	71	en	\N	\N
2005	Elizabethtown	123	en	PG-13	Cameron Crowe
2022	Slash/Back	86	en	\N	\N
2021	The Witcher: Nightmare of the Wolf	83	en	\N	\N
2022	A Violent Man	105	en	\N	\N
2004	Kinsey	118	en	R	\N
2011	Hick	99	en	R	\N
2022	Tyson's Run	103	en	PG	\N
2022	Luck	105	en	\N	\N
2022	Three Months	104	en	\N	\N
2022	The Winter Palace	85	en	\N	\N
2021	The Eyes of Tammy Faye	126	en	PG-13	\N
2021	Soccer Mom Madam	88	en	\N	\N
2021	Romeo & Juliet	95	en	\N	\N
2021	Welcome Matt	92	en	\N	\N
2021	Wicked	114	en	\N	\N
2021	Paul Dood's Deadly Lunch Break	95	en	\N	\N
2022	The Monkey King: The Legend Begins	90	en	\N	\N
2022	Jerry and Marge Go Large	96	en	PG-13	\N
2022	Unicorn Town	83	en	\N	\N
2022	Holy Heist	85	en	\N	\N
2022	Murder at Yellowstone City	127	en	\N	\N
2021	Sugar Plum Twist	84	en	\N	\N
2021	The New York Times Presents Framing Britney Spears	74	en	\N	\N
2022	It Snows All the Time	90	en	\N	\N
2021	Peter Rabbit 2: The Runaway	93	en	PG	\N
2021	Pig	92	en	R	\N
2021	The Sailor	78	en	\N	\N
2022	Exposure 36	92	en	\N	\N
2003	Dogville	178	en	R	Lars Von Trier
2021	Werewolves Within	97	en	R	\N
2021	Venom: Let There Be Carnage	97	en	PG-13	\N
1987	Jim & Piraterna Blom	92	sv	\N	\N
2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse	79	en	\N	\N
2021	Wyrmwood: Apocalypse	88	en	\N	\N
2022	Spring Awakening: Those You've Known	83	en	\N	\N
2021	Wash My Soul in the River's Flow	90	en	\N	\N
2021	Salt-N-Pepa	127	en	\N	\N
2021	Redemption for Easter	124	en	\N	\N
2021	The Chronicle Mysteries Helped to Death	86	en	\N	\N
2021	One and the Same	110	en	\N	\N
2022	Doctor Strange in the Multiverse of Madness	126	en	PG-13	\N
2021	The Rise of the Anti-Vaxx Movement	68	en	\N	\N
2022	Hidden Gems	85	en	\N	\N
2021	The Righteous	97	en	\N	\N
2022	The Wedding Veil Legacy	84	en	\N	\N
2022	The Unbearable Weight of Massive Talent	107	en	R	\N
2021	The Wonderful: Stories from the Space Station	127	en	\N	\N
2022	Bill Burr: Live at Red Rocks	82	en	\N	\N
2022	Family Camp	111	en	PG	\N
2022	County Line: All In	86	en	\N	\N
2021	Out of Time	92	en	\N	\N
2022	Bank Robbers: The Last Great Heist	109	es	\N	\N
2021	The Unforgivable	112	en	\N	\N
2013	Blue Jasmine	98	en	PG-13	Woody Allen
2006	Running with Scissors	116	en	R	\N
2021	Yes Day	86	en	PG	\N
2021	The Girl Who Believes in Miracles	100	en	PG	\N
2021	Wild Indian	90	en	\N	\N
2021	To Be Determined	95	en	\N	\N
2021	The Right One	95	en	R	\N
2021	Twisted Little Lies	84	en	\N	\N
2016	Back in the Day	121	en	\N	\N
2015	Concussion	123	en	PG-13	\N
2021	Roller Squad	86	en	\N	\N
2014	In Order of Disappearance	116	no	R	\N
2021	The Colony	104	en	R	\N
2021	To All the Boys: Always and Forever	109	en	\N	\N
2021	The Children of God	69	es	\N	\N
2021	Vivo	95	en	PG	\N
2022	Centaur	89	es	\N	\N
2001	Scary Movie 2	83	en	R	\N
2022	Dying for Chocolate: A Curious Caterer Mystery	84	en	\N	\N
2022	Never Alone	84	en	\N	\N
2021	Pray Away	101	en	PG-13	\N
2022	Jackass Shark Week 2.0	60	en	\N	\N
2021	The Act of Reading	87	en	\N	\N
2022	Toy Aficiao	114	es	\N	\N
2021	Storm Lake	85	en	\N	\N
2021	Seven Deadly Sins: Lust	87	en	\N	\N
2022	Curse of the Macbeths	82	en	\N	\N
2022	Shut In	89	en	\N	\N
2022	The Irish Connection	93	en	\N	\N
2021	The Protégé	109	en	R	\N
2006	The Good Shepherd	167	en	R	Robert De Niro
2022	Line Sisters	86	en	\N	\N
2021	Why Did You Kill Me?	83	en	\N	\N
1985	Legend	94	en	\N	Ridley Scott
2021	The Santa Stakeout	84	en	\N	\N
2021	The Cursed	111	en	R	\N
2022	Finding Carlos	85	en	\N	\N
2022	Rooney	103	en	\N	\N
2021	Rumble	95	en	PG	\N
2022	The Batman	176	en	PG-13	\N
2022	Running with the Devil: The Wild World of John McAfee	105	en	\N	\N
2022	Gabriel's Rapture: Part Three	120	en	\N	\N
2006	Flushed Away	85	en	PG	\N
2021	Sweet Pecan Summer	84	en	\N	\N
2022	Cha Cha Real Smooth	107	en	R	\N
2022	Step Into... The Movies	60	en	\N	\N
2021	The Holiday Fix Up	84	en	\N	\N
2012	To Rome with Love	112	en	R	Woody Allen
2022	Machine Gun Kelly's Life in Pink	101	en	\N	\N
2021	Sisters on Track	96	en	PG	\N
2021	Shock Docs Amityville Horror House	88	en	\N	\N
2022	Jackass 4.5	90	en	\N	\N
2021	The Conjuring: The Devil Made Me Do It	112	en	R	\N
2021	The Voyeurs	116	en	R	\N
2022	Lotawana	97	en	\N	\N
2021	Sounds Like Love	110	es	\N	\N
2021	The Resonator: Miskatonic U	68	en	\N	\N
2021	The House of Snails	104	es	\N	\N
2021	Small City	74	en	\N	\N
2022	The Lost City	112	en	PG-13	\N
2021	The Story of My Wife	169	en	\N	\N
2004	The Aviator	170	en	PG-13	Martin Scorsese
2022	Radford Returns	120	en	\N	\N
2021	Son	98	en	\N	\N
2022	Proyecto Emperador	106	es	\N	\N
2006	Mini's First Time	91	en	R	\N
2022	The Contractor	103	en	R	\N
2022	We Met in Virtual Reality	91	en	\N	\N
2022	Harmony in Paradise	86	en	\N	\N
2021	Persona: The Dark Truth Behind Personality Tests	85	en	\N	\N
2021	Stillwater	139	en	R	\N
2021	PAW Patrol: The Movie	86	en	\N	\N
2022	The Ledge	86	en	\N	\N
2022	Good Luck to You Leo Grande	97	en	R	\N
2008	The Secret of Moonacre	103	en	PG	\N
2021	To Olivia	99	en	\N	\N
2022	The Twin	109	en	\N	\N
2021	Untold: Deal with the Devil	77	en	\N	\N
2022	Not Okay	100	en	R	\N
2022	Diamond Hands: The Legend of WallStreetBets	89	en	\N	\N
2021	Tinsel - The Lost Movie About Hollywood	79	en	\N	\N
2016	Paris Can Wait	92	en	PG	\N
2021	Where the Land Meets the Sky	85	en	\N	\N
2021	Pati Patni and Joe	106	en	\N	\N
2013	Seduced and Abandoned	98	en	\N	\N
2022	The Mulligan	125	en	\N	\N
2022	Gabriel's Rapture: Part Two	102	en	\N	\N
2021	Trust	94	en	\N	\N
2021	The Many Saints of Newark	120	en	R	\N
2022	The Mystery of Marilyn Monroe: The Unheard Tapes	101	en	\N	\N
2021	The Last Thing Mary Saw	89	en	\N	\N
2021	Secret Agent Dingledorf and His Trusty Dog Splat	89	en	PG	\N
2021	Saints & Sinners Judgment Day	88	en	\N	\N
2021	Robin Roberts Presents: Mahalia	102	en	\N	\N
2021	The Day Sports Stood Still	84	en	\N	\N
2022	The Outfit	105	en	R	\N
2021	The House of Flowers: The Movie	86	es	\N	\N
2021	She Will	95	en	\N	\N
2021	Stars Fell on Alabama	103	en	PG-13	\N
2022	Fantastic Beasts: The Secrets of Dumbledore	142	en	PG-13	\N
2022	Low Life	105	en	\N	\N
1980	Times Square	111	en	\N	\N
2022	The Man from Toronto	110	en	PG-13	\N
2021	Silk Road	112	en	R	\N
1996	Breaking the Waves	159	da	R	Lars Von Trier
2021	Wired Shut	95	en	\N	\N
2021	The Loneliest Whale: The Search for 52	96	en	PG	\N
2022	Through My Window	116	es	\N	\N
2022	El Rezador	96	es	\N	\N
2021	Seal Team	101	en	\N	\N
2021	V.C. Andrews' Landry Family V.C. Andrews' Hidden Jewel	86	en	\N	\N
1996	Ghosts of Mississippi	130	en	PG-13	Rob Reiner
2021	The Wrong Valentine	86	en	\N	\N
2021	Robbo: The Bryan Robson Story	103	en	\N	\N
2022	Lucy and Desi	103	en	PG	\N
2022	And Just Like That... The Documentary	70	en	\N	\N
2018	BlacKkKlansman	135	en	R	Spike Lee
2021	Sometime Other Than Now	89	en	\N	\N
2022	The Modern Way	88	en	\N	\N
2021	Senior Moment	92	en	\N	\N
2021	Potato Dreams of America	97	en	\N	\N
2013	The Hobbit: The Desolation of Smaug	161	en	PG-13	Peter Jackson
2021	The Judge of Harbor County	72	en	\N	\N
2022	Just One Kiss	85	en	\N	\N
2022	Crush	93	en	\N	\N
2021	Taking the Fall	102	en	\N	\N
2022	Paws of Fury: The Legend of Hank	98	en	PG	\N
2021	Violet	92	en	R	\N
1999	Notting Hill	124	en	PG-13	\N
2021	The Girl in the Window	90	en	\N	\N
2021	The Beatles and India	96	en	\N	\N
2021	Ron's Gone Wrong	107	en	PG	\N
1994	The Getaway	115	en	R	Roger Donaldson
2021	Wish Dragon	98	en	PG	\N
2021	Range Roads	86	en	\N	\N
2022	GoldenEra	99	en	\N	\N
1984	Dune	137	en	\N	Denis Villeneuve
2022	Joyride	94	en	\N	\N
2021	Those Who Wish Me Dead	100	en	R	\N
2022	Super Turnt	104	en	\N	\N
2022	Top Gun: Maverick	130	en	PG-13	\N
2022	Catwoman: Hunted	78	en	PG-13	\N
2012	Rise of the Guardians	97	en	PG	\N
2022	Benjamin Franklin	225	en	\N	\N
2000	Thomas and the Magic Railroad	85	en	\N	\N
2021	Spiral	93	en	R	\N
1993	Loaded Weapon 1	84	en	PG-13	\N
2022	Prizefighter: The Life of Jem Belcher	107	en	\N	\N
2021	The Novice	97	en	R	\N
2022	Untold: The Rise and Fall of AND1	68	en	\N	\N
2021	Twice Bitten	88	en	\N	\N
2022	Watergate: High Crimes in the White House	120	en	\N	\N
2022	Along for the Ride	106	en	\N	\N
2022	South Park: The 25th Anniversary Concert	99	en	\N	\N
2021	The Alpines	93	en	\N	\N
2021	Searching for Cannibal Holocaust	87	en	\N	\N
2022	Stay on Board: The Leo Baker Story	72	en	\N	\N
2022	Sweet as Pie	94	en	\N	\N
2022	Uncharted	116	en	PG-13	\N
2022	Planning on Forever	90	en	\N	\N
2022	Assailant	97	en	R	\N
2021	Rise of the Footsoldier: Origins	107	en	\N	\N
2021	Strange Friends	97	en	\N	\N
2021	Paper & Glue	94	en	\N	\N
2021	The Rescue	107	en	PG	\N
2021	Prince Philip: The Man Behind the Throne	87	en	\N	\N
2021	Ted K	120	en	R	\N
2021	See You Next Christmas	99	en	\N	\N
2022	The King's Daughter	90	en	PG	\N
1997	The Edge	117	en	R	Lee Tamahori
2021	The Enchanted Christmas Cake	90	en	\N	\N
2022	Stand Out: An LGBTQ+ Celebration	96	en	\N	\N
2021	See for Me	92	en	\N	\N
2022	Harry Potter 20th Anniversary: Return to Hogwarts	102	en	\N	\N
2022	Junkyard Dogs	89	en	\N	\N
2021	Pick A Side	102	en	\N	\N
1996	The Juror	118	en	R	\N
2021	The Hunt for Planet B	93	en	\N	\N
2022	Facing Nolan	102	en	\N	\N
1997	McHale's Navy	108	en	PG	\N
2022	King Tweety	81	en	\N	\N
2021	Rose West: Born Evil?	69	en	\N	\N
2021	One Shot	96	en	\N	\N
2021	Zack Snyder's Justice League	242	en	R	\N
2022	What Is a Woman?	95	en	\N	\N
2022	Alone Together	93	en	R	\N
2021	The Found Footage Phenomenon	101	en	\N	\N
2021	The Exorcism of God	98	en	R	\N
2021	The Daughter	122	es	\N	\N
2022	Moonshot	104	en	PG-13	\N
2021	Red Notice	118	en	PG-13	\N
2021	Set!	105	en	\N	\N
1998	Gods and Monsters	105	en	R	\N
2021	Secret Santa	90	en	\N	\N
2014	X-Men: Days of Future Past	132	en	PG- 13	Bryan Singer
2022	Prey	99	en	R	\N
2021	Puff: Wonders of the Reef	62	en	\N	\N
2022	North to Home	84	en	\N	\N
2022	Seize the Night	87	en	\N	\N
2021	Wildhood	108	en	\N	\N
2022	Take the Night	82	en	PG-13	\N
2022	The 28th Annual Screen Actors Guild Awards	98	en	\N	\N
2021	Revealed: The Hunt for Bin Laden	85	en	\N	\N
2022	Vengeance	107	en	R	\N
2021	Past Shadows	85	en	\N	\N
2021	The Storms of Jeremy Thomas	94	en	\N	\N
2021	Voyagers	108	en	PG-13	\N
2022	Randy Rhoads: Reflections of a Guitar Icon	85	en	\N	\N
2022	No Name and Dynamite Davenport	91	en	\N	\N
2022	Moses Storm: Trash White	60	en	\N	\N
2021	The Sparks Brothers	140	en	R	\N
2021	South Beach Love	83	en	\N	\N
2021	The Final Code	123	en	\N	\N
2021	Redemption in Cherry Springs	84	en	\N	\N
2022	Don't Make Me Go	109	en	R	\N
2021	The Forever Prisoner	119	en	\N	\N
2021	Things Heard & Seen	121	en	\N	\N
2022	The Bob's Burgers Movie	102	en	PG-13	\N
2021	Streamline	86	en	\N	\N
1992	Prelude to a Kiss	105	en	PG-13	\N
2021	One Winter Wedding	84	en	\N	\N
2021	Poly Styrene: I Am a Cliché	96	en	\N	\N
2021	Peace by Chocolate	96	en	\N	\N
2022	Paradise Highway	115	en	R	\N
2021	Parallel Mothers	123	es	R	\N
2021	Private Network: Who Killed Manuel Buendía?	100	es	\N	\N
2022	A Perfect Pairing	101	en	\N	\N
2021	The United Way	90	en	\N	\N
2003	The Cooler	101	en	R	\N
2021	Saving Paradise	102	en	\N	\N
2021	Superhost	84	en	\N	\N
2022	Look at Me: XXXTentacion	108	en	\N	\N
2014	No Good Deed	84	en	PG-13	Bob Rafelson
2022	Lightyear	100	en	PG	\N
2019	The Good Liar	109	en	R	\N
2021	The Jenkins Family Christmas	94	en	\N	\N
2021	The Influencer	90	en	\N	\N
2022	The Railway Children Return	95	en	PG	\N
2022	The Hyperions	90	en	R	\N
2022	Ricardo Quevedo: Tomorrow Will Be Worse	60	es	\N	\N
2021	Shadow Game	90	en	\N	\N
2022	Jackass Forever	96	en	R	\N
2022	I Challenger	98	en	\N	\N
2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog	78	en	\N	\N
2021	The Ghost and the Tout Too	111	en	\N	\N
2021	Pretenders	87	en	\N	\N
2022	Save the Cinema	109	en	\N	\N
2021	Swan Song	112	en	\N	\N
2021	The LCD Soundsystem Holiday Special	65	en	\N	\N
2022	Flux Gourmet	111	en	\N	\N
2021	When Today Ends	97	en	\N	\N
2021	The Wheel	83	en	\N	\N
2002	Insomnia	118	en	R	\N
2021	Volcanic UFO Mysteries	62	en	\N	\N
2021	The Christmas Contest	83	en	\N	\N
2022	Jazz Fest: A New Orleans Story	95	en	PG-13	\N
2021	Sand Dollar Cove	84	en	\N	\N
2022	VALLDAURA: A Quarantine Cabin	79	es	\N	\N
1989	Great Balls of Fire!	108	en	\N	\N
2021	Repeat	95	en	\N	\N
2017	The Boss Baby	97	en	PG	\N
2022	Studio 666	106	en	R	\N
2021	Rebel Dykes	89	en	\N	\N
2022	Shane	95	en	\N	\N
2022	Tankhouse	94	en	R	\N
2021	The Girl Who Got Away	116	en	\N	\N
2021	The Show	93	en	\N	\N
2021	What She Said	99	en	\N	\N
2022	2022 Oscar Nominated Short Films: Animation	96	en	\N	\N
2021	The Vault	118	en	R	\N
2021	Sold Out	91	en	\N	\N
2021	Taking the Reins	84	en	\N	\N
2021	Spirit Untamed	88	en	PG	\N
2022	Civil: Ben Crump	101	en	\N	\N
2021	Resident Evil: Welcome to Raccoon City	107	en	R	\N
1998	Mercury Rising	111	en	R	\N
2021	The Boss Baby: Family Business	107	en	PG	\N
2021	Samantha Rose	94	en	\N	\N
2021	Sonsational	88	en	\N	\N
2021	Shatner in Space	60	en	\N	\N
2022	Icahn: The Restless Billionaire	101	en	\N	\N
1996	Muppet Treasure Island	99	en	\N	\N
2022	Ricky Gervais: SuperNature	64	en	\N	\N
2021	Resort to Love	101	en	\N	\N
2022	Green Lantern: Beware My Power	88	en	PG-13	\N
2022	Aftershock	86	en	\N	\N
2003	The Cat in the Hat	82	en	PG	\N
2021	President	120	en	\N	\N
1982	Annie	126	en	\N	John Huston
1988	Talk Radio	110	en	\N	Oliver Stone
2022	Easter Sunday	96	en	\N	\N
2021	Woodstock 99: Peace Love and Rage	110	en	\N	\N
2021	The Village Detective: a song cycle	81	en	\N	\N
2021	Royal Blossom	85	en	\N	\N
2021	Torn	92	en	\N	\N
2022	The Great American Tag Sale with Martha Stewart	60	en	\N	\N
1989	Scandal	115	en	R	\N
2022	Memory	114	en	R	\N
2022	American Experience Plague at the Golden Gate	115	en	\N	\N
2021	The Loud House Movie	83	en	\N	\N
2022	Downton Abbey: A New Era	124	en	PG	\N
2021	Rebellion	82	en	\N	\N
2022	The Hall: Honoring the Greats of Stand-Up	70	en	\N	\N
2022	Gold	97	en	R	\N
2022	Single Black Female	88	en	\N	\N
2022	Salesmen	81	en	\N	\N
2021	Things Don't Stay Fixed	100	en	\N	\N
2021	Reno 911!: The Hunt for QAnon	85	en	\N	\N
2022	The Weekend Away	89	en	\N	\N
2021	The Bezonians	98	en	\N	\N
2021	The Most Beautiful Boy in the World	93	en	\N	\N
2018	A Star Is Born	136	en	R	\N
2022	Aloha with Love	90	en	\N	\N
2022	Halftime	95	en	\N	\N
2021	The Legend of the Underground	86	en	\N	\N
2021	Untold: Malice at the Palace	68	en	\N	\N
2019	Out Stealing Horses	123	no	\N	\N
2021	The Last Bus	86	en	\N	\N
2012	The Hobbit: An Unexpected Journey	169	en	PG-13	Peter Jackson
2021	The Jump	80	es	\N	\N
2021	Redeemed	80	en	\N	\N
2021	The Christmas Pitch	83	en	\N	\N
2022	Everything Everywhere All at Once	139	en	R	\N
2021	Our Towns	97	en	\N	\N
2022	Sex Appeal	90	en	\N	\N
2021	Strawberry Mansion	91	en	\N	\N
2021	Super Hot	81	en	\N	\N
2022	Rescued by Ruby	90	en	\N	\N
2021	Stop and Go	80	en	\N	\N
2021	The Tomorrow War	138	en	PG-13	\N
2021	Spider-Man: No Way Home	148	en	PG-13	\N
2004	Along Came Polly	90	en	PG-13	\N
1992	Home Alone 2: Lost in New York	120	en	PG	\N
2021	The Cleaner	93	en	\N	\N
2021	Sweet Girl	110	en	R	\N
2022	Love on Fire	83	en	\N	\N
1978	The Shout	86	en	\N	\N
2022	Rogue Agent	115	en	\N	\N
2022	The In Between	115	en	PG-13	\N
2022	Infinite Storm	97	en	R	\N
2022	The Cellar	94	en	\N	\N
1992	Glengarry Glen Ross	100	en	R	James Foley
2022	A Splash of Love	84	en	\N	\N
2021	Pleasure	109	en	\N	\N
2021	The Souvenir: Part II	107	en	R	\N
2021	Rhapsody of Love	86	en	\N	\N
2021	The White Tiger	125	en	R	\N
2015	Mr. Holmes	104	en	PG	\N
2021	The Cleveland Kidnappings	91	en	\N	\N
2021	The United States of Insanity	99	en	\N	\N
2021	The Wedding Ring	85	en	\N	\N
1993	Last Action Hero	130	en	PG-13	John McTiernan
2022	Rise of the Teenage Mutant Ninja Turtles: The Movie	82	en	\N	\N
2021	Psych 3: This Is Gus	96	en	\N	\N
2022	Lancaster	110	en	\N	\N
2021	Pirates	80	en	\N	\N
2022	Beyond Impossible	82	en	\N	\N
2022	This Is Joan Collins	96	en	\N	\N
2021	¡A todo tren! Destino Asturias	90	es	\N	\N
2021	Rebel Hearts	99	en	\N	\N
2022	11M: Terror in Madrid	92	es	\N	\N
2021	The Cabin	75	en	\N	\N
2022	Hustle	117	en	R	\N
2021	Triumph	100	en	PG-13	\N
2021	Rise and Shine Benedict Stone	84	en	\N	\N
2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist	87	en	\N	\N
2022	Mother's Love	110	es	\N	\N
2021	The Dig	112	en	PG-13	\N
2022	Fourth of July	90	en	\N	\N
2022	Biffy Clyro: Cultural Sons of Scotland	66	en	\N	\N
2022	Silverton Siege	100	en	\N	\N
2022	Movers Ultimate	91	en	\N	\N
2021	The Jesus Music	109	en	PG-13	\N
2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn	104	en	\N	\N
2021	Superior	99	en	\N	\N
2021	Riverdance: The Animated Adventure	90	en	\N	\N
2021	What Drives Us	88	en	\N	\N
2022	Apollo 10½: A Space Age Childhood	97	en	PG-13	\N
2021	Walk With Me	112	en	\N	\N
2021	The Maltese Holiday	83	en	\N	\N
2021	Reminiscence	116	en	PG-13	\N
2021	See You Then	74	en	\N	\N
2021	Outside	85	en	\N	\N
2021	Slapface	85	en	\N	\N
2001	The Lord of the Rings: The Fellowship of the Ring	178	en	PG-13	Peter Jackson
2021	Scarborough	136	en	\N	\N
2021	Willy's Wonderland	88	en	\N	\N
2021	Wild Game	90	en	\N	\N
2021	Street Gang: How We Got to Sesame Street	107	en	PG	\N
2022	Fresh	114	en	R	\N
2022	The Figo Affair: The Transfer that Changed Football	105	en	\N	\N
2022	A Tear in the Sky	88	en	\N	\N
2022	Crimes of the Future	107	en	R	\N
2022	Nope	130	en	R	\N
2021	The Manor	81	en	\N	\N
2021	Stallone: Frank That Is	73	en	\N	\N
2022	Groundswell	84	en	\N	\N
2022	Tyler Perry's A Madea Homecoming	105	en	\N	\N
2022	The 355	122	en	PG-13	\N
2021	The Trick	89	en	\N	\N
2022	Minions: The Rise of Gru	87	en	PG	\N
2015	Cinderella	105	en	PG	Kenneth Branagh
2021	Where Is Anne Frank	99	en	\N	\N
2021	Phil Wang: Philly Philly Wang Wang	63	en	\N	\N
2021	Trevor Noah Presents Josh Johnson: # (Hashtag)	60	en	\N	\N
2022	The Sky Is Everywhere	103	en	PG-13	\N
2021	Resurgence	110	en	\N	\N
2021	The Nine Kittens of Christmas	84	en	\N	\N
2015	Aloha	105	en	PG-13	Cameron Crowe
2022	Anything's Possible	96	en	PG-13	\N
1990	Alice	106	en	\N	Woody Allen
2021	Songs for a Sloth	85	en	\N	\N
2021	Tulsa: The Fire and the Forgotten	85	en	\N	\N
2022	Taylor Tomlinson: Look at You	60	en	\N	\N
2021	Wedding Cake Dreams	85	en	\N	\N
2022	Hunting Souls	97	en	\N	\N
2021	Seduction & Snacks	98	en	\N	\N
2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor	120	en	\N	\N
2022	Borrego	102	en	R	\N
2021	This Is Port Adelaide	90	en	\N	\N
2021	Snowkissed	84	en	\N	\N
2021	Secrets in the Wilderness	86	en	\N	\N
2000	Harlan County War	104	en	\N	\N
2021	Zebra Girl	79	en	\N	\N
2022	DC League of Super-Pets	105	en	PG	\N
2022	Thirteen Lives	147	en	PG-13	\N
1993	The Three Musketeers	105	en	PG	\N
2021	Truly Texas Mexican	86	en	\N	\N
2021	Wrong Turn	109	en	R	\N
2021	The Ogglies	85	en	PG	\N
2022	Fireheart	92	en	\N	\N
2021	The Automat	79	en	\N	\N
2021	River's End: California's Latest Water War	81	en	\N	\N
2021	Shoplifters of the World	90	en	\N	\N
2021	Tina and Lori	115	en	\N	\N
2021	The French Dispatch	107	en	R	\N
2022	After Jackie	87	en	\N	\N
2021	Playing with Sharks: The Valerie Taylor Story	95	en	\N	\N
2021	The One and Only Dick Gregory	113	en	\N	\N
2022	Secret Headquarters	104	en	PG	\N
2021	Operation Varsity Blues	100	en	R	\N
2022	Octopus Pot	87	en	\N	\N
2022	Bear Witness	83	en	\N	\N
2021	This Is Francis X. Bushman	60	en	\N	\N
2021	Real Talk	98	en	\N	\N
2022	Ronny Chieng: Speakeasy	60	en	\N	\N
2021	The Red Star	72	es	\N	\N
2022	Deep Water	115	en	R	\N
2022	Harmony from the Heart	87	en	\N	\N
\.


--
-- Data for Name: personal; Type: TABLE DATA; Schema: peliculas; Owner: postgres
--

COPY peliculas.personal (nombre, nacionalidad, f_nacimiento) FROM stdin;
Chris Hemsworth	\N	\N
Michael Lerner	\N	\N
Rosario Dawson	\N	\N
Jeffrey Wright	\N	\N
Emily Watson	\N	\N
Patrick Swayze	\N	\N
Nicholas Hoult	\N	\N
Marcello Mastroianni	\N	\N
Famke Janssen	\N	\N
Abbie Cornish	\N	\N
Carole Lombard	\N	\N
Nick Nolte	\N	\N
Pierce Brosnan	\N	\N
Rose Byrne	\N	\N
Jason Robards	\N	\N
Lake Bell	\N	\N
Hugo Weaving	\N	\N
Sean Penn	\N	1960-08-17
Henry Fonda	\N	1905-05-16
Lillian Gish	\N	\N
Hugh Grant	\N	\N
Josh Hutcherson	\N	\N
Catalina Sandino Moreno	\N	\N
Ida Lupino	\N	\N
Greg Kinnear	\N	\N
Jason Statham	\N	\N
Catherine Keener	\N	\N
Justin Bartha	\N	\N
Andrew Garfield	\N	\N
Ned Beatty	\N	\N
Ethan Hawke	\N	\N
Antonio Banderas	\N	\N
Norman Reedus	\N	\N
James Stewart	\N	1908-05-20
Jennifer Garner	\N	\N
Jean Arthur	\N	\N
Zoe Saldana	\N	\N
Robert Forster	\N	\N
Shia LaBeouf	\N	\N
Faye Dunaway	\N	1941-01-14
Ava Gardner	\N	\N
John Houseman	\N	\N
Claire Danes	\N	\N
Kirsten Dunst	\N	\N
Greta Garbo	\N	\N
Jennifer Jones	\N	1919-03-02
Emily Browning	\N	\N
Thomas Mitchell	\N	\N
Javier Bardem	\N	\N
Sam Waterston	\N	\N
Martin Balsam	\N	\N
James Franco	\N	\N
Emma Watson	\N	\N
Spencer Tracy	\N	1900-04-05
Sophie Marceau	\N	\N
Chiwetel Ejiofor	\N	\N
Bruce Willis	\N	\N
Joey King	\N	\N
Emilia Clarke	\N	\N
Tatum O'Neal	\N	\N
Queen Latifah	\N	\N
Oscar Isaac	\N	\N
Alec Guinness	\N	1914-04-02
Naomi Watts	\N	\N
Doris Day	\N	\N
Janet Leigh	\N	\N
Tyrese Gibson	\N	\N
Stellan Skarsgård	\N	\N
Donald Sutherland	\N	\N
Léa Seydoux	\N	\N
Marion Cotillard	\N	1975-09-30
Michelle Rodriguez	\N	\N
Melanie Griffith	\N	\N
Michelle Trachtenberg	\N	\N
Benedict Cumberbatch	\N	\N
Steve Carell	\N	\N
Rashida Jones	\N	\N
Joe Pesci	\N	\N
Rebecca Hall	\N	\N
Suraj Sharma	\N	\N
Felicity Jones	\N	\N
William Shatner	\N	\N
Mercedes McCambridge	\N	\N
Jude Law	\N	\N
Evangeline Lilly	\N	\N
Christopher Lee	\N	\N
Alexander Skarsgård	\N	\N
Piper Laurie	\N	\N
Sam Elliott	\N	\N
Ellen Burstyn	\N	1932-12-07
Rosie Huntington-Whiteley	\N	\N
Simone Signoret	\N	1921-03-25
Charlize Theron	\N	1975-08-07
Jackie Chan	\N	\N
Rinko Kikuchi	\N	\N
Jay Baruchel	\N	\N
Celeste Holm	\N	\N
Liza Minnelli	\N	1946-03-12
Andy Samberg	\N	\N
Keira Knightley	\N	\N
Deborah Kerr	\N	\N
George Burns	\N	\N
Armin Mueller-Stahl	\N	\N
Virginia Madsen	\N	\N
Katharine Hepburn	\N	1907-05-12
Aaron Taylor-Johnson	\N	\N
Eva Mendes	\N	\N
Bryan Cranston	\N	\N
Richard Jenkins	\N	\N
Setsuko Hara	\N	\N
Richard Gere	\N	\N
Kaley Cuoco	\N	\N
Johnny Depp	\N	\N
Mila Kunis	\N	\N
Richard Dreyfuss	\N	1947-10-29
Jack Palance	\N	\N
Robin Weigert	\N	\N
Jessica Chastain	\N	\N
Michael Rooker	\N	\N
Rod Steiger	\N	1925-04-14
Paddy Considine	\N	\N
Joseph Cotten	\N	\N
Jane Wyman	\N	1914-01-04
Lindsay Lohan	\N	\N
Evan Rachel Wood	\N	\N
Thora Birch	\N	\N
Robert Mitchum	\N	\N
Bernie Mac	\N	\N
George Kennedy	\N	\N
Tim Roth	\N	\N
Olivia Wilde	\N	\N
Ashley Judd	\N	\N
Eric Bana	\N	\N
Albert Brooks	\N	\N
Elisabeth Moss	\N	\N
Robert Shaw	\N	\N
Cameron Diaz	\N	\N
Ashley Greene	\N	\N
Judy Davis	\N	\N
Paul Lukas	\N	1895-05-26
Cate Blanchett	\N	1969-05-14
Adam Sandler	\N	\N
Olivia Thirlby	\N	\N
Julia Stiles	\N	\N
Anthony Perkins	\N	\N
Gal Gadot	\N	\N
Dean Stockwell	\N	\N
George Chakiris	\N	\N
Donald Crisp	\N	\N
Vivien Leigh	\N	1913-11-05
Giovanni Ribisi	\N	\N
Lee Marvin	\N	1924-02-19
Sarah Michelle Gellar	\N	\N
Linda Hamilton	\N	\N
Hugh Jackman	\N	\N
Mae West	\N	\N
Nathan Lane	\N	\N
Saoirse Ronan	\N	\N
Scarlett Johansson	\N	\N
Imelda Staunton	\N	\N
Susan Hayward	\N	1917-06-30
Robert Downey Jr.	\N	\N
Myrna Loy	\N	\N
Bill Hader	\N	\N
David Niven	\N	1910-03-01
Priyanka Chopra	\N	\N
Chris Pratt	\N	\N
Mélanie Laurent	\N	\N
Bette Midler	\N	\N
Garrett Hedlund	\N	\N
Marlon Brando	\N	1924-04-03
Jennifer Coolidge	\N	\N
Albert Finney	\N	\N
Alan Arkin	\N	\N
Montgomery Clift	\N	\N
Peter Sellers	\N	\N
Rutger Hauer	\N	\N
Guy Pearce	\N	\N
Djimon Hounsou	\N	\N
Louise Fletcher	\N	1934-07-22
Janet Gaynor	\N	1906-10-06
Teresa Wright	\N	\N
Carol Burnett	\N	\N
Harvey Keitel	\N	\N
Debbie Reynolds	\N	\N
Louis Gossett Jr.	\N	\N
Ziyi Zhang	\N	\N
Philip Seymour Hoffman	\N	\N
Johnny Knoxville	\N	\N
Katherine Heigl	\N	\N
Errol Flynn	\N	\N
Kate Mara	\N	\N
Natalie Portman	\N	1981-09-06
Tim Robbins	\N	\N
Meryl Streep	\N	1949-06-22
Bruce Davison	\N	\N
Fredric March	\N	1897-08-31
Marlene Dietrich	\N	\N
Marsha Mason	\N	\N
Christopher Plummer	\N	\N
Amanda Seyfried	\N	\N
Maria Falconetti	\N	\N
Isabelle Huppert	\N	\N
Patricia Arquette	\N	\N
Tom Wilkinson	\N	\N
Al Pacino	\N	1940-04-25
Samuel L. Jackson	\N	\N
Daniel Day-Lewis	\N	1957-04-29
Peggy Ashcroft	\N	\N
Wallace Beery	\N	1885-04-01
Christian Bale	\N	\N
Roy Scheider	\N	\N
Liam Neeson	\N	\N
Shirley MacLaine	\N	1934-04-24
Catherine Zeta-Jones	\N	\N
Gillian Anderson	\N	\N
Rosalind Russell	\N	\N
Noomi Rapace	\N	\N
AnnaSophia Robb	\N	\N
Natalie Wood	\N	\N
Richard Harris	\N	\N
Anthony Mackie	\N	\N
Lesley Manville	\N	\N
Alec Baldwin	\N	\N
Maya Rudolph	\N	\N
Lili Taylor	\N	\N
Sally Hawkins	\N	\N
Romain Duris	\N	\N
Clark Gable	\N	1901-02-01
Robin Wright	\N	\N
James Mason	\N	\N
Mary Elizabeth Winstead	\N	\N
Linda Hunt	\N	\N
Emmanuelle Riva	\N	\N
Mo'Nique	\N	\N
Christina Ricci	\N	\N
Diane Keaton	\N	1946-01-05
Woody Harrelson	\N	\N
Gary Busey	\N	\N
Edmund Gwenn	\N	\N
Claude Rains	\N	\N
Josh Duhamel	\N	\N
Vincent Cassel	\N	\N
Billy Crystal	\N	\N
William Powell	\N	\N
Jennifer Connelly	\N	\N
Jason Bateman	\N	\N
Isabelle Adjani	\N	\N
Greer Garson	\N	1904-09-29
Maximilian Schell	\N	1930-12-08
Helen Hayes	\N	1900-10-10
Jon Hamm	\N	\N
Ryan Gosling	\N	\N
Takashi Shimura	\N	\N
Paul Giamatti	\N	\N
Jessica Alba	\N	\N
Greta Gerwig	\N	\N
Peter Lorre	\N	\N
Cary Grant	\N	\N
Olympia Dukakis	\N	\N
Lucy Liu	\N	\N
Teresa Palmer	\N	\N
James Marsden	\N	\N
Jeanne Moreau	\N	\N
Gloria Grahame	\N	\N
Kathy Bates	\N	1948-06-28
Christopher Lloyd	\N	\N
Ray Stevenson	\N	\N
Chuck Norris	\N	\N
Lionel Barrymore	\N	1878-04-28
Angela Lansbury	\N	\N
Jodie Foster	\N	1962-11-19
Mark Hamill	\N	\N
Billy Crudup	\N	\N
Thomas Haden Church	\N	\N
Drew Barrymore	\N	\N
Richard Burton	\N	\N
Josh Hartnett	\N	\N
Christine Taylor	\N	\N
Amanda Crew	\N	\N
Geraldine Page	\N	1924-11-22
Josh Gad	\N	\N
John Leguizamo	\N	\N
Adriana Barraza	\N	\N
Heath Ledger	\N	\N
Kiefer Sutherland	\N	\N
Orlando Bloom	\N	\N
Chris Cooper	\N	\N
Marisa Tomei	\N	\N
Don Ameche	\N	\N
Felicity Huffman	\N	\N
Whoopi Goldberg	\N	\N
Hilary Swank	\N	1974-07-30
Mira Sorvino	\N	\N
Joaquin Phoenix	\N	\N
Benjamin Bratt	\N	\N
Hayden Christensen	\N	\N
Marion Davies	\N	\N
Franka Potente	\N	\N
Chloë Sevigny	\N	\N
Charlie Day	\N	\N
Jennifer Aniston	\N	\N
Hilary Duff	\N	\N
John Gielgud	\N	\N
Linda Fiorentino	\N	\N
Gloria Stuart	\N	\N
Kristen Wiig	\N	\N
Matthew McConaughey	\N	1969-11-04
James Coburn	\N	\N
Michael Cera	\N	\N
Julianne Hough	\N	\N
Elizabeth Taylor	\N	1932-02-27
James Gandolfini	\N	\N
Beyoncé	\N	\N
Jeff Daniels	\N	\N
Bradley Cooper	\N	\N
Edward Norton	\N	\N
Judy Holliday	\N	1921-06-21
Grace Kelly	\N	1929-11-12
Shelley Winters	\N	\N
Mads Mikkelsen	\N	\N
Estelle Parsons	\N	\N
Tom Conti	\N	\N
Art Carney	\N	1918-11-04
Groucho Marx	\N	\N
Joan Fontaine	\N	1917-10-22
Uma Thurman	\N	\N
Charlie Sheen	\N	\N
Olga Kurylenko	\N	\N
Billy Bob Thornton	\N	\N
Mia Farrow	\N	\N
Hugh Griffith	\N	\N
Ralph Fiennes	\N	\N
Julia Roberts	\N	1967-10-28
Nicole Kidman	\N	1967-06-20
Mercedes Ruehl	\N	\N
James Cagney	\N	1899-07-17
Red Buttons	\N	\N
Jena Malone	\N	\N
Jill Clayburgh	\N	\N
Mandy Moore	\N	\N
Steve Coogan	\N	\N
Luke Wilson	\N	\N
Jessica Tandy	\N	1909-06-07
Benicio Del Toro	\N	\N
Maggie Smith	\N	1934-12-28
Taraji P. Henson	\N	\N
Ruby Dee	\N	\N
Richard Farnsworth	\N	\N
Burl Ives	\N	\N
Jake Gyllenhaal	\N	\N
Brendan Fraser	\N	\N
Haley Joel Osment	\N	\N
David Oyelowo	\N	\N
Nick Swardson	\N	\N
Tom Hanks	\N	1956-07-09
Sophia Loren	\N	1934-09-20
Mike Vogel	\N	\N
Chris Evans	\N	\N
Logan Lerman	\N	\N
Jamie Chung	\N	\N
Cobie Smulders	\N	\N
Orson Welles	\N	\N
Richard E. Grant	\N	\N
Margot Robbie	\N	\N
Lauren Bacall	\N	\N
Warner Baxter	\N	1889-03-29
Ray Milland	\N	1905-01-03
Billy Burke	\N	\N
Danny Aiello	\N	\N
Elisabeth Shue	\N	\N
Jane Fonda	\N	1937-12-21
Rhys Ifans	\N	\N
Ellen DeGeneres	\N	\N
Hailee Steinfeld	\N	\N
Ben Kingsley	\N	1943-12-31
Sean Astin	\N	\N
Björk	\N	\N
Gig Young	\N	\N
Laurence Fishburne	\N	\N
Renée Zellweger	\N	\N
Jet Li	\N	\N
Sam Rockwell	\N	\N
Lee Grant	\N	\N
Robert Donat	\N	1905-03-18
Tyler Perry	\N	\N
Sarah Polley	\N	\N
Keisha Castle-Hughes	\N	\N
Frank Langella	\N	\N
Ellen Page	\N	\N
Jessica Biel	\N	\N
Dudley Moore	\N	\N
Clark Gregg	\N	\N
Mary Tyler Moore	\N	\N
Sacha Baron Cohen	\N	\N
Daryl Hannah	\N	\N
Samantha Morton	\N	\N
Ethel Barrymore	\N	\N
Seth Rogen	\N	\N
Michael Douglas	\N	1944-09-25
Woody Allen	\N	\N
Judi Dench	\N	\N
Tom Courtenay	\N	\N
Seth MacFarlane	\N	\N
Cuba Gooding Jr.	\N	\N
Tim Allen	\N	\N
Terrence Howard	\N	\N
Mireille Enos	\N	\N
Cam Gigandet	\N	\N
Janet McTeer	\N	\N
Eva Marie Saint	\N	\N
Brenda Fricker	\N	\N
Alice Eve	\N	\N
Jon Heder	\N	\N
Christopher Guest	\N	\N
Wesley Snipes	\N	\N
Alicia Vikander	\N	\N
Debra Winger	\N	\N
Timothy Hutton	\N	\N
Paul Rudd	\N	\N
James McAvoy	\N	\N
Russell Crowe	\N	1964-04-07
Melissa McCarthy	\N	\N
Meg Ryan	\N	\N
Dave Franco	\N	\N
Eddie Redmayne	\N	1982-01-06
Patrick Wilson	\N	\N
Emil Jannings	\N	1884-07-23
Josh Lucas	\N	\N
Brian Cox	\N	\N
Patty Duke	\N	\N
John Turturro	\N	\N
Alexandra Daddario	\N	\N
Adrianne Palicki	\N	\N
Zach Galifianakis	\N	\N
Michael Fassbender	\N	\N
Val Kilmer	\N	\N
Gwyneth Paltrow	\N	1972-09-28
Mark Strong	\N	\N
Andy Garcia	\N	\N
Josh Brolin	\N	\N
Vin Diesel	\N	\N
Barbra Streisand	\N	1942-04-24
Sarah Jessica Parker	\N	\N
Patrick Stewart	\N	\N
Kate Winslet	\N	1975-10-05
Ernest Borgnine	\N	1917-01-24
Jason Sudeikis	\N	\N
Owen Wilson	\N	\N
Leonardo DiCaprio	\N	\N
Catherine Deneuve	\N	\N
Alexis Thorpe	\N	\N
Michael Keaton	\N	\N
Jeff Goldblum	\N	\N
Martin Lawrence	\N	\N
Gloria Swanson	\N	\N
Jo Van Fleet	\N	\N
Christina Applegate	\N	\N
John Travolta	\N	\N
Nia Long	\N	\N
Charles Chaplin	\N	\N
Ben Stiller	\N	\N
Melissa Leo	\N	\N
Gene Kelly	\N	\N
Walter Matthau	\N	\N
Christoph Waltz	\N	\N
Anjelica Huston	\N	\N
Emma Thompson	\N	1959-04-15
Fred Astaire	\N	\N
Ray Liotta	\N	\N
Raquel Welch	\N	\N
Kate Beckinsale	\N	\N
Miranda Richardson	\N	\N
Rebecca Romijn	\N	\N
Michelle Monaghan	\N	\N
Jon Favreau	\N	\N
Broderick Crawford	\N	1911-12-09
Jared Leto	\N	\N
Jean Dujardin	\N	1972-07-19
Paul Walker	\N	\N
John Hawkes	\N	\N
Ali Larter	\N	\N
Erich von Stroheim	\N	\N
Hattie McDaniel	\N	\N
Mary McDonnell	\N	\N
Liam Hemsworth	\N	\N
January Jones	\N	\N
Amanda Peet	\N	\N
Taylor Kitsch	\N	\N
Jean-Louis Trintignant	\N	\N
Parker Posey	\N	\N
Salma Hayek	\N	\N
Boris Karloff	\N	\N
Vanessa Hudgens	\N	\N
Brittany Snow	\N	\N
Klaus Kinski	\N	\N
Neve Campbell	\N	\N
Norma Shearer	\N	1902-08-10
Ed Begley	\N	\N
Michael C. Hall	\N	\N
Sue Lyon	\N	\N
Gerard Butler	\N	\N
Amanda Bynes	\N	\N
David Spade	\N	\N
Jeremy Renner	\N	\N
Roberto Benigni	\N	1952-10-27
John Wayne	\N	1907-05-26
Rooney Mara	\N	\N
Anna Paquin	\N	\N
Gary Sinise	\N	\N
Talia Shire	\N	\N
Kevin Costner	\N	\N
Jamie Bell	\N	\N
Julie Christie	\N	1940-04-14
James Dean	\N	\N
Cillian Murphy	\N	\N
Kristen Stewart	\N	\N
Jim Carrey	\N	\N
Fairuza Balk	\N	\N
John Mills	\N	\N
Danny Glover	\N	\N
Chris Rock	\N	\N
Channing Tatum	\N	\N
Tobey Maguire	\N	\N
Shohreh Aghdashloo	\N	\N
Sean Connery	\N	\N
Jacki Weaver	\N	\N
Mark Wahlberg	\N	\N
Rene Russo	\N	\N
Christopher Walken	\N	\N
Casey Affleck	\N	1975-08-12
Kim Hunter	\N	\N
George Clooney	\N	\N
Robin Williams	\N	\N
Jean Harlow	\N	\N
Yun-Fat Chow	\N	\N
Nicolas Cage	\N	1964-01-07
Jason Schwartzman	\N	\N
Courteney Cox	\N	\N
Alan Alda	\N	\N
Tom Hardy	\N	\N
Miyoshi Umeki	\N	\N
Toshirô Mifune	\N	\N
Patricia Neal	\N	1926-01-20
Dennis Hopper	\N	\N
Abigail Breslin	\N	\N
Jamie Lee Curtis	\N	\N
Julianne Moore	\N	1960-12-03
Bonnie Hunt	\N	\N
Julia Louis-Dreyfus	\N	\N
Jack Davenport	\N	\N
Michael Ealy	\N	\N
John Krasinski	\N	\N
Pam Grier	\N	\N
Jim Caviezel	\N	\N
Juliette Binoche	\N	\N
Patricia Clarkson	\N	\N
Miles Teller	\N	\N
Gabourey Sidibe	\N	\N
Bette Davis	\N	1908-04-05
Matt Dillon	\N	\N
Dean Jagger	\N	\N
Dakota Johnson	\N	\N
John Cusack	\N	\N
Gale Sondergaard	\N	\N
Nastassja Kinski	\N	\N
Harrison Ford	\N	\N
Shah Rukh Khan	\N	\N
Edmond O'Brien	\N	\N
Burt Lancaster	\N	1913-11-02
Jean-Claude Van Damme	\N	\N
Craig Robinson	\N	\N
Emily Blunt	\N	\N
Emma Stone	\N	1988-11-06
Alfred Molina	\N	\N
Seth Green	\N	\N
Nigel Hawthorne	\N	\N
Common	\N	\N
Judy Garland	\N	\N
Charlton Heston	\N	1923-10-04
Zooey Deschanel	\N	\N
Diane Lane	\N	\N
Robert Redford	\N	\N
Goldie Hawn	\N	\N
Jennifer Lopez	\N	\N
Thandie Newton	\N	\N
Don Cheadle	\N	\N
José Ferrer	\N	\N
Ioan Gruffudd	\N	\N
Rob Lowe	\N	\N
Demi Moore	\N	\N
Bill Pullman	\N	\N
Reese Witherspoon	\N	1976-03-22
Rufus Sewell	\N	\N
Sophie Okonedo	\N	\N
Jack Black	\N	\N
Stockard Channing	\N	\N
Mindy Kaling	\N	\N
Walter Huston	\N	\N
Denzel Washington	\N	1954-12-28
Paul Dano	\N	\N
Julie Andrews	\N	1935-10-01
Paul Muni	\N	1895-09-22
Donna Reed	\N	\N
Joel McCrea	\N	\N
Jared Harris	\N	\N
Dorothy Malone	\N	\N
Shirley Jones	\N	\N
Arnold Schwarzenegger	\N	\N
Helena Bonham Carter	\N	\N
Carrie Fisher	\N	\N
Chazz Palminteri	\N	\N
Leslie Mann	\N	\N
Gena Rowlands	\N	\N
Keanu Reeves	\N	\N
Tom Cruise	\N	\N
Pete Postlethwaite	\N	\N
David Strathairn	\N	\N
Mickey Rourke	\N	\N
Gary Cooper	\N	1901-05-07
Angela Bassett	\N	\N
Jean Reno	\N	\N
Mia Wasikowska	\N	\N
Jon Voight	\N	1938-12-29
Octavia Spencer	\N	\N
Joan Crawford	\N	1912-03-23
Jonathan Pryce	\N	\N
Danny DeVito	\N	\N
Chris Klein	\N	\N
Anne Hathaway	\N	\N
Clive Owen	\N	\N
Juliette Lewis	\N	\N
Carrie-Anne Moss	\N	\N
Carey Mulligan	\N	\N
Malcolm McDowell	\N	\N
Timothy Olyphant	\N	\N
Anne Bancroft	\N	1931-09-17
Laurence Olivier	\N	1907-05-22
Ginger Rogers	\N	1911-07-16
Teri Garr	\N	\N
Sandy Dennis	\N	\N
Charles Laughton	\N	1899-07-01
Jennifer Love Hewitt	\N	\N
Dick Van Dyke	\N	\N
Susan Sarandon	\N	1946-10-04
Joan Allen	\N	\N
Danny McBride	\N	\N
Chris Pine	\N	\N
Marie Dressler	\N	1868-11-09
Elizabeth Olsen	\N	\N
Frank Sinatra	\N	\N
Paul Scofield	\N	1922-01-21
Lance Henriksen	\N	\N
Brendan Gleeson	\N	\N
Loretta Young	\N	1913-01-06
Penélope Cruz	\N	\N
James Spader	\N	\N
Warren Beatty	\N	\N
Cher	\N	1946-05-20
Colin Firth	\N	1960-10-09
Lena Headey	\N	\N
Jonah Hill	\N	\N
Holly Hunter	\N	1958-03-20
Kerry Washington	\N	\N
Adrien Brody	\N	1973-04-14
Kathleen Turner	\N	\N
Kate Hudson	\N	\N
Dustin Hoffman	\N	1937-08-08
Frances McDormand	\N	1957-06-23
Anthony Quinn	\N	\N
Jackie Earle Haley	\N	\N
Audrey Hepburn	\N	1929-05-04
Jack Albertson	\N	\N
Mike Myers	\N	\N
Hal Holbrook	\N	\N
Edward G. Robinson	\N	\N
Emma Roberts	\N	\N
Mark Ruffalo	\N	\N
Fernanda Montenegro	\N	\N
Wendy Hiller	\N	\N
Jonathan Rhys Meyers	\N	\N
William Hurt	\N	1950-03-20
Lupita Nyong'o	\N	\N
Justin Timberlake	\N	\N
Bruno Ganz	\N	\N
Elizabeth Banks	\N	\N
Paula Patton	\N	\N
Kathleen Quinlan	\N	\N
Miley Cyrus	\N	\N
Tommy Lee Jones	\N	\N
Laura Dern	\N	\N
Jamie Foxx	\N	1967-12-13
Edward James Olmos	\N	\N
Dakota Fanning	\N	\N
Peter Dinklage	\N	\N
Helen Mirren	\N	1945-07-26
Jack Lemmon	\N	1925-02-08
Analeigh Tipton	\N	\N
Keri Russell	\N	\N
Chris Tucker	\N	\N
Michelle Williams	\N	\N
Lenny Kravitz	\N	\N
Anna Magnani	\N	1908-03-07
John Hurt	\N	\N
Jai Courtney	\N	\N
Matthew Broderick	\N	\N
Julie Walters	\N	\N
Jason Segel	\N	\N
Rob Schneider	\N	\N
Anne Baxter	\N	\N
Peter Fonda	\N	\N
Kenneth Branagh	\N	\N
Henry Cavill	\N	\N
Eileen Heckart	\N	\N
Kristen Bell	\N	\N
Jennifer Jason Leigh	\N	\N
Michael Shannon	\N	\N
Jennifer Hudson	\N	\N
Matt Damon	\N	\N
Sharon Stone	\N	\N
Barry Pepper	\N	\N
Leslie Nielsen	\N	\N
Justin Long	\N	\N
Michael J. Fox	\N	\N
James Cromwell	\N	\N
Melvyn Douglas	\N	\N
John Malkovich	\N	\N
Mahershala Ali	\N	\N
Kellan Lutz	\N	\N
Victor McLaglen	\N	1883-12-11
Sidney Poitier	\N	1927-02-20
Martin Sheen	\N	\N
Kevin Kline	\N	\N
Rachel Griffiths	\N	\N
Pauline Collins	\N	\N
Ginnifer Goodwin	\N	\N
Dennis Quaid	\N	\N
Alicia Silverstone	\N	\N
Yul Brynner	\N	1915-07-07
William H. Macy	\N	\N
Chloë Grace Moretz	\N	\N
Kirk Douglas	\N	\N
Joseph Gordon-Levitt	\N	\N
Idris Elba	\N	\N
Robert De Niro	\N	1943-08-17
Sean Bean	\N	\N
Will Smith	\N	\N
Barry Fitzgerald	\N	\N
Liv Tyler	\N	\N
Beatrice Straight	\N	\N
Forest Whitaker	\N	1961-07-15
Shailene Woodley	\N	\N
Ian Holm	\N	\N
Bob Hoskins	\N	\N
Sofía Vergara	\N	\N
Ian McKellen	\N	\N
Kat Dennings	\N	\N
Brie Larson	\N	1989-10-01
Elijah Wood	\N	\N
Daniel Radcliffe	\N	\N
Hugh Laurie	\N	\N
Natalie Dormer	\N	\N
Charlie Hunnam	\N	\N
Kevin James	\N	\N
John Rhys-Davies	\N	\N
Freddie Prinze Jr.	\N	\N
Andrea Riseborough	\N	\N
Alan Rickman	\N	\N
Marcia Gay Harden	\N	\N
Tilda Swinton	\N	\N
Martin Landau	\N	\N
Michael Sheen	\N	\N
Sigourney Weaver	\N	\N
Michael Clarke Duncan	\N	\N
Bruce Dern	\N	\N
Ashton Kutcher	\N	\N
River Phoenix	\N	\N
Jack Nicholson	\N	1937-04-22
Craig T. Nelson	\N	\N
Sam Worthington	\N	\N
Robert Pattinson	\N	\N
Kate Bosworth	\N	\N
Chris O'Donnell	\N	\N
Kevin Hart	\N	\N
Irrfan Khan	\N	\N
Willem Dafoe	\N	\N
Anna Faris	\N	\N
Brenda Blethyn	\N	\N
Mary Pickford	\N	1892-04-08
Claire Trevor	\N	\N
Bruce Lee	\N	\N
Sandra Bullock	\N	1964-07-26
Maureen Stapleton	\N	\N
Maggie Grace	\N	\N
Steve Martin	\N	\N
Burt Reynolds	\N	\N
Paul Bettany	\N	\N
John Cleese	\N	\N
Glenda Jackson	\N	1936-05-09
Bill Paxton	\N	\N
Claudette Colbert	\N	1903-09-13
Dan Aykroyd	\N	\N
Nick Frost	\N	\N
Liev Schreiber	\N	\N
Russell Brand	\N	\N
Randy Quaid	\N	\N
Rita Moreno	\N	\N
Liv Ullmann	\N	\N
Jane Alexander	\N	\N
Ed Helms	\N	\N
Dianne Wiest	\N	\N
Clint Eastwood	\N	\N
Kevin Spacey	\N	1959-07-26
Molly Ringwald	\N	\N
Rebel Wilson	\N	\N
Macaulay Culkin	\N	\N
Jessica Lange	\N	1949-04-20
James Garner	\N	\N
Cloris Leachman	\N	\N
Olivia de Havilland	\N	1916-07-01
William Holden	\N	1918-04-17
Ben Johnson	\N	\N
Jesse Eisenberg	\N	\N
Toni Collette	\N	\N
Lily Collins	\N	\N
Anthony Hopkins	\N	1937-12-31
Alex Pettyfer	\N	\N
Daniel Brühl	\N	\N
Halle Berry	\N	1966-08-14
Leighton Meester	\N	\N
Whitney Houston	\N	\N
Peter O'Toole	\N	\N
Barbara Stanwyck	\N	\N
Sylvester Stallone	\N	\N
Gemma Arterton	\N	\N
Rex Harrison	\N	1908-03-05
Angelina Jolie	\N	\N
Jeff Bridges	\N	1949-12-04
Will Ferrell	\N	\N
Karl Urban	\N	\N
Graham Greene	\N	\N
Joseph Schildkraut	\N	\N
Lily Tomlin	\N	\N
Christopher Reeve	\N	\N
Piper Perabo	\N	\N
Mark Rylance	\N	\N
Claudia Cardinale	\N	\N
Sissy Spacek	\N	1949-12-25
Betty White	\N	\N
Kate Capshaw	\N	\N
Ryan Reynolds	\N	\N
Morgan Freeman	\N	\N
Jane Darwell	\N	\N
Kristin Scott Thomas	\N	\N
Robert Duvall	\N	1931-01-05
Humphrey Bogart	\N	1899-12-25
Jim Broadbent	\N	\N
Max von Sydow	\N	\N
J.K. Simmons	\N	\N
Olivia Newton-John	\N	\N
Mary Astor	\N	\N
Minnie Driver	\N	\N
Amy Adams	\N	\N
June Squibb	\N	\N
Marlon Wayans	\N	\N
Min-sik Choi	\N	\N
Audrey Tautou	\N	\N
Kim Novak	\N	\N
David Thewlis	\N	\N
Van Heflin	\N	\N
Daniel Craig	\N	\N
Marilyn Monroe	\N	\N
Anna Friel	\N	\N
Topher Grace	\N	\N
Sally Field	\N	1946-11-06
George C. Scott	\N	1927-10-18
Glenn Close	\N	\N
Freddie Highmore	\N	\N
Kevin Bacon	\N	\N
James Woods	\N	\N
Michael B. Jordan	\N	\N
Jada Pinkett Smith	\N	\N
Blake Lively	\N	\N
Ben Foster	\N	\N
Ruth Gordon	\N	\N
Bill Murray	\N	\N
Jean-Paul Belmondo	\N	\N
Charlotte Rampling	\N	\N
James Caan	\N	\N
Rob Riggle	\N	\N
Maggie Gyllenhaal	\N	\N
Shirley Temple	\N	\N
Kurt Russell	\N	\N
Vanessa Redgrave	\N	\N
Jessica Lucas	\N	\N
Freida Pinto	\N	\N
Zac Efron	\N	\N
Vera Farmiga	\N	\N
Ed Harris	\N	\N
John Goodman	\N	\N
Bing Crosby	\N	1903-05-03
Viggo Mortensen	\N	\N
George Sanders	\N	\N
Peter Sarsgaard	\N	\N
Rachel Weisz	\N	\N
Gael García Bernal	\N	\N
Michelle Yeoh	\N	\N
John C. Reilly	\N	\N
Breckin Meyer	\N	\N
Christopher Mintz-Plasse	\N	\N
Maria Bello	\N	\N
Jennifer Lawrence	\N	1990-08-15
Lucille Ball	\N	\N
Lisa Kudrow	\N	\N
Michael Caine	\N	\N
Eddie Murphy	\N	\N
Katie Holmes	\N	\N
Paul Newman	\N	1925-01-26
Stanley Tucci	\N	\N
Mary Steenburgen	\N	\N
Luise Rainer	\N	1910-01-12
Anna Kendrick	\N	\N
Cliff Robertson	\N	1925-09-09
Julie Delpy	\N	\N
Geoffrey Rush	\N	1951-07-06
Brad Pitt	\N	\N
Mel Gibson	\N	\N
Marlee Matlin	\N	1965-08-24
Neil Patrick Harris	\N	\N
Helen Hunt	\N	1963-06-15
Cary Elwes	\N	\N
Aaron Eckhart	\N	\N
Colin Farrell	\N	\N
Harpo Marx	\N	\N
Steve McQueen	\N	\N
Laura Linney	\N	\N
Cedric the Entertainer	\N	\N
Jean Seberg	\N	\N
Joanne Woodward	\N	1930-02-27
Ingrid Bergman	\N	1915-08-29
Amber Heard	\N	\N
Ice Cube	\N	\N
Simon Pegg	\N	\N
Kim Basinger	\N	\N
Winona Ryder	\N	\N
Carmen Miranda	\N	\N
Ronald Colman	\N	1891-02-09
Rosamund Pike	\N	\N
Emmy Rossum	\N	\N
Eva Green	\N	\N
Tina Fey	\N	\N
Shirley Booth	\N	1898-08-30
Milla Jovovich	\N	\N
Vincent Gallo	\N	\N
Lynn Redgrave	\N	\N
Dwayne Johnson	\N	\N
Andy Serkis	\N	\N
Rachel McAdams	\N	\N
Vince Vaughn	\N	\N
Viola Davis	\N	\N
Isla Fisher	\N	\N
Tom Hiddleston	\N	\N
Rita Hayworth	\N	\N
Buster Keaton	\N	\N
Gregory Peck	\N	1916-04-05
Bérénice Bejo	\N	\N
Megan Fox	\N	\N
F. Murray Abraham	\N	1939-10-24
Sally Kirkland	\N	\N
Geena Davis	\N	\N
Eliza Dushku	\N	\N
Tom Hulce	\N	\N
Haing S. Ngor	\N	\N
Gérard Depardieu	\N	\N
Ben Affleck	\N	\N
Ken Watanabe	\N	\N
Gene Hackman	\N	1930-01-30
Jeremy Irons	\N	1948-09-19
Peter Finch	\N	1916-09-28
Charles Coburn	\N	\N
Steve Buscemi	\N	\N
Gene Wilder	\N	\N
Stephen Rea	\N	\N
Annette Bening	\N	\N
Amy Ryan	\N	\N
Maureen O'Hara	\N	\N
Jerry Lewis	\N	\N
Andrew Lincoln	\N	\N
Harold Russell	\N	\N
Walter Brennan	\N	\N
Peter Ustinov	\N	\N
Téa Leoni	\N	\N
Michelle Pfeiffer	\N	\N
Ewan McGregor	\N	\N
Ray Winstone	\N	\N
Ryan Phillippe	\N	\N
Selena Gomez	\N	\N
Aamir Khan	\N	\N
Abdellatif Kechiche	\N	\N
Abel Gance	\N	\N
Adam Elliot	\N	\N
Akira Kurosawa	\N	\N
Alain Resnais	\N	\N
Alan J. Pakula	\N	\N
Alan Mak	\N	\N
Alan Parker	\N	\N
Alejandro Amenábar	\N	\N
Alejandro G. Innárritu	\N	\N
Alejandro González Innárritu	\N	\N
Alex Garland	\N	\N
Alex Proyas	\N	\N
Alexander Mackendrick	\N	\N
Alexander Payne	\N	\N
Alfonso Cuarón	\N	\N
Alfred Hitchcock	\N	\N
Andrea Arnold	\N	\N
Andrew Adamson	\N	\N
Andrew Davis	\N	\N
Andrew Dominik	\N	\N
Andrew Lau	\N	\N
Andrew Marton	\N	\N
Andrew Niccol	\N	\N
Andrew Stanton	\N	\N
Andrey Tarkovskiy	\N	\N
Andrey Zvyagintsev	\N	\N
Ang Lee	\N	\N
Anthony Minghella	\N	\N
Anthony Russo	\N	\N
Anton Corbijn	\N	\N
Anurag Basu	\N	\N
Anurag Kashyap	\N	\N
Armando Iannucci	\N	\N
Arthur Penn	\N	\N
Arthur Rosson	\N	\N
Asghar Farhadi	\N	\N
Ash Brannon	\N	\N
Ashutosh Gowariker	\N	\N
Atom Egoyan	\N	\N
Barry Cook	\N	\N
Barry Levinson	\N	\N
Baz Luhrmann	\N	\N
Benh Zeitlin	\N	\N
Bennett Miller	\N	\N
Bernardo Bertolucci	\N	\N
Billy Wilder	\N	\N
Blake Edwards	\N	\N
Bob Clark	\N	\N
Bob Fosse	\N	\N
Bob Peterson	\N	\N
Bob Rafelson	\N	\N
Brad Bird	\N	\N
Brian De Palma	\N	\N
Brian G. Hutton	\N	\N
Bruce Robinson	\N	\N
Bryan Singer	\N	\N
Byron Howard	\N	\N
Béla Tarr	\N	\N
Cameron Crowe	\N	\N
Carl Th. Dreyer	\N	\N
Carl Theodor Dreyer	\N	\N
Carol Reed	\N	\N
Cecil B. de Mille	\N	\N
Chan-wook Park	\N	\N
Charles Crichton	\N	\N
Charles Vidor	\N	\N
Charlie Chaplin	\N	\N
Chas. F. Reisner	\N	\N
Chris Buck	\N	\N
Chris Sanders	\N	\N
Chris Williams	\N	\N
Christopher Miller	\N	\N
Christopher Nolan	\N	\N
Claude Berri	\N	\N
Clyde Bruckman	\N	\N
Costa-Gavras	\N	\N
Cristian Mungiu	\N	\N
Curtis Hanson	\N	\N
Cy Endfield	\N	\N
D.W. Griffith	\N	\N
Damien Chazelle	\N	\N
Damián Szifron	\N	\N
Dan Gilroy	\N	\N
Daniel Monzón	\N	\N
Danis Tanovic	\N	\N
Danny Boyle	\N	\N
Dario Argento	\N	\N
Darren Aronofsky	\N	\N
David Anspaugh	\N	\N
David Ayer	\N	\N
David Cronenberg	\N	\N
David Fincher	\N	\N
David Hand	\N	\N
David Lean	\N	\N
David Lynch	\N	\N
David Michôd	\N	\N
David O. Russell	\N	\N
David Silverman	\N	\N
David Yates	\N	\N
David Zucker	\N	\N
Dean DeBlois	\N	\N
Debra Granik	\N	\N
Delbert Mann	\N	\N
Denis Villeneuve	\N	\N
Derek Cianfrance	\N	\N
Destin Daniel Cretton	\N	\N
Don Hall	\N	\N
Don Siegel	\N	\N
Donald Siegel	\N	\N
Doug Liman	\N	\N
Duncan Jones	\N	\N
E. Klimov	\N	\N
Edgar Wright	\N	\N
Edward Sedgwick	\N	\N
Edward Yang	\N	\N
Edward Zwick	\N	\N
Eli Craig	\N	\N
Eli Roth	\N	\N
Elia Kazan	\N	\N
Elmar Klos	\N	\N
Emeric Pressburger	\N	\N
Emir Kusturica	\N	\N
Eric Toledano	\N	\N
Ernst Lubitsch	\N	\N
Ethan Coen	\N	\N
F.W. Murnau	\N	\N
Fabian Bielinsky	\N	\N
Fatih Akin	\N	\N
Federico Fellini	\N	\N
Fernando Meirelles	\N	\N
Florian Henckel von Donnersmarck	\N	\N
Francis Coppola	\N	\N
Francis Ford Coppola	\N	\N
Francis Lawrence	\N	\N
Frank Capra	\N	\N
Frank Darabont	\N	\N
Frank Miller	\N	\N
Franklin J. Schaffner	\N	\N
François Truffaut	\N	\N
Fred McLeod Wilcox	\N	\N
Fred Neymeyer	\N	\N
Fred Zinnemann	\N	\N
Fritz Lang	\N	\N
Gareth Evans	\N	\N
Gareth Huw Evans	\N	\N
Gary Trousdale	\N	\N
Gavin O'Connor	\N	\N
Georg Wilhelm Pabst	\N	\N
George A. Romero	\N	\N
George Armitage	\N	\N
George Cukor	\N	\N
George Lucas	\N	\N
George Miller	\N	\N
George P. Cosmatos	\N	\N
George Roy Hill	\N	\N
George Seaton	\N	\N
George Sluizer	\N	\N
George Stevens	\N	\N
Georges Franju	\N	\N
Gillo Pontecorvo	\N	\N
Giuseppe Tornatore	\N	\N
Gore Verbinski	\N	\N
Greg Mottola	\N	\N
Gregg Araki	\N	\N
Gregory La Cava	\N	\N
Guillaume Canet	\N	\N
Guillermo del Toro	\N	\N
Gus Van Sant	\N	\N
Gus Van Sant Jr.	\N	\N
Guy Hamilton	\N	\N
Guy Ritchie	\N	\N
H.G. Clouzot	\N	\N
Hal Ashby	\N	\N
Harold Ramis	\N	\N
Hayao Miyazaki	\N	\N
Henri-Georges Clouzot	\N	\N
Henry Koster	\N	\N
Henry Selick	\N	\N
Hideo Nakata	\N	\N
Hirokazu Koreeda	\N	\N
Hiromasa Yonebayashi	\N	\N
Hiroshi Teshigahara	\N	\N
Hong-jin Na	\N	\N
Howard Hawks	\N	\N
Ingmar Bergman	\N	\N
Irvin Kershner	\N	\N
Irving Rapper	\N	\N
Isao Takahata	\N	\N
Ivan Reitman	\N	\N
J. Lee Thompson	\N	\N
J.J. Abrams	\N	\N
Jack Blystone	\N	\N
Jack Clayton	\N	\N
Jacques Audiard	\N	\N
Jacques Becker	\N	\N
Jacques Demy	\N	\N
Jacques Tati	\N	\N
Jacques Tourneur	\N	\N
James Algar	\N	\N
James Cameron	\N	\N
James Foley	\N	\N
James Gunn	\N	\N
James Ivory	\N	\N
James L. Brooks	\N	\N
James Mangold	\N	\N
James McTeigue	\N	\N
James Ponsoldt	\N	\N
James Whale	\N	\N
Jan Pinkava	\N	\N
Jan de Bont	\N	\N
Jane Campion	\N	\N
Jason Reitman	\N	\N
Jaume Balagueró	\N	\N
Je-gyu Kang	\N	\N
Jean Cocteau	\N	\N
Jean Renoir	\N	\N
Jean Vigo	\N	\N
Jean-Luc Godard	\N	\N
Jean-Marc Vallée	\N	\N
Jean-Pierre Dardenne	\N	\N
Jean-Pierre Jeunet	\N	\N
Jean-Pierre Melville	\N	\N
Jeff Nichols	\N	\N
Jemaine Clement	\N	\N
Jennifer Lee	\N	\N
Jeong-beom Lee	\N	\N
Jerome Robbins	\N	\N
Jim Abrahams	\N	\N
Jim Jarmusch	\N	\N
Jim Sheridan	\N	\N
Joe Johnston	\N	\N
Joe Russo	\N	\N
Joe Wright	\N	\N
Joel Coen	\N	\N
John Boorman	\N	\N
John Carney	\N	\N
John Carpenter	\N	\N
John Cassavetes	\N	\N
John Crowley	\N	\N
John Ford	\N	\N
John Frankenheimer	\N	\N
John G. Avildsen	\N	\N
John Hillcoat	\N	\N
John Hughes	\N	\N
John Huston	\N	\N
John Landis	\N	\N
John Lasseter	\N	\N
John McTiernan	\N	\N
John Musker	\N	\N
John Sayles	\N	\N
John Schlesinger	\N	\N
John Singleton	\N	\N
John Stevenson	\N	\N
John Sturges	\N	\N
John Woo	\N	\N
Jonathan Dayton	\N	\N
Jonathan Demme	\N	\N
Jonathan Frakes	\N	\N
Jonathan Levine	\N	\N
Joon Ho Bong	\N	\N
Joseph L. Mankiewicz	\N	\N
Joseph Sargent	\N	\N
Joss Whedon	\N	\N
José Padilha	\N	\N
Juan José Campanella	\N	\N
Jules Dassin	\N	\N
Julian Schnabel	\N	\N
Ján Kadár	\N	\N
Kaige Chen	\N	\N
Kar Wai Wong	\N	\N
Karan Johar	\N	\N
Kathryn Bigelow	\N	\N
Katsuhiro Ôtomo	\N	\N
Ken Annakin	\N	\N
Ken Loach	\N	\N
Kenji Mizoguchi	\N	\N
Kenneth Loach	\N	\N
Kenneth Lonergan	\N	\N
Kevin Macdonald	\N	\N
Kevin Smith	\N	\N
Ki-duk Kim	\N	\N
Kim Jee-woon	\N	\N
Kimberly Peirce	\N	\N
King Vidor	\N	\N
Kinji Fukasaku	\N	\N
Kirk Wise	\N	\N
Krzysztof Kieslowski	\N	\N
Kátia Lund	\N	\N
Larry Charles	\N	\N
Lars Von Trier	\N	\N
Lasse Hallström	\N	\N
Laurent Cantet	\N	\N
Lee Daniels	\N	\N
Lee Tamahori	\N	\N
Lee Unkrich	\N	\N
Leo McCarey	\N	\N
Lewis Milestone	\N	\N
Lindsay Anderson	\N	\N
Louis Malle	\N	\N
Loveleen Tandan	\N	\N
Luc Besson	\N	\N
Luc Dardenne	\N	\N
Luchino Visconti	\N	\N
Luis Bunuel	\N	\N
Luis Bunnuel	\N	\N
Lukas Moodysson	\N	\N
M. Night Shyamalan	\N	\N
Majid Majidi	\N	\N
Mamoru Hosoda	\N	\N
Mamoru Oshii	\N	\N
Marc Caro	\N	\N
Marc Forster	\N	\N
Marc Webb	\N	\N
Marcel Carné	\N	\N
Marco Tullio Giordana	\N	\N
Marjane Satrapi	\N	\N
Mark Osborne	\N	\N
Mark Sandrich	\N	\N
Martin Brest	\N	\N
Martin Campbell	\N	\N
Martin McDonagh	\N	\N
Martin Scorsese	\N	\N
Masaki Kobayashi	\N	\N
Mathieu Kassovitz	\N	\N
Matt Reeves	\N	\N
Matthew Vaughn	\N	\N
Max Ophüls	\N	\N
Max Opuls	\N	\N
Mel Brooks	\N	\N
Mel Stuart	\N	\N
Mervyn LeRoy	\N	\N
Michael Cimino	\N	\N
Michael Curtiz	\N	\N
Michael Haneke	\N	\N
Michael Lehmann	\N	\N
Michael Mann	\N	\N
Michael Powell	\N	\N
Michel Gondry	\N	\N
Michel Hazanavicius	\N	\N
Michelangelo Antonioni	\N	\N
Mike Figgis	\N	\N
Mike Judge	\N	\N
Mike Leigh	\N	\N
Mike Newell	\N	\N
Mike Nichols	\N	\N
Mikhail Kalatozov	\N	\N
Milos Forman	\N	\N
Morten Tyldum	\N	\N
Nathan Greno	\N	\N
Neil Jordan	\N	\N
Neill Blomkamp	\N	\N
Nicholas Meyer	\N	\N
Nicholas Ray	\N	\N
Nick Park	\N	\N
Nicolas Roeg	\N	\N
Nicolas Winding Refn	\N	\N
Niels Arden Oplev	\N	\N
Noah Baumbach	\N	\N
Norman Ferguson	\N	\N
Norman Jewison	\N	\N
Nuri Bilge Ceylan	\N	\N
Oliver Hirschbiegel	\N	\N
Oliver Stone	\N	\N
Olivier Nakache	\N	\N
Otto Preminger	\N	\N
Paco Plaza	\N	\N
Paolo Sorrentino	\N	\N
Park Chan Wook	\N	\N
Paul Greengrass	\N	\N
Paul Thomas Anderson	\N	\N
Paul Verhoeven	\N	\N
Pawel Pawlikowski	\N	\N
Pedro Almodóvar	\N	\N
Penny Marshall	\N	\N
Pete Docter	\N	\N
Peter Bogdanovich	\N	\N
Peter Greenaway	\N	\N
Peter Jackson	\N	\N
Peter Weir	\N	\N
Peter Yates	\N	\N
Phil Alden Robinson	\N	\N
Phil Lord	\N	\N
Philip Kaufman	\N	\N
Preston Sturges	\N	\N
Quentin Tarantino	\N	\N
Rainer Werner Fassbinder	\N	\N
Rajkumar Hirani	\N	\N
Rakesh Omprakash Mehra	\N	\N
Raoul Walsh	\N	\N
René Clément	\N	\N
Rian Johnson	\N	\N
Rich Moore	\N	\N
Richard Attenborough	\N	\N
Richard Ayoade	\N	\N
Richard Brooks	\N	\N
Richard Donner	\N	\N
Richard Eyre	\N	\N
Richard Kelly	\N	\N
Richard Lester	\N	\N
Richard Linklater	\N	\N
Richard Marquand	\N	\N
Richard Rosson	\N	\N
Ridley Scott	\N	\N
Rob Marshall	\N	\N
Rob Minkoff	\N	\N
Rob Reiner	\N	\N
Robert Aldrich	\N	\N
Robert Altman	\N	\N
Robert Benton	\N	\N
Robert Bresson	\N	\N
Robert Clouse	\N	\N
Robert Hamer	\N	\N
Robert Mulligan	\N	\N
Robert Pulcini	\N	\N
Robert Rodriguez	\N	\N
Robert Rossen	\N	\N
Robert Siodmak	\N	\N
Robert Stevenson	\N	\N
Robert Wiene	\N	\N
Robert Wise	\N	\N
Robert Zemeckis	\N	\N
Roberto Rossellini	\N	\N
Robin Hardy	\N	\N
Roger Allers	\N	\N
Roger Donaldson	\N	\N
Roland Joffé	\N	\N
Roman Polanski	\N	\N
Ron Clements	\N	\N
Ron Howard	\N	\N
Ronnie Del Carmen	\N	\N
Ronny Yu	\N	\N
Ruben Fleischer	\N	\N
Rupert Wyatt	\N	\N
Ryan Coogler	\N	\N
Ryan Fleck	\N	\N
S.M. Eisenstein	\N	\N
Sam Armstrong	\N	\N
Sam Mendes	\N	\N
Sam Peckinpah	\N	\N
Sam Raimi	\N	\N
Sam Taylor	\N	\N
Sam Wood	\N	\N
Satoshi Kon	\N	\N
Satyajit Ray	\N	\N
Scott Hicks	\N	\N
Sergei Eisenstein	\N	\N
Sergio Leone	\N	\N
Shane Black	\N	\N
Shane Meadows	\N	\N
Shari Springer Berman	\N	\N
Shekhar Kapur	\N	\N
Shimit Amin	\N	\N
Sidney Lumet	\N	\N
Sofia Coppola	\N	\N
Spike Jonze	\N	\N
Spike Lee	\N	\N
Stanley Donen	\N	\N
Stanley Kramer	\N	\N
Stanley Kubrick	\N	\N
Stefan Ruzowitzky	\N	\N
Stephen Chbosky	\N	\N
Stephen Chow	\N	\N
Stephen Daldry	\N	\N
Stephen Frears	\N	\N
Steve Box	\N	\N
Steven Soderbergh	\N	\N
Steven Spielberg	\N	\N
Stuart Gordon	\N	\N
Stuart Rosenberg	\N	\N
Sydney Pollack	\N	\N
Sylvain Chomet	\N	\N
T. Hee	\N	\N
Taika Waititi	\N	\N
Takashi Miike	\N	\N
Takeshi Kitano	\N	\N
Tate Taylor	\N	\N
Taylor Hackford	\N	\N
Ted Kotcheff	\N	\N
Terence Young	\N	\N
Terrence Malick	\N	\N
Terry George	\N	\N
Terry Gilliam	\N	\N
Terry Jones	\N	\N
Terry Zwigoff	\N	\N
The Hughes Brothers	\N	\N
The Wachowski Brothers	\N	\N
Thomas Vinterberg	\N	\N
Tim Burton	\N	\N
Tobe Hooper	\N	\N
Tod Browning	\N	\N
Todd Field	\N	\N
Todd Haynes	\N	\N
Todd Solondz	\N	\N
Tom Ford	\N	\N
Tom Hooper	\N	\N
Tom McCarthy	\N	\N
Tom Tykwer	\N	\N
Tomas Alfredson	\N	\N
Tony Bancroft	\N	\N
Tony Kaye	\N	\N
Tony Scott	\N	\N
Trey Parker	\N	\N
Valerie Faris	\N	\N
Vicky Jenson	\N	\N
Victor Fleming	\N	\N
Victor Sjöström	\N	\N
Vincent Paronnaud	\N	\N
Vincente Minnelli	\N	\N
Vishal Bhardwaj	\N	\N
Vittorio De Sica	\N	\N
Víctor Erice	\N	\N
W.S. Van Dyke	\N	\N
Walter Hill	\N	\N
Walter Salles	\N	\N
Werner Herzog	\N	\N
Wes Anderson	\N	\N
Wes Craven	\N	\N
William A. Wellman	\N	\N
William Cottrell	\N	\N
William Friedkin	\N	\N
William Keighley	\N	\N
William Wyler	\N	\N
Wilson Yip	\N	\N
Wim Wenders	\N	\N
Wolfgang Becker	\N	\N
Wolfgang Petersen	\N	\N
Wolfgang Reitherman	\N	\N
Xavier Dolan	\N	\N
Yash Chopra	\N	\N
Yasujirô Ozu	\N	\N
Yimou Zhang	\N	\N
Yôji Yamada	\N	\N
Yôjirô Takita	\N	\N
Zach Braff	\N	\N
Ágnes Hranitzky	\N	\N
\.


--
-- Data for Name: actor_pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actor_pelicula (anno, titulo, actor) FROM stdin;
1992	Glengarry Glen Ross	Al Pacino
1995	Two Bits	Al Pacino
2002	Insomnia	Al Pacino
1988	She's Having a Baby	Alec Baldwin
1988	Beetlejuice	Alec Baldwin
1988	Married to the Mob	Alec Baldwin
1988	Working Girl	Alec Baldwin
1988	Talk Radio	Alec Baldwin
1989	Great Balls of Fire!	Alec Baldwin
1990	The Hunt for Red October	Alec Baldwin
1990	Miami Blues	Alec Baldwin
1990	Alice	Alec Baldwin
1991	The Marrying Man	Alec Baldwin
1992	Prelude to a Kiss	Alec Baldwin
1992	Glengarry Glen Ross	Alec Baldwin
1993	Malice	Alec Baldwin
1994	The Getaway	Alec Baldwin
1994	The Shadow	Alec Baldwin
1995	Two Bits	Alec Baldwin
1996	The Juror	Alec Baldwin
1996	Heaven's Prisoners	Alec Baldwin
1996	Ghosts of Mississippi	Alec Baldwin
1997	The Edge	Alec Baldwin
1998	Mercury Rising	Alec Baldwin
1999	The Confession	Alec Baldwin
1999	Notting Hill	Alec Baldwin
1999	Outside Providence	Alec Baldwin
2000	Thomas and the Magic Railroad	Alec Baldwin
2000	State and Main	Alec Baldwin
2001	Pearl Harbor	Alec Baldwin
2001	Cats & Dogs	Alec Baldwin
2001	Final Fantasy: The Spirits Within	Alec Baldwin
2001	The Royal Tenenbaums	Alec Baldwin
2002	The Adventures of Pluto Nash	Alec Baldwin
2003	The Cooler	Alec Baldwin
2003	The Cat in the Hat	Alec Baldwin
2004	Along Came Polly	Alec Baldwin
2004	The Aviator	Alec Baldwin
2005	Elizabethtown	Alec Baldwin
2006	Mini's First Time	Alec Baldwin
2006	The Departed	Alec Baldwin
2006	Running with Scissors	Alec Baldwin
2006	The Good Shepherd	Alec Baldwin
2007	Suburban Girl	Alec Baldwin
2008	My Best Friend's Girl	Alec Baldwin
2009	My Sister's Keeper	Alec Baldwin
2011	Hick	Alec Baldwin
2011	Hick	Alec Baldwin
2012	Rock of Ages	Alec Baldwin
2012	To Rome with Love	Alec Baldwin
2012	Rise of the Guardians	Alec Baldwin
2013	Blue Jasmine	Alec Baldwin
2013	Seduced and Abandoned	Alec Baldwin
2014	Still Alice	Alec Baldwin
2015	Aloha	Alec Baldwin
2015	Concussion	Alec Baldwin
2016	Back in the Day	Alec Baldwin
2015	Andron	Alec Baldwin
2016	Paris Can Wait	Alec Baldwin
2016	Blind	Alec Baldwin
2016	Rules Don't Apply	Alec Baldwin
2017	The Boss Baby	Alec Baldwin
2018	The Public	Alec Baldwin
2018	BlacKkKlansman	Alec Baldwin
2018	A Star Is Born	Alec Baldwin
2019	Before You Know It	Alec Baldwin
2019	Drunk Parents	Alec Baldwin
2019	Crown Vic	Alec Baldwin
2019	Crown Vic	Alec Baldwin
2019	Motherless Brooklyn	Alec Baldwin
2019	Arctic Dogs	Alec Baldwin
2020	Beast Beast	Alec Baldwin
2020	Pixie	Alec Baldwin
2020	Chick Fight	Alec Baldwin
2021	The Boss Baby: Family Business	Alec Baldwin
1997	The Edge	Anthony Hopkins
1997	Amistad	Anthony Hopkins
2011	Thor	Anthony Hopkins
2013	Thor: The Dark World	Anthony Hopkins
1993	Last Action Hero	\N
2011	Thor	Chris Hemsworth
1998	The Avengers	Chris Hemsworth
2013	Thor: The Dark World	Chris Hemsworth
2015	Avengers: Age of Ultron	Chris Hemsworth
2016	The Promise	Christian Bale
2001	Pearl Harbor	Dan Aykroyd
2011	Thor	Idris Elba
2013	Thor: The Dark World	Idris Elba
2014	No Good Deed	Idris Elba
2015	Avengers: Age of Ultron	Idris Elba
1994	The Getaway	James Woods
1996	Ghosts of Mississippi	James Woods
2001	Final Fantasy: The Spirits Within	James Woods
2001	Scary Movie 2	James Woods
2006	Mini's First Time	Jeff Goldblum
2021	The Boss Baby: Family Business	Jeff Goldblum
1992	Home Alone 2: Lost in New York	Joe Pesci
2006	The Good Shepherd	Joe Pesci
1997	Good Will Hunting	Matt Damon
2006	The Departed	Matt Damon
2006	The Good Shepherd	Matt Damon
2011	Thor	Natalie Portman
2013	Thor: The Dark World	Natalie Portman
2011	Thor	Rene Russo
2013	Thor: The Dark World	Rene Russo
1993	Last Action Hero	Sharon Stone
1982	The Simple-Minded Murderer	Stellan Skarsgård
1987	Jim & Piraterna Blom	Stellan Skarsgård
1988	The Unbearable Lightness of Being	Stellan Skarsgård
1990	The Hunt for Red October	Stellan Skarsgård
1996	Breaking the Waves	Stellan Skarsgård
1997	Insomnia	Stellan Skarsgård
1997	Good Will Hunting	Stellan Skarsgård
1997	Amistad	Stellan Skarsgård
1998	Ronin	Stellan Skarsgård
1999	Deep Blue Sea	Stellan Skarsgård
2000	Harlan County War	Stellan Skarsgård
2000	Timecode	Stellan Skarsgård
2000	Dancer in the Dark	Stellan Skarsgård
2002	No Good Deed	Stellan Skarsgård
2003	Dogville	Stellan Skarsgård
2006	Pirates of the Caribbean: Dead Man's Chest	Stellan Skarsgård
2008	Mamma Mia!	Stellan Skarsgård
2009	Angels & Demons	Stellan Skarsgård
2009	Angels & Demons	Stellan Skarsgård
2011	Melancholia	Stellan Skarsgård
2011	The Girl with the Dragon Tattoo	Stellan Skarsgård
2011	Thor	Stellan Skarsgård
2012	The Avengers	Stellan Skarsgård
2013	Thor: The Dark World	Stellan Skarsgård
2014	In Order of Disappearance	Stellan Skarsgård
2015	Cinderella	Stellan Skarsgård
2015	Avengers: Age of Ultron	Stellan Skarsgård
2016	Our Kind of Traitor	Stellan Skarsgård
2017	Return to Montauk	Stellan Skarsgård
2018	The Man Who Killed Don Quixote	Stellan Skarsgård
2019	Out Stealing Horses	Stellan Skarsgård
1984	Dune	Stellan Skarsgård
1998	The Avengers	Uma Thurman
1997	Good Will Hunting	Ben Affleck
2001	Pearl Harbor	Ben Affleck
1988	Working Girl	Harrison Ford
2016	The Promise	Ian McKellen
1981	Priest of Love	Ian McKellen
1985	Plenty	Ian McKellen
1989	Scandal	Ian McKellen
1993	Six Degrees of Separation	Ian McKellen
1993	Last Action Hero	Ian McKellen
1994	The Shadow	Ian McKellen
1995	Restoration	Ian McKellen
1997	Swept from the Sea	Ian McKellen
1998	Gods and Monsters	Ian McKellen
1998	Apt Pupil	Ian McKellen
2001	The Lord of the Rings: The Fellowship of the Ring	Ian McKellen
2003	The Lord of the Rings: The Return of the King	Ian McKellen
2005	Neverwas	Ian McKellen
2006	Flushed Away	Ian McKellen
2006	The Da Vinci Code	Ian McKellen
2006	X-Men: The Last Stand	Ian McKellen
2007	Stardust	Ian McKellen
2012	The Hobbit: An Unexpected Journey	Ian McKellen
2013	The Wolverine	Ian McKellen
2013	The Hobbit: The Desolation of Smaug	Ian McKellen
2014	X-Men: Days of Future Past	Ian McKellen
2014	The Hobbit: The Battle of the Five Armies	Ian McKellen
2015	Mr. Holmes	Ian McKellen
2019	The Good Liar	Ian McKellen
2021	Infinitum: Subject Unknown	Ian McKellen
1990	The Hunt for Red October	\N
1988	Beetlejuice	\N
1990	The Hunt for Red October	\N
2001	Pearl Harbor	\N
2001	Pearl Harbor	Kate Beckinsale
2004	The Aviator	Kate Beckinsale
2001	Pearl Harbor	Michael Shannon
1990	The Hunt for Red October	\N
1997	Amistad	\N
2001	Pearl Harbor	\N
1984	Dune	\N
1990	The Hunt for Red October	\N
1985	Plenty	\N
1990	The Hunt for Red October	\N
1995	Restoration	\N
1990	The Hunt for Red October	\N
1990	The Hunt for Red October	Sean Connery
1998	The Avengers	Sean Connery
1975	The Rocky Horror Picture Show	\N
1978	The Shout	\N
1980	Times Square	\N
1982	Annie	\N
1983	The Ploughman's Lunch	\N
1985	Legend	\N
1985	Clue	\N
1990	The Hunt for Red October	\N
1991	Oscar	\N
1992	Home Alone 2: Lost in New York	\N
1993	Loaded Weapon 1	\N
1993	The Three Musketeers	\N
1994	The Shadow	\N
1995	Congo	\N
1996	Muppet Treasure Island	\N
1997	McHale's Navy	\N
2000	Charlie's Angels	\N
2001	Scary Movie 2	\N
2002	Ritual	\N
2004	Kinsey	\N
2008	The Secret of Moonacre	\N
1985	Legend	Tom Cruise
2005	Elizabethtown	Tom Cruise
2012	Rock of Ages	Tom Cruise
\.


--
-- Data for Name: actores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actores (nombre, anno_nacimiento) FROM stdin;
Chris Hemsworth	\N
Michael Lerner	\N
Rosario Dawson	\N
Jeffrey Wright	\N
Emily Watson	\N
Patrick Swayze	\N
Nicholas Hoult	\N
Marcello Mastroianni	\N
Famke Janssen	\N
Abbie Cornish	\N
Carole Lombard	\N
Nick Nolte	\N
Pierce Brosnan	\N
Rose Byrne	\N
Jason Robards	\N
Lake Bell	\N
Hugo Weaving	\N
Sean Penn	1960-08-17
Henry Fonda	1905-05-16
Lillian Gish	\N
Hugh Grant	\N
Josh Hutcherson	\N
Catalina Sandino Moreno	\N
Ida Lupino	\N
Greg Kinnear	\N
Jason Statham	\N
Catherine Keener	\N
Justin Bartha	\N
Andrew Garfield	\N
Ned Beatty	\N
Ethan Hawke	\N
Antonio Banderas	\N
Norman Reedus	\N
James Stewart	1908-05-20
Jennifer Garner	\N
Jean Arthur	\N
Zoe Saldana	\N
Robert Forster	\N
Shia LaBeouf	\N
Faye Dunaway	1941-01-14
Ava Gardner	\N
John Houseman	\N
Claire Danes	\N
Kirsten Dunst	\N
Greta Garbo	\N
Jennifer Jones	1919-03-02
Emily Browning	\N
Thomas Mitchell	\N
Javier Bardem	\N
Sam Waterston	\N
Martin Balsam	\N
James Franco	\N
Emma Watson	\N
Spencer Tracy	1900-04-05
Sophie Marceau	\N
Chiwetel Ejiofor	\N
Bruce Willis	\N
Joey King	\N
Emilia Clarke	\N
Tatum O'Neal	\N
Queen Latifah	\N
Oscar Isaac	\N
Alec Guinness	1914-04-02
Naomi Watts	\N
Doris Day	\N
Janet Leigh	\N
Tyrese Gibson	\N
Stellan Skarsgård	\N
Donald Sutherland	\N
Léa Seydoux	\N
Marion Cotillard	1975-09-30
Michelle Rodriguez	\N
Melanie Griffith	\N
Michelle Trachtenberg	\N
Benedict Cumberbatch	\N
Steve Carell	\N
Rashida Jones	\N
Joe Pesci	\N
Rebecca Hall	\N
Suraj Sharma	\N
Felicity Jones	\N
William Shatner	\N
Mercedes McCambridge	\N
Jude Law	\N
Evangeline Lilly	\N
Christopher Lee	\N
Alexander Skarsgård	\N
Piper Laurie	\N
Sam Elliott	\N
Ellen Burstyn	1932-12-07
Rosie Huntington-Whiteley	\N
Simone Signoret	1921-03-25
Charlize Theron	1975-08-07
Jackie Chan	\N
Rinko Kikuchi	\N
Jay Baruchel	\N
Celeste Holm	\N
Liza Minnelli	1946-03-12
Andy Samberg	\N
Keira Knightley	\N
Deborah Kerr	\N
George Burns	\N
Armin Mueller-Stahl	\N
Virginia Madsen	\N
Katharine Hepburn	1907-05-12
Aaron Taylor-Johnson	\N
Eva Mendes	\N
Bryan Cranston	\N
Richard Jenkins	\N
Setsuko Hara	\N
Richard Gere	\N
Kaley Cuoco	\N
Johnny Depp	\N
Mila Kunis	\N
Richard Dreyfuss	1947-10-29
Jack Palance	\N
Robin Weigert	\N
Jessica Chastain	\N
Michael Rooker	\N
Rod Steiger	1925-04-14
Paddy Considine	\N
Joseph Cotten	\N
Jane Wyman	1914-01-04
Lindsay Lohan	\N
Evan Rachel Wood	\N
Thora Birch	\N
Robert Mitchum	\N
Bernie Mac	\N
George Kennedy	\N
Tim Roth	\N
Olivia Wilde	\N
Ashley Judd	\N
Eric Bana	\N
Albert Brooks	\N
Elisabeth Moss	\N
Robert Shaw	\N
Cameron Diaz	\N
Ashley Greene	\N
Judy Davis	\N
Paul Lukas	1895-05-26
Cate Blanchett	1969-05-14
Adam Sandler	\N
Olivia Thirlby	\N
Julia Stiles	\N
Anthony Perkins	\N
Gal Gadot	\N
Dean Stockwell	\N
George Chakiris	\N
Donald Crisp	\N
Vivien Leigh	1913-11-05
Giovanni Ribisi	\N
Lee Marvin	1924-02-19
Sarah Michelle Gellar	\N
Linda Hamilton	\N
Hugh Jackman	\N
Mae West	\N
Nathan Lane	\N
Saoirse Ronan	\N
Scarlett Johansson	\N
Imelda Staunton	\N
Susan Hayward	1917-06-30
Robert Downey Jr.	\N
Myrna Loy	\N
Bill Hader	\N
David Niven	1910-03-01
Priyanka Chopra	\N
Chris Pratt	\N
Mélanie Laurent	\N
Bette Midler	\N
Garrett Hedlund	\N
Marlon Brando	1924-04-03
Jennifer Coolidge	\N
Albert Finney	\N
Alan Arkin	\N
Montgomery Clift	\N
Peter Sellers	\N
Rutger Hauer	\N
Guy Pearce	\N
Djimon Hounsou	\N
Louise Fletcher	1934-07-22
Janet Gaynor	1906-10-06
Teresa Wright	\N
Carol Burnett	\N
Harvey Keitel	\N
Debbie Reynolds	\N
Louis Gossett Jr.	\N
Ziyi Zhang	\N
Philip Seymour Hoffman	\N
Johnny Knoxville	\N
Katherine Heigl	\N
Errol Flynn	\N
Kate Mara	\N
Natalie Portman	1981-09-06
Tim Robbins	\N
Meryl Streep	1949-06-22
Bruce Davison	\N
Fredric March	1897-08-31
Marlene Dietrich	\N
Marsha Mason	\N
Christopher Plummer	\N
Amanda Seyfried	\N
Maria Falconetti	\N
Isabelle Huppert	\N
Patricia Arquette	\N
Tom Wilkinson	\N
Al Pacino	1940-04-25
Samuel L. Jackson	\N
Daniel Day-Lewis	1957-04-29
Peggy Ashcroft	\N
Wallace Beery	1885-04-01
Christian Bale	\N
Roy Scheider	\N
Liam Neeson	\N
Shirley MacLaine	1934-04-24
Catherine Zeta-Jones	\N
Gillian Anderson	\N
Rosalind Russell	\N
Noomi Rapace	\N
AnnaSophia Robb	\N
Natalie Wood	\N
Richard Harris	\N
Anthony Mackie	\N
Lesley Manville	\N
Alec Baldwin	\N
Maya Rudolph	\N
Lili Taylor	\N
Sally Hawkins	\N
Romain Duris	\N
Clark Gable	1901-02-01
Robin Wright	\N
James Mason	\N
Mary Elizabeth Winstead	\N
Linda Hunt	\N
Emmanuelle Riva	\N
Mo'Nique	\N
Christina Ricci	\N
Diane Keaton	1946-01-05
Woody Harrelson	\N
Gary Busey	\N
Edmund Gwenn	\N
Claude Rains	\N
Josh Duhamel	\N
Vincent Cassel	\N
Billy Crystal	\N
William Powell	\N
Jennifer Connelly	\N
Jason Bateman	\N
Isabelle Adjani	\N
Greer Garson	1904-09-29
Maximilian Schell	1930-12-08
Helen Hayes	1900-10-10
Jon Hamm	\N
Ryan Gosling	\N
Takashi Shimura	\N
Paul Giamatti	\N
Jessica Alba	\N
Greta Gerwig	\N
Peter Lorre	\N
Cary Grant	\N
Olympia Dukakis	\N
Lucy Liu	\N
Teresa Palmer	\N
James Marsden	\N
Jeanne Moreau	\N
Gloria Grahame	\N
Kathy Bates	1948-06-28
Christopher Lloyd	\N
Ray Stevenson	\N
Chuck Norris	\N
Lionel Barrymore	1878-04-28
Angela Lansbury	\N
Jodie Foster	1962-11-19
Mark Hamill	\N
Billy Crudup	\N
Thomas Haden Church	\N
Drew Barrymore	\N
Richard Burton	\N
Josh Hartnett	\N
Christine Taylor	\N
Amanda Crew	\N
Geraldine Page	1924-11-22
Josh Gad	\N
John Leguizamo	\N
Adriana Barraza	\N
Heath Ledger	\N
Kiefer Sutherland	\N
Orlando Bloom	\N
Chris Cooper	\N
Marisa Tomei	\N
Don Ameche	\N
Felicity Huffman	\N
Whoopi Goldberg	\N
Hilary Swank	1974-07-30
Mira Sorvino	\N
Joaquin Phoenix	\N
Benjamin Bratt	\N
Hayden Christensen	\N
Marion Davies	\N
Franka Potente	\N
Chloë Sevigny	\N
Charlie Day	\N
Jennifer Aniston	\N
Hilary Duff	\N
John Gielgud	\N
Linda Fiorentino	\N
Gloria Stuart	\N
Kristen Wiig	\N
Matthew McConaughey	1969-11-04
James Coburn	\N
Michael Cera	\N
Julianne Hough	\N
Elizabeth Taylor	1932-02-27
James Gandolfini	\N
Beyoncé	\N
Jeff Daniels	\N
Bradley Cooper	\N
Edward Norton	\N
Judy Holliday	1921-06-21
Grace Kelly	1929-11-12
Shelley Winters	\N
Mads Mikkelsen	\N
Estelle Parsons	\N
Tom Conti	\N
Art Carney	1918-11-04
Groucho Marx	\N
Joan Fontaine	1917-10-22
Uma Thurman	\N
Charlie Sheen	\N
Olga Kurylenko	\N
Billy Bob Thornton	\N
Mia Farrow	\N
Hugh Griffith	\N
Ralph Fiennes	\N
Julia Roberts	1967-10-28
Nicole Kidman	1967-06-20
Mercedes Ruehl	\N
James Cagney	1899-07-17
Red Buttons	\N
Jena Malone	\N
Jill Clayburgh	\N
Mandy Moore	\N
Steve Coogan	\N
Luke Wilson	\N
Jessica Tandy	1909-06-07
Benicio Del Toro	\N
Maggie Smith	1934-12-28
Taraji P. Henson	\N
Ruby Dee	\N
Richard Farnsworth	\N
Burl Ives	\N
Jake Gyllenhaal	\N
Brendan Fraser	\N
Haley Joel Osment	\N
David Oyelowo	\N
Nick Swardson	\N
Tom Hanks	1956-07-09
Sophia Loren	1934-09-20
Mike Vogel	\N
Chris Evans	\N
Logan Lerman	\N
Jamie Chung	\N
Cobie Smulders	\N
Orson Welles	\N
Richard E. Grant	\N
Margot Robbie	\N
Lauren Bacall	\N
Warner Baxter	1889-03-29
Ray Milland	1905-01-03
Billy Burke	\N
Danny Aiello	\N
Elisabeth Shue	\N
Jane Fonda	1937-12-21
Rhys Ifans	\N
Ellen DeGeneres	\N
Hailee Steinfeld	\N
Ben Kingsley	1943-12-31
Sean Astin	\N
Björk	\N
Gig Young	\N
Laurence Fishburne	\N
Renée Zellweger	\N
Jet Li	\N
Sam Rockwell	\N
Lee Grant	\N
Robert Donat	1905-03-18
Tyler Perry	\N
Sarah Polley	\N
Keisha Castle-Hughes	\N
Frank Langella	\N
Ellen Page	\N
Jessica Biel	\N
Dudley Moore	\N
Clark Gregg	\N
Mary Tyler Moore	\N
Sacha Baron Cohen	\N
Daryl Hannah	\N
Samantha Morton	\N
Ethel Barrymore	\N
Seth Rogen	\N
Michael Douglas	1944-09-25
Woody Allen	\N
Judi Dench	\N
Tom Courtenay	\N
Seth MacFarlane	\N
Cuba Gooding Jr.	\N
Tim Allen	\N
Terrence Howard	\N
Mireille Enos	\N
Cam Gigandet	\N
Janet McTeer	\N
Eva Marie Saint	\N
Brenda Fricker	\N
Alice Eve	\N
Jon Heder	\N
Christopher Guest	\N
Wesley Snipes	\N
Alicia Vikander	\N
Debra Winger	\N
Timothy Hutton	\N
Paul Rudd	\N
James McAvoy	\N
Russell Crowe	1964-04-07
Melissa McCarthy	\N
Meg Ryan	\N
Dave Franco	\N
Eddie Redmayne	1982-01-06
Patrick Wilson	\N
Emil Jannings	1884-07-23
Josh Lucas	\N
Brian Cox	\N
Patty Duke	\N
John Turturro	\N
Alexandra Daddario	\N
Adrianne Palicki	\N
Zach Galifianakis	\N
Michael Fassbender	\N
Val Kilmer	\N
Gwyneth Paltrow	1972-09-28
Mark Strong	\N
Andy Garcia	\N
Josh Brolin	\N
Vin Diesel	\N
Barbra Streisand	1942-04-24
Sarah Jessica Parker	\N
Patrick Stewart	\N
Kate Winslet	1975-10-05
Ernest Borgnine	1917-01-24
Jason Sudeikis	\N
Owen Wilson	\N
Leonardo DiCaprio	\N
Catherine Deneuve	\N
Alexis Thorpe	\N
Michael Keaton	\N
Jeff Goldblum	\N
Martin Lawrence	\N
Gloria Swanson	\N
Jo Van Fleet	\N
Christina Applegate	\N
John Travolta	\N
Nia Long	\N
Charles Chaplin	\N
Ben Stiller	\N
Melissa Leo	\N
Gene Kelly	\N
Walter Matthau	\N
Christoph Waltz	\N
Anjelica Huston	\N
Emma Thompson	1959-04-15
Fred Astaire	\N
Ray Liotta	\N
Raquel Welch	\N
Kate Beckinsale	\N
Miranda Richardson	\N
Rebecca Romijn	\N
Michelle Monaghan	\N
Jon Favreau	\N
Broderick Crawford	1911-12-09
Jared Leto	\N
Jean Dujardin	1972-07-19
Paul Walker	\N
John Hawkes	\N
Ali Larter	\N
Erich von Stroheim	\N
Hattie McDaniel	\N
Mary McDonnell	\N
Liam Hemsworth	\N
January Jones	\N
Amanda Peet	\N
Taylor Kitsch	\N
Jean-Louis Trintignant	\N
Parker Posey	\N
Salma Hayek	\N
Boris Karloff	\N
Vanessa Hudgens	\N
Brittany Snow	\N
Klaus Kinski	\N
Neve Campbell	\N
Norma Shearer	1902-08-10
Ed Begley	\N
Michael C. Hall	\N
Sue Lyon	\N
Gerard Butler	\N
Amanda Bynes	\N
David Spade	\N
Jeremy Renner	\N
Roberto Benigni	1952-10-27
John Wayne	1907-05-26
Rooney Mara	\N
Anna Paquin	\N
Gary Sinise	\N
Talia Shire	\N
Kevin Costner	\N
Jamie Bell	\N
Julie Christie	1940-04-14
James Dean	\N
Cillian Murphy	\N
Kristen Stewart	\N
Jim Carrey	\N
Fairuza Balk	\N
John Mills	\N
Danny Glover	\N
Chris Rock	\N
Channing Tatum	\N
Tobey Maguire	\N
Shohreh Aghdashloo	\N
Sean Connery	\N
Jacki Weaver	\N
Mark Wahlberg	\N
Rene Russo	\N
Christopher Walken	\N
Casey Affleck	1975-08-12
Kim Hunter	\N
George Clooney	\N
Robin Williams	\N
Jean Harlow	\N
Yun-Fat Chow	\N
Nicolas Cage	1964-01-07
Jason Schwartzman	\N
Courteney Cox	\N
Alan Alda	\N
Tom Hardy	\N
Miyoshi Umeki	\N
Toshirô Mifune	\N
Patricia Neal	1926-01-20
Dennis Hopper	\N
Abigail Breslin	\N
Jamie Lee Curtis	\N
Julianne Moore	1960-12-03
Bonnie Hunt	\N
Julia Louis-Dreyfus	\N
Jack Davenport	\N
Michael Ealy	\N
John Krasinski	\N
Pam Grier	\N
Jim Caviezel	\N
Juliette Binoche	\N
Patricia Clarkson	\N
Miles Teller	\N
Gabourey Sidibe	\N
Bette Davis	1908-04-05
Matt Dillon	\N
Dean Jagger	\N
Dakota Johnson	\N
John Cusack	\N
Gale Sondergaard	\N
Nastassja Kinski	\N
Harrison Ford	\N
Shah Rukh Khan	\N
Edmond O'Brien	\N
Burt Lancaster	1913-11-02
Jean-Claude Van Damme	\N
Craig Robinson	\N
Emily Blunt	\N
Emma Stone	1988-11-06
Alfred Molina	\N
Seth Green	\N
Nigel Hawthorne	\N
Common	\N
Judy Garland	\N
Charlton Heston	1923-10-04
Zooey Deschanel	\N
Diane Lane	\N
Robert Redford	\N
Goldie Hawn	\N
Jennifer Lopez	\N
Thandie Newton	\N
Don Cheadle	\N
José Ferrer	\N
Ioan Gruffudd	\N
Rob Lowe	\N
Demi Moore	\N
Bill Pullman	\N
Reese Witherspoon	1976-03-22
Rufus Sewell	\N
Sophie Okonedo	\N
Jack Black	\N
Stockard Channing	\N
Mindy Kaling	\N
Walter Huston	\N
Denzel Washington	1954-12-28
Paul Dano	\N
Julie Andrews	1935-10-01
Paul Muni	1895-09-22
Donna Reed	\N
Joel McCrea	\N
Jared Harris	\N
Dorothy Malone	\N
Shirley Jones	\N
Arnold Schwarzenegger	\N
Helena Bonham Carter	\N
Carrie Fisher	\N
Chazz Palminteri	\N
Leslie Mann	\N
Gena Rowlands	\N
Keanu Reeves	\N
Tom Cruise	\N
Pete Postlethwaite	\N
David Strathairn	\N
Mickey Rourke	\N
Gary Cooper	1901-05-07
Angela Bassett	\N
Jean Reno	\N
Mia Wasikowska	\N
Jon Voight	1938-12-29
Octavia Spencer	\N
Joan Crawford	1912-03-23
Jonathan Pryce	\N
Danny DeVito	\N
Chris Klein	\N
Anne Hathaway	\N
Clive Owen	\N
Juliette Lewis	\N
Carrie-Anne Moss	\N
Carey Mulligan	\N
Malcolm McDowell	\N
Timothy Olyphant	\N
Anne Bancroft	1931-09-17
Laurence Olivier	1907-05-22
Ginger Rogers	1911-07-16
Teri Garr	\N
Sandy Dennis	\N
Charles Laughton	1899-07-01
Jennifer Love Hewitt	\N
Dick Van Dyke	\N
Susan Sarandon	1946-10-04
Joan Allen	\N
Danny McBride	\N
Chris Pine	\N
Marie Dressler	1868-11-09
Elizabeth Olsen	\N
Frank Sinatra	\N
Paul Scofield	1922-01-21
Lance Henriksen	\N
Brendan Gleeson	\N
Loretta Young	1913-01-06
Penélope Cruz	\N
James Spader	\N
Warren Beatty	\N
Cher	1946-05-20
Colin Firth	1960-10-09
Lena Headey	\N
Jonah Hill	\N
Holly Hunter	1958-03-20
Kerry Washington	\N
Adrien Brody	1973-04-14
Kathleen Turner	\N
Kate Hudson	\N
Dustin Hoffman	1937-08-08
Frances McDormand	1957-06-23
Anthony Quinn	\N
Jackie Earle Haley	\N
Audrey Hepburn	1929-05-04
Jack Albertson	\N
Mike Myers	\N
Hal Holbrook	\N
Edward G. Robinson	\N
Emma Roberts	\N
Mark Ruffalo	\N
Fernanda Montenegro	\N
Wendy Hiller	\N
Jonathan Rhys Meyers	\N
William Hurt	1950-03-20
Lupita Nyong'o	\N
Justin Timberlake	\N
Bruno Ganz	\N
Elizabeth Banks	\N
Paula Patton	\N
Kathleen Quinlan	\N
Miley Cyrus	\N
Tommy Lee Jones	\N
Laura Dern	\N
Jamie Foxx	1967-12-13
Edward James Olmos	\N
Dakota Fanning	\N
Peter Dinklage	\N
Helen Mirren	1945-07-26
Jack Lemmon	1925-02-08
Analeigh Tipton	\N
Keri Russell	\N
Chris Tucker	\N
Michelle Williams	\N
Lenny Kravitz	\N
Anna Magnani	1908-03-07
John Hurt	\N
Jai Courtney	\N
Matthew Broderick	\N
Julie Walters	\N
Jason Segel	\N
Rob Schneider	\N
Anne Baxter	\N
Peter Fonda	\N
Kenneth Branagh	\N
Henry Cavill	\N
Eileen Heckart	\N
Kristen Bell	\N
Jennifer Jason Leigh	\N
Michael Shannon	\N
Jennifer Hudson	\N
Matt Damon	\N
Sharon Stone	\N
Barry Pepper	\N
Leslie Nielsen	\N
Justin Long	\N
Michael J. Fox	\N
James Cromwell	\N
Melvyn Douglas	\N
John Malkovich	\N
Mahershala Ali	\N
Kellan Lutz	\N
Victor McLaglen	1883-12-11
Sidney Poitier	1927-02-20
Martin Sheen	\N
Kevin Kline	\N
Rachel Griffiths	\N
Pauline Collins	\N
Ginnifer Goodwin	\N
Dennis Quaid	\N
Alicia Silverstone	\N
Yul Brynner	1915-07-07
William H. Macy	\N
Chloë Grace Moretz	\N
Kirk Douglas	\N
Joseph Gordon-Levitt	\N
Idris Elba	\N
Robert De Niro	1943-08-17
Sean Bean	\N
Will Smith	\N
Barry Fitzgerald	\N
Liv Tyler	\N
Beatrice Straight	\N
Forest Whitaker	1961-07-15
Shailene Woodley	\N
Ian Holm	\N
Bob Hoskins	\N
Sofía Vergara	\N
Ian McKellen	\N
Kat Dennings	\N
Brie Larson	1989-10-01
Elijah Wood	\N
Daniel Radcliffe	\N
Hugh Laurie	\N
Natalie Dormer	\N
Charlie Hunnam	\N
Kevin James	\N
John Rhys-Davies	\N
Freddie Prinze Jr.	\N
Andrea Riseborough	\N
Alan Rickman	\N
Marcia Gay Harden	\N
Tilda Swinton	\N
Martin Landau	\N
Michael Sheen	\N
Sigourney Weaver	\N
Michael Clarke Duncan	\N
Bruce Dern	\N
Ashton Kutcher	\N
River Phoenix	\N
Jack Nicholson	1937-04-22
Craig T. Nelson	\N
Sam Worthington	\N
Robert Pattinson	\N
Kate Bosworth	\N
Chris O'Donnell	\N
Kevin Hart	\N
Irrfan Khan	\N
Willem Dafoe	\N
Anna Faris	\N
Brenda Blethyn	\N
Mary Pickford	1892-04-08
Claire Trevor	\N
Bruce Lee	\N
Sandra Bullock	1964-07-26
Maureen Stapleton	\N
Maggie Grace	\N
Steve Martin	\N
Burt Reynolds	\N
Paul Bettany	\N
John Cleese	\N
Glenda Jackson	1936-05-09
Bill Paxton	\N
Claudette Colbert	1903-09-13
Dan Aykroyd	\N
Nick Frost	\N
Liev Schreiber	\N
Russell Brand	\N
Randy Quaid	\N
Rita Moreno	\N
Liv Ullmann	\N
Jane Alexander	\N
Ed Helms	\N
Dianne Wiest	\N
Clint Eastwood	\N
Kevin Spacey	1959-07-26
Molly Ringwald	\N
Rebel Wilson	\N
Macaulay Culkin	\N
Jessica Lange	1949-04-20
James Garner	\N
Cloris Leachman	\N
Olivia de Havilland	1916-07-01
William Holden	1918-04-17
Ben Johnson	\N
Jesse Eisenberg	\N
Toni Collette	\N
Lily Collins	\N
Anthony Hopkins	1937-12-31
Alex Pettyfer	\N
Daniel Brühl	\N
Halle Berry	1966-08-14
Leighton Meester	\N
Whitney Houston	\N
Peter O'Toole	\N
Barbara Stanwyck	\N
Sylvester Stallone	\N
Gemma Arterton	\N
Rex Harrison	1908-03-05
Angelina Jolie	\N
Jeff Bridges	1949-12-04
Will Ferrell	\N
Karl Urban	\N
Graham Greene	\N
Joseph Schildkraut	\N
Lily Tomlin	\N
Christopher Reeve	\N
Piper Perabo	\N
Mark Rylance	\N
Claudia Cardinale	\N
Sissy Spacek	1949-12-25
Betty White	\N
Kate Capshaw	\N
Ryan Reynolds	\N
Morgan Freeman	\N
Jane Darwell	\N
Kristin Scott Thomas	\N
Robert Duvall	1931-01-05
Humphrey Bogart	1899-12-25
Jim Broadbent	\N
Max von Sydow	\N
J.K. Simmons	\N
Olivia Newton-John	\N
Mary Astor	\N
Minnie Driver	\N
Amy Adams	\N
June Squibb	\N
Marlon Wayans	\N
Min-sik Choi	\N
Audrey Tautou	\N
Kim Novak	\N
David Thewlis	\N
Van Heflin	\N
Daniel Craig	\N
Marilyn Monroe	\N
Anna Friel	\N
Topher Grace	\N
Sally Field	1946-11-06
George C. Scott	1927-10-18
Glenn Close	\N
Freddie Highmore	\N
Kevin Bacon	\N
James Woods	\N
Michael B. Jordan	\N
Jada Pinkett Smith	\N
Blake Lively	\N
Ben Foster	\N
Ruth Gordon	\N
Bill Murray	\N
Jean-Paul Belmondo	\N
Charlotte Rampling	\N
James Caan	\N
Rob Riggle	\N
Maggie Gyllenhaal	\N
Shirley Temple	\N
Kurt Russell	\N
Vanessa Redgrave	\N
Jessica Lucas	\N
Freida Pinto	\N
Zac Efron	\N
Vera Farmiga	\N
Ed Harris	\N
John Goodman	\N
Bing Crosby	1903-05-03
Viggo Mortensen	\N
George Sanders	\N
Peter Sarsgaard	\N
Rachel Weisz	\N
Gael García Bernal	\N
Michelle Yeoh	\N
John C. Reilly	\N
Breckin Meyer	\N
Christopher Mintz-Plasse	\N
Maria Bello	\N
Jennifer Lawrence	1990-08-15
Lucille Ball	\N
Lisa Kudrow	\N
Michael Caine	\N
Eddie Murphy	\N
Katie Holmes	\N
Paul Newman	1925-01-26
Stanley Tucci	\N
Mary Steenburgen	\N
Luise Rainer	1910-01-12
Anna Kendrick	\N
Cliff Robertson	1925-09-09
Julie Delpy	\N
Geoffrey Rush	1951-07-06
Brad Pitt	\N
Mel Gibson	\N
Marlee Matlin	1965-08-24
Neil Patrick Harris	\N
Helen Hunt	1963-06-15
Cary Elwes	\N
Aaron Eckhart	\N
Colin Farrell	\N
Harpo Marx	\N
Steve McQueen	\N
Laura Linney	\N
Cedric the Entertainer	\N
Jean Seberg	\N
Joanne Woodward	1930-02-27
Ingrid Bergman	1915-08-29
Amber Heard	\N
Ice Cube	\N
Simon Pegg	\N
Kim Basinger	\N
Winona Ryder	\N
Carmen Miranda	\N
Ronald Colman	1891-02-09
Rosamund Pike	\N
Emmy Rossum	\N
Eva Green	\N
Tina Fey	\N
Shirley Booth	1898-08-30
Milla Jovovich	\N
Vincent Gallo	\N
Lynn Redgrave	\N
Dwayne Johnson	\N
Andy Serkis	\N
Rachel McAdams	\N
Vince Vaughn	\N
Viola Davis	\N
Isla Fisher	\N
Tom Hiddleston	\N
Rita Hayworth	\N
Buster Keaton	\N
Gregory Peck	1916-04-05
Bérénice Bejo	\N
Megan Fox	\N
F. Murray Abraham	1939-10-24
Sally Kirkland	\N
Geena Davis	\N
Eliza Dushku	\N
Tom Hulce	\N
Haing S. Ngor	\N
Gérard Depardieu	\N
Ben Affleck	\N
Ken Watanabe	\N
Gene Hackman	1930-01-30
Jeremy Irons	1948-09-19
Peter Finch	1916-09-28
Charles Coburn	\N
Steve Buscemi	\N
Gene Wilder	\N
Stephen Rea	\N
Annette Bening	\N
Amy Ryan	\N
Maureen O'Hara	\N
Jerry Lewis	\N
Andrew Lincoln	\N
Harold Russell	\N
Walter Brennan	\N
Peter Ustinov	\N
Téa Leoni	\N
Michelle Pfeiffer	\N
Ewan McGregor	\N
Ray Winstone	\N
Ryan Phillippe	\N
Selena Gomez	\N
\.


--
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentarios (anno, titulo, rating, autor, texto, hash, pagina) FROM stdin;
2021	You're Watching Video Music Box	7.7	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/you're_watching_video_music_box_2021
1982	The Simple-Minded Murderer	7.6	Andy Connor	I didn't understand the dialogues cause i don't speak swedish	3d473f434cde8dee40278a3e86d6571d	https://andysreviews.org/wordpress/andy_connor/the_simple-minded_murderer_1982
2022	Gabby Giffords Won't Back Down	6.2	Andy Connor	A good Documentary	2d7b8dde189fb9eda0425cb0b56fc000	https://andysreviews.org/wordpress/andy_connor/gabby_giffords_won't_back_down_2022
2022	Wedding Season	6.3	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/wedding_season_2022
2021	The Man from Nowhere	5.9	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_man_from_nowhere_2021
2022	Loving Highsmith	7.1	Andy Connor	A good Documentary	2d7b8dde189fb9eda0425cb0b56fc000	https://andysreviews.org/wordpress/andy_connor/loving_highsmith_2022
2022	The Day the Music Died/American Pie	7.1	Andy Connor	A good Documentary	2d7b8dde189fb9eda0425cb0b56fc000	https://andysreviews.org/wordpress/andy_connor/the_day_the_music_died/american_pie_2022
2022	How Did We Get Here?	7.1	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/how_did_we_get_here?_2022
2021	Too Soon: Comedy After 9/11	6.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/too_soon:_comedy_after_9/11_2021
2004	Kinsey	7.1	Andy Connor	A good movie to watch with your couple	b4a997711fb339ef16b796c4cd2beb15	https://andysreviews.org/wordpress/andy_connor/kinsey_2004
2021	V.C. Andrews' Landry Family V.C. Andrews' Hidden Jewel	5.6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/v.c._andrews'_landry_family_v.c._andrews'_hidden_jewel_2021
2022	The Janes	7.2	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_janes_2022
2022	Losing Addison	5.3	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/losing_addison_2022
2022	Life After You	7	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/life_after_you_2022
2022	Dating the Delaneys	7	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/dating_the_delaneys_2022
2021	Rise Again: Tulsa and the Red Summer	6.6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/rise_again:_tulsa_and_the_red_summer_2021
2021	Red Notice	6.3	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/red_notice_2021
2022	Love on Fire	5.6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/love_on_fire_2022
2021	Psych 3: This Is Gus	7.6	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/psych_3:_this_is_gus_2021
2022	Gabriel's Rapture: Part Two	5.7	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/gabriel's_rapture:_part_two_2022
2021	River's End: California's Latest Water War	7.9	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/river's_end:_california's_latest_water_war_2021
2016	Rules Don't Apply	5.7	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/rules_don't_apply_2016
2022	Family Squares	5.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/family_squares_2022
2021	The Resonator: Miskatonic U	4.9	Andy Connor	Not bad but definitely overrated	154c91d7d66fe614ca52ae9532f21495	https://andysreviews.org/wordpress/andy_connor/the_resonator:_miskatonic_u_2021
2022	Tyson's Run	6.1	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/tyson's_run_2022
2021	The Little Things	6.3	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/the_little_things_2021
2022	Flux Gourmet	5.8	Andy Connor	Not really a Scary movie	624f036d0e99c2ec364b1d34379e4674	https://andysreviews.org/wordpress/andy_connor/flux_gourmet_2022
2021	Ron's Gone Wrong	7	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/ron's_gone_wrong_2021
2019	Motherless Brooklyn	6.8	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/motherless_brooklyn_2019
2022	Ricky Gervais: SuperNature	7.6	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/ricky_gervais:_supernature_2022
2021	Those Who Wish Me Dead	6	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/those_who_wish_me_dead_2021
2021	The New York Times Presents Framing Britney Spears	6.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_new_york_times_presents_framing_britney_spears_2021
2021	Our Father	5.1	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/our_father_2021
2021	Son	5.6	Andy Connor	Awesome movie! It scared the hell out of me	a89f8b5dcf50edcbbb328048b0b73772	https://andysreviews.org/wordpress/andy_connor/son_2021
2021	Outside the Wire	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/outside_the_wire_2021
1996	Breaking the Waves	7.8	Andy Connor	A good movie to watch with your couple	b4a997711fb339ef16b796c4cd2beb15	https://andysreviews.org/wordpress/andy_connor/breaking_the_waves_1996
2021	Sunday Mornings	6.3	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/sunday_mornings_2021
2021	Patrice O'Neal: Killing Is Easy	7.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/patrice_o'neal:_killing_is_easy_2021
1994	The Getaway	5.8	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_getaway_1994
2021	Werewolves Within	6	Andy Connor	Not really a Scary movie	624f036d0e99c2ec364b1d34379e4674	https://andysreviews.org/wordpress/andy_connor/werewolves_within_2021
2022	And Just Like That... The Documentary	6.6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/and_just_like_that..._the_documentary_2022
2021	Voyagers	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/voyagers_2021
2000	Charlie's Angels	5.6	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/charlie's_angels_2000
2021	Trees of Peace	6.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/trees_of_peace_2021
2014	X-Men: Days of Future Past	7.9	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/x-men:_days_of_future_past_2014
2021	The Killer in My Backyard	5.2	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_killer_in_my_backyard_2021
1985	Clue	7.2	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/clue_1985
2021	Who We Are: A Chronicle of Racism in America	6.5	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/who_we_are:_a_chronicle_of_racism_in_america_2021
2021	Secret Agent Dingledorf and His Trusty Dog Splat	5.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/secret_agent_dingledorf_and_his_trusty_dog_splat_2021
2022	Presence of Love	7	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/presence_of_love_2022
2021	The Chronicle Mysteries Helped to Death	6.8	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_chronicle_mysteries_helped_to_death_2021
2021	The Fabulous Filipino Brothers	6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_fabulous_filipino_brothers_2021
2021	Untold: Breaking Point	7.6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/untold:_breaking_point_2021
2021	The Righteous	5.7	Andy Connor	Awesome movie! It scared the hell out of me	a89f8b5dcf50edcbbb328048b0b73772	https://andysreviews.org/wordpress/andy_connor/the_righteous_2021
2021	Secret Santa	5.6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/secret_santa_2021
2021	The Sparks Brothers	7.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_sparks_brothers_2021
2021	The Trick	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_trick_2021
2021	The Mitchells vs the Machines	7.6	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/the_mitchells_vs_the_machines_2021
2022	Not Just a Girl	7	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/not_just_a_girl_2022
2021	Strings	5.3	Andy Connor	Awesome movie! It scared the hell out of me	a89f8b5dcf50edcbbb328048b0b73772	https://andysreviews.org/wordpress/andy_connor/strings_2021
2020	Chick Fight	4.7	Andy Connor	Not bad but definitely overrated	154c91d7d66fe614ca52ae9532f21495	https://andysreviews.org/wordpress/andy_connor/chick_fight_2020
2021	One and the Same	6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/one_and_the_same_2021
2022	The Modern Way	6.7	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_modern_way_2022
2021	Terry Venables: A Man Can Dream	7.2	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/terry_venables:_a_man_can_dream_2021
2021	The Guilty	6.3	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_guilty_2021
2021	Women Is Losers	5.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/women_is_losers_2021
2022	Master	5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/master_2022
2021	Symphoria	7	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/symphoria_2021
2022	Samaritan	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/samaritan_2022
2022	In Search of Tomorrow	7.9	Andy Connor	A good Documentary	2d7b8dde189fb9eda0425cb0b56fc000	https://andysreviews.org/wordpress/andy_connor/in_search_of_tomorrow_2022
2022	Trevor: The Musical	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/trevor:_the_musical_2022
2021	People Just Do Nothing: Big in Japan	6.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/people_just_do_nothing:_big_in_japan_2021
2022	Backpackers	5.7	Andy Connor	I didn't understand the dialogues cause i don't speak spanish	5cb1d9680573945a3736024e20673875	https://andysreviews.org/wordpress/andy_connor/backpackers_2022
2021	True Things	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/true_things_2021
2022	We Met in Virtual Reality	5.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/we_met_in_virtual_reality_2022
2022	North to Home	7.2	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/north_to_home_2022
2022	The Batman	7.9	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_batman_2022
2021	The Unforgivable	7.1	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_unforgivable_2021
1996	Muppet Treasure Island	6.9	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/muppet_treasure_island_1996
2022	Machine Gun Kelly's Life in Pink	6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/machine_gun_kelly's_life_in_pink_2022
2022	Norm Macdonald: Nothing Special	7.6	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/norm_macdonald:_nothing_special_2022
2021	Pharma Bro	5	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/pharma_bro_2021
2021	The Secret Lives of College Freshmen	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_secret_lives_of_college_freshmen_2021
2013	Thor: The Dark World	6.8	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/thor:_the_dark_world_2013
2022	Cha Cha Real Smooth	7.3	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/cha_cha_real_smooth_2022
2021	The Super Bob Einstein Movie	7.3	Andy Connor	A good Documentary	2d7b8dde189fb9eda0425cb0b56fc000	https://andysreviews.org/wordpress/andy_connor/the_super_bob_einstein_movie_2021
2022	Joel Kim Booster: Psychosexual	5.6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/joel_kim_booster:_psychosexual_2022
2022	Silverton Siege	6.2	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/silverton_siege_2022
2022	The Sea Beast	7.1	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/the_sea_beast_2022
2021	The Legend of the Underground	6.5	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_legend_of_the_underground_2021
2021	The Cleaner	5.1	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/the_cleaner_2021
2021	¡A todo tren! Destino Asturias	5.2	Andy Connor	I didn't understand the dialogues cause i don't speak spanish	5cb1d9680573945a3736024e20673875	https://andysreviews.org/wordpress/andy_connor/¡a_todo_tren!_destino_asturias_2021
2022	The Valet	6.7	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/the_valet_2022
2021	The Day Sports Stood Still	5.8	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_day_sports_stood_still_2021
2021	The Laureate	5.1	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_laureate_2021
2021	PAW Patrol: The Movie	6.1	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/paw_patrol:_the_movie_2021
2021	Together Together	6.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/together_together_2021
2021	Theo Von: Regular People	5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/theo_von:_regular_people_2021
2022	DC League of Super-Pets	7.6	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/dc_league_of_super-pets_2022
2022	A Tail of Love	6.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/a_tail_of_love_2022
2021	Tulsa: The Fire and the Forgotten	6.3	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/tulsa:_the_fire_and_the_forgotten_2021
2021	Our Lady of San Juan Four Centuries of Miracles	6.2	Andy Connor	I didn't understand the dialogues cause i don't speak spanish	5cb1d9680573945a3736024e20673875	https://andysreviews.org/wordpress/andy_connor/our_lady_of_san_juan_four_centuries_of_miracles_2021
1998	Apt Pupil	6.7	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/apt_pupil_1998
2021	Spencer	6.6	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/spencer_2021
2022	Sweet as Pie	6.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/sweet_as_pie_2022
2022	Last Exit: Space	5.7	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/last_exit:_space_2022
2022	Dog	6.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/dog_2022
2022	Borrego	5.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/borrego_2022
2003	Dogville	8	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/dogville_2003
2021	Soccer Mom Madam	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/soccer_mom_madam_2021
2022	Spiderhead	5.4	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/spiderhead_2022
2021	The Act of Reading	6.2	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_act_of_reading_2021
2022	The Tinder Swindler	7.1	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/the_tinder_swindler_2022
2019	Crown Vic	6.4	Andy Connor	it is a bit far fetched but a good movie overall	80ded2811aa75e6d790902f81afef54c	https://andysreviews.org/wordpress/andy_connor/crown_vic_2019
2022	I Challenger	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/i_challenger_2022
2021	The Spine of Night	6.3	Andy Connor	A good choice to spent the Sunday evening	165185528dc6d23325ef8231d56e3238	https://andysreviews.org/wordpress/andy_connor/the_spine_of_night_2021
2015	Concussion	7.1	Andy Connor	Yeahh! This movie is definitely a must see	2998ff1d4beb1a58efeb5d7ca19bbaa8	https://andysreviews.org/wordpress/andy_connor/concussion_2015
2022	Lightyear	5.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/lightyear_2022
1996	Heaven's Prisoners	5.8	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/heaven's_prisoners_1996
2022	Glorious	5.5	Andy Connor	Awesome movie! It scared the hell out of me	a89f8b5dcf50edcbbb328048b0b73772	https://andysreviews.org/wordpress/andy_connor/glorious_2022
2022	Look at Me: XXXTentacion	7.3	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/look_at_me:_xxxtentacion_2022
2022	Better Nate Than Ever	6.2	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/better_nate_than_ever_2022
2022	The Perfect Pairing	6.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_perfect_pairing_2022
2021	Resort to Love	5.7	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/resort_to_love_2021
2022	Slash/Back	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/slash/back_2022
2021	Wildhood	6.8	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/wildhood_2021
2022	Run & Gun	5.2	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/run_&_gun_2022
2022	Dirty Daddy: The Bob Saget Tribute	6.5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/dirty_daddy:_the_bob_saget_tribute_2022
2021	Rumble	5.9	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/rumble_2021
1993	Last Action Hero	6.4	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/last_action_hero_1993
2021	The Clue to Love	5.4	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/the_clue_to_love_2021
2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn	6.6	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/wework:_or_the_making_and_breaking_of_a_$47_billion_unicorn_2021
2021	Pray Away	6.5	Andy Connor	A good movie even for a Documentary	696ed7e99573ceab99df12a219dae0dc	https://andysreviews.org/wordpress/andy_connor/pray_away_2021
2021	Trippin' with the Kandasamys	5	Andy Connor	That's what I call a great choice!	e4ff1ce9d534ec51e9fba52d1b2aab50	https://andysreviews.org/wordpress/andy_connor/trippin'_with_the_kandasamys_2021
2022	The 64th Annual Grammy Awards	5	Andy Connor	Too long! i got asleep	fa365788f968dc52f5558465df90befe	https://andysreviews.org/wordpress/andy_connor/the_64th_annual_grammy_awards_2022
1975	The Rocky Horror Picture Show	7.4	Claire Johnson	Not really a Scary movie	6861e5608ff62346025f2c10c4194302	https://myspace.us/claires_word/movies/claire_johnson/the_rocky_horror_picture_show_1975
2021	Who Killed the KLF?	7	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/who_killed_the_klf?_2021
2021	The Souvenir: Part II	7.3	Claire Johnson	A good movie to watch with your couple	f18e6af7a735bde07f9fc7e464856620	https://myspace.us/claires_word/movies/claire_johnson/the_souvenir:_part_ii_2021
2021	Where Is Anne Frank	6.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/where_is_anne_frank_2021
2002	Insomnia	7.2	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/insomnia_2002
1978	The Shout	6.6	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/the_shout_1978
2021	The One and Only Dick Gregory	7.9	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_one_and_only_dick_gregory_2021
2003	The Lord of the Rings: The Return of the King	9	Claire Johnson	A good choice to spent the Saturday evening	69312425ab8a6286b552630ff5711fbb	https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_return_of_the_king_2003
2021	The Voyeurs	6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_voyeurs_2021
2022	Book of Love	5.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/book_of_love_2022
2022	Picabo	7	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/picabo_2022
2022	The Inside Outtakes	8.1	Claire Johnson	A good choice to spent the Saturday evening	69312425ab8a6286b552630ff5711fbb	https://myspace.us/claires_word/movies/claire_johnson/the_inside_outtakes_2022
2022	Paradise Highway	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/paradise_highway_2022
2021	The Phantom	6.5	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_phantom_2021
2021	Plan B	6.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/plan_b_2021
2021	President	7.6	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/president_2021
2021	The Big Rant	7.2	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/the_big_rant_2021
2022	Mrs Harris Goes to Paris	7.1	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/mrs_harris_goes_to_paris_2022
2021	The Wedding Trip	5.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_wedding_trip_2021
2021	Small Engine Repair	6.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/small_engine_repair_2021
2021	What?	6.2	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/what?_2021
2021	Prince Philip: The Man Behind the Throne	5.2	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/prince_philip:_the_man_behind_the_throne_2021
2021	Zack Snyder's Justice League	8	Claire Johnson	A good choice to spent the Sunday evening	e44cec129161b59938ea7ad2f7df2b74	https://myspace.us/claires_word/movies/claire_johnson/zack_snyder's_justice_league_2021
2022	Fantastic Beasts: The Secrets of Dumbledore	6.2	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/fantastic_beasts:_the_secrets_of_dumbledore_2022
2021	Otra forma de entender la vida	7.4	Claire Johnson	I didn't understand the dialogues cause i don't speak spanish	6d2eff18c8cc875fa1f794a61010ec11	https://myspace.us/claires_word/movies/claire_johnson/otra_forma_de_entender_la_vida_2021
2022	Fittest on Earth: Next Gen	5.9	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/fittest_on_earth:_next_gen_2022
2021	Sometime Other Than Now	5.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/sometime_other_than_now_2021
2022	The Great American Tag Sale with Martha Stewart	5.6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_great_american_tag_sale_with_martha_stewart_2022
2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)	8	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/summer_of_soul_(...or_when_the_revolution_could_not_be_televised)_2021
2021	The Art of Incarceration	7.8	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_art_of_incarceration_2021
2021	Songs for a Sloth	5.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/songs_for_a_sloth_2021
2021	This Is Francis X. Bushman	7.4	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/this_is_francis_x._bushman_2021
2022	Thirteen Lives	7.8	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/thirteen_lives_2022
2022	Jessie and the Elf Boy	6.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/jessie_and_the_elf_boy_2022
2022	Nope	7.1	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/nope_2022
2021	Seance	5.2	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/seance_2021
2021	The Grandmother	5.9	Claire Johnson	I didn't understand the dialogues cause i don't speak spanish	6d2eff18c8cc875fa1f794a61010ec11	https://myspace.us/claires_word/movies/claire_johnson/the_grandmother_2021
2021	Peter Rabbit 2: The Runaway	6.2	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/peter_rabbit_2:_the_runaway_2021
2007	Suburban Girl	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/suburban_girl_2007
2022	Spin Me Round	5.1	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/spin_me_round_2022
2001	The Lord of the Rings: The Fellowship of the Ring	8.8	Claire Johnson	A good choice to spent the Saturday evening	69312425ab8a6286b552630ff5711fbb	https://myspace.us/claires_word/movies/claire_johnson/the_lord_of_the_rings:_the_fellowship_of_the_ring_2001
2021	The Fallout	7	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/the_fallout_2021
2021	Rhapsody of Love	5.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/rhapsody_of_love_2021
2021	Operation Mincemeat	6.6	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/operation_mincemeat_2021
2021	The Most Reluctant Convert	6.9	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_most_reluctant_convert_2021
2021	Silk Road	5.9	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/silk_road_2021
2022	Nude Tuesday	5.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/nude_tuesday_2022
2022	Kimi	6.3	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/kimi_2022
2022	City of Vultures 3	5.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/city_of_vultures_3_2022
2022	Vanished: Searching for My Sister	5.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/vanished:_searching_for_my_sister_2022
1990	The Hunt for Red October	7.6	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/the_hunt_for_red_october_1990
2021	Walking with Herb	5.2	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/walking_with_herb_2021
2014	No Good Deed	5.6	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2014
2022	Shane	7.1	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/shane_2022
2021	Snakehead	5.1	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/snakehead_2021
2022	Moon Manor	5.3	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/moon_manor_2022
2021	The Exorcism of God	5.3	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/the_exorcism_of_god_2021
2021	The King's Man	6.3	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/the_king's_man_2021
2021	WWE: Royal Rumble	6.9	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/wwe:_royal_rumble_2021
2021	Saving Paradise	6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/saving_paradise_2021
2022	Prizefighter: The Life of Jem Belcher	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/prizefighter:_the_life_of_jem_belcher_2022
2022	Fourth of July	7.1	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/fourth_of_july_2022
2021	The Final Code	5.7	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/the_final_code_2021
2021	Vengeance Is Mine	6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/vengeance_is_mine_2021
2021	The Woman in the Window	5.7	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/the_woman_in_the_window_2021
2022	Downton Abbey: A New Era	7.5	Claire Johnson	A good movie to watch with your couple	f18e6af7a735bde07f9fc7e464856620	https://myspace.us/claires_word/movies/claire_johnson/downton_abbey:_a_new_era_2022
2022	The Finellis Movie	7.2	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/the_finellis_movie_2022
2021	Strange Friends	5.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/strange_friends_2021
2022	Love Fashion Repeat	6.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/love_fashion_repeat_2022
2021	The Conservation Game	7	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/the_conservation_game_2021
1995	Congo	5.2	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/congo_1995
1988	The Unbearable Lightness of Being	7.3	Claire Johnson	A good movie to watch with your couple	f18e6af7a735bde07f9fc7e464856620	https://myspace.us/claires_word/movies/claire_johnson/the_unbearable_lightness_of_being_1988
2022	Aloha with Love	5.9	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/aloha_with_love_2022
2021	The Manor	5.3	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/the_manor_2021
2021	The Real Charlie Chaplin	7.3	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_real_charlie_chaplin_2021
2022	Los Tigres Del Norte: Stories to Tell	8.1	Claire Johnson	I didn't understand the dialogues cause i don't speak spanish	6d2eff18c8cc875fa1f794a61010ec11	https://myspace.us/claires_word/movies/claire_johnson/los_tigres_del_norte:_stories_to_tell_2022
2021	Time for Them to Come Home for Christmas	7.2	Claire Johnson	A good movie to watch with your couple	f18e6af7a735bde07f9fc7e464856620	https://myspace.us/claires_word/movies/claire_johnson/time_for_them_to_come_home_for_christmas_2021
2021	Slumber Party Massacre	5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/slumber_party_massacre_2021
2021	Wild Indian	5.8	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/wild_indian_2021
2021	Parallel Mothers	7.1	Claire Johnson	I didn't understand the dialogues cause i don't speak spanish	6d2eff18c8cc875fa1f794a61010ec11	https://myspace.us/claires_word/movies/claire_johnson/parallel_mothers_2021
2021	Past Shadows	6.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/past_shadows_2021
2021	Right in Front of Me	6.6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/right_in_front_of_me_2021
2021	The Survivor	6.7	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/the_survivor_2021
2022	Finding Carlos	4.9	Claire Johnson	Not bad but definitely overrated	62687b7a5beaa7abebbc86d7753b6bce	https://myspace.us/claires_word/movies/claire_johnson/finding_carlos_2022
2021	The Man Putin Couldn't Kill	7.1	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_man_putin_couldn't_kill_2021
2022	Rise	7	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/rise_2022
2021	The Smartest Kids in the World	7.6	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/the_smartest_kids_in_the_world_2021
2022	Two Tickets to Paradise	6.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/two_tickets_to_paradise_2022
2021	Slapface	5.1	Claire Johnson	Awesome movie! It scared the hell out of me	73ebcdc52c9e21bc1ec1e68eafedb702	https://myspace.us/claires_word/movies/claire_johnson/slapface_2021
2022	A Royal Runaway Romance	6.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/a_royal_runaway_romance_2022
2022	Hustle	7.3	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/hustle_2022
2021	Woodstock 99: Peace Love and Rage	7.1	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/woodstock_99:_peace_love_and_rage_2021
2009	My Sister's Keeper	7.3	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/my_sister's_keeper_2009
2021	Poser	6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/poser_2021
2021	Passing	6.6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/passing_2021
2021	Trigger Point	4.9	Claire Johnson	Not bad but definitely overrated	62687b7a5beaa7abebbc86d7753b6bce	https://myspace.us/claires_word/movies/claire_johnson/trigger_point_2021
2021	The Razz Guy	6.3	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_razz_guy_2021
2022	Luck	6.3	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/luck_2022
1993	Malice	6.4	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/malice_1993
2022	Explorer	8.1	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/explorer_2022
2022	Tom Daley: Illegal to Be Me	5.5	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/tom_daley:_illegal_to_be_me_2022
2021	Seven Deadly Sins: Lust	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/seven_deadly_sins:_lust_2021
2022	A Perfect Pairing	6.1	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/a_perfect_pairing_2022
2022	The Wall: Climb for Gold	7.1	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/the_wall:_climb_for_gold_2022
2021	Wolf	5.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/wolf_2021
2021	The Unspeakable	6.7	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/the_unspeakable_2021
2022	Endangered	6.2	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/endangered_2022
2022	Against the Ice	6.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/against_the_ice_2022
2022	Line Sisters	5.4	Claire Johnson	Not really a Scary movie	6861e5608ff62346025f2c10c4194302	https://myspace.us/claires_word/movies/claire_johnson/line_sisters_2022
2021	Without Remorse	5.7	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/without_remorse_2021
2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor	7.4	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/jon_stewart:_the_kennedy_center_mark_twain_prize_for_american_humor_2022
1990	Miami Blues	6.4	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/miami_blues_1990
2021	The Baker's Son	6.2	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_baker's_son_2021
2021	The LCD Soundsystem Holiday Special	6.6	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_lcd_soundsystem_holiday_special_2021
2022	Leave No Trace	6.9	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/leave_no_trace_2022
2022	Halftime	6.5	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/halftime_2022
2022	Our Father	6.6	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/our_father_2022
2021	The Princess Switch 3	5.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_princess_switch_3_2021
2021	Overrun	5.4	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/overrun_2021
1998	Gods and Monsters	7.4	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/gods_and_monsters_1998
2021	Twisted Little Lies	5.3	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/twisted_little_lies_2021
2021	The Judge of Harbor County	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_judge_of_harbor_county_2021
2002	No Good Deed	5.4	Claire Johnson	it is a bit far fetched but a good movie overall	4d995ff0a369970496834539172a8034	https://myspace.us/claires_word/movies/claire_johnson/no_good_deed_2002
2022	Untold: The Girlfriend Who Didn't Exist	7.2	Claire Johnson	A good Documentary	25bac554b05376c12b583bec9100bbca	https://myspace.us/claires_word/movies/claire_johnson/untold:_the_girlfriend_who_didn't_exist_2022
2021	Out of Time	5.5	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/out_of_time_2021
2021	The Space Between	5.4	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_space_between_2021
2022	Doctor Strange in the Multiverse of Madness	7	Claire Johnson	A good choice to spent the Sunday evening	e44cec129161b59938ea7ad2f7df2b74	https://myspace.us/claires_word/movies/claire_johnson/doctor_strange_in_the_multiverse_of_madness_2022
1988	Beetlejuice	7.5	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/beetlejuice_1988
2022	Dual	5.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/dual_2022
2021	The Map of Tiny Perfect Things	6.8	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_map_of_tiny_perfect_things_2021
2021	Rebel Hearts	6.8	Claire Johnson	A good movie even for a Documentary	69762be3a6ea19fe8182399467b395b9	https://myspace.us/claires_word/movies/claire_johnson/rebel_hearts_2021
2009	Angels & Demons	6.7	Claire Johnson	Too long! i got asleep	035255c7e227a7319cb01e6382109136	https://myspace.us/claires_word/movies/claire_johnson/angels_&_demons_2009
2021	The Colony	5.3	Claire Johnson	That's what I call a great choice!	5f22f1ec97a809878d9f599cdd738f80	https://myspace.us/claires_word/movies/claire_johnson/the_colony_2021
2021	Raya and the Last Dragon	7.3	Claire Johnson	Yeahh! This movie is definitely a must see	a454f1cdf9793c46463a92f4739855e8	https://myspace.us/claires_word/movies/claire_johnson/raya_and_the_last_dragon_2021
2021	Swan Song	6.8	Claire Johnson	A good choice to spent the Sunday evening	e44cec129161b59938ea7ad2f7df2b74	https://myspace.us/claires_word/movies/claire_johnson/swan_song_2021
2021	The 27-Hour Day	6.7	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_27-hour_day_2021
2001	The Royal Tenenbaums	7.6	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/the_royal_tenenbaums_2001
2022	Moses Storm: Trash White	7.3	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/moses_storm:_trash_white_2022
2022	The Lost City	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_city_2022
2021	Infinitum: Subject Unknown	5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/infinitum:_subject_unknown_2021
2022	A Second Chance at Love	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/a_second_chance_at_love_2022
2022	The Issue with Elvis	5.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_issue_with_elvis_2022
2022	Seize the Night	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/seize_the_night_2022
2015	Cinderella	6.9	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/cinderella_2015
2022	The Loyola Project	7.7	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/the_loyola_project_2022
2021	You Me & the Christmas Trees	6.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/you_me_&_the_christmas_trees_2021
2022	The Irish Connection	6.2	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_irish_connection_2022
2008	Mamma Mia!	6.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/mamma_mia!_2008
2022	Planning on Forever	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/planning_on_forever_2022
2022	Resurrection	5.9	Clint Brinner	Awesome movie! It scared the hell out of me	54c8bf709f98c82cc721109f6a18008f	https://cars_n_movies.com/movie_reviews/clint_brinner/resurrection_2022
2021	Strip Down Rise Up	5.2	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/strip_down_rise_up_2021
2021	The Good Boss	7.2	Clint Brinner	I didn't understand the dialogues cause i don't speak spanish	728f583f5029680f2018ca231a357fec	https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_boss_2021
2022	Frank and Penelope	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/frank_and_penelope_2022
2021	Pick A Side	5.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/pick_a_side_2021
2021	You Had Me at Aloha	6.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/you_had_me_at_aloha_2021
2021	Things Don't Stay Fixed	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/things_don't_stay_fixed_2021
2022	Fire Island	6.7	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/fire_island_2022
2021	Taking a Shot at Love	7.1	Clint Brinner	A good movie to watch with your couple	1b8cf3493264f24ce1ca9596b2deeda0	https://cars_n_movies.com/movie_reviews/clint_brinner/taking_a_shot_at_love_2021
2021	The Score	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/the_score_2021
2021	This Little Love of Mine	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/this_little_love_of_mine_2021
2022	The Only	6.6	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/the_only_2022
2021	Wired Shut	5.8	Clint Brinner	Awesome movie! It scared the hell out of me	54c8bf709f98c82cc721109f6a18008f	https://cars_n_movies.com/movie_reviews/clint_brinner/wired_shut_2021
2022	Purple Hearts	6.7	Clint Brinner	Too long! i got asleep	a53b25e51721b113cc146034b57e02e2	https://cars_n_movies.com/movie_reviews/clint_brinner/purple_hearts_2022
2022	GoldenEra	6.9	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/goldenera_2022
2021	Tollbooth	5.6	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/tollbooth_2021
2021	Pig	6.9	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/pig_2021
2021	Palmer	7.2	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/palmer_2021
2021	Shang-Chi and the Legend of the Ten Rings	7.4	Clint Brinner	A good choice to spent the Sunday evening	321237400ca9174ca0504a13619cc57d	https://cars_n_movies.com/movie_reviews/clint_brinner/shang-chi_and_the_legend_of_the_ten_rings_2021
2022	Funny Pages	6.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/funny_pages_2022
2021	Torn from Her Arms	6.2	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/torn_from_her_arms_2021
2022	All the Old Knives	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/all_the_old_knives_2022
2021	Shock Docs Amityville Horror House	6.4	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/shock_docs_amityville_horror_house_2021
2022	Donkeyhead	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/donkeyhead_2022
1988	Working Girl	6.8	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/working_girl_1988
2022	Father of the Bride	5.9	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/father_of_the_bride_2022
1992	Glengarry Glen Ross	7.7	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/glengarry_glen_ross_1992
2022	Terry Bradshaw: Going Deep	6.3	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/terry_bradshaw:_going_deep_2022
2021	Untold: Crimes and Penalties	7.4	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_crimes_and_penalties_2021
2022	A Splash of Love	6	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/a_splash_of_love_2022
2022	Clowning	5.3	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/clowning_2022
2021	The Santa Stakeout	6.4	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/the_santa_stakeout_2021
2022	Groundswell	6.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/groundswell_2022
2021	Scarborough	7.1	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/scarborough_2021
2021	The Justice of Bunny King	6.6	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_justice_of_bunny_king_2021
2021	Veneciafrenia	5.1	Clint Brinner	I didn't understand the dialogues cause i don't speak spanish	728f583f5029680f2018ca231a357fec	https://cars_n_movies.com/movie_reviews/clint_brinner/veneciafrenia_2021
2022	Hello Bookstore	8	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/hello_bookstore_2022
2022	Love You Anyway	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/love_you_anyway_2022
2022	Curse of the Macbeths	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/curse_of_the_macbeths_2022
2021	See You Next Christmas	5.2	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/see_you_next_christmas_2021
2013	Blue Jasmine	7.3	Clint Brinner	A good movie to watch with your couple	1b8cf3493264f24ce1ca9596b2deeda0	https://cars_n_movies.com/movie_reviews/clint_brinner/blue_jasmine_2013
2021	Reopening Night	6.1	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/reopening_night_2021
2021	Spirit Untamed	5.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/spirit_untamed_2021
2021	River	7.2	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/river_2021
2022	Elizabeth: The Unseen Queen	7.3	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/elizabeth:_the_unseen_queen_2022
2022	The Hyperions	5.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hyperions_2022
2021	Toying with the Holidays	6.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/toying_with_the_holidays_2021
2022	Love & Gelato	5.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/love_&_gelato_2022
2021	Road to Perth	5.2	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/road_to_perth_2021
2022	Home2Home	7.4	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/home2home_2022
2021	Procession	7.2	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/procession_2021
2021	South Beach Love	6	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/south_beach_love_2021
2012	The Hobbit: An Unexpected Journey	7.8	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hobbit:_an_unexpected_journey_2012
2022	County Line: All In	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/county_line:_all_in_2022
2022	Shattered	5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/shattered_2022
2021	The Slow Hustle	6.5	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/the_slow_hustle_2021
2022	Just One Kiss	6.8	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/just_one_kiss_2022
2022	The Sixth Secret	5.6	Clint Brinner	Not really a Scary movie	36a5cef2e698ae586a0a7ff9491e4746	https://cars_n_movies.com/movie_reviews/clint_brinner/the_sixth_secret_2022
2018	A Star Is Born	7.6	Clint Brinner	A good movie to watch with your couple	1b8cf3493264f24ce1ca9596b2deeda0	https://cars_n_movies.com/movie_reviews/clint_brinner/a_star_is_born_2018
2021	To Catch a Spy	6.2	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/to_catch_a_spy_2021
2021	Red Snow	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/red_snow_2021
2021	Red Rocket	7.2	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/red_rocket_2021
2021	Wrong Turn	5.5	Clint Brinner	Awesome movie! It scared the hell out of me	54c8bf709f98c82cc721109f6a18008f	https://cars_n_movies.com/movie_reviews/clint_brinner/wrong_turn_2021
2022	Z-O-M-B-I-E-S 3	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/z-o-m-b-i-e-s_3_2022
2021	Robbo: The Bryan Robson Story	7.5	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/robbo:_the_bryan_robson_story_2021
2022	11M: Terror in Madrid	6.9	Clint Brinner	I didn't understand the dialogues cause i don't speak spanish	728f583f5029680f2018ca231a357fec	https://cars_n_movies.com/movie_reviews/clint_brinner/11m:_terror_in_madrid_2022
2022	Bill Burr: Live at Red Rocks	7.7	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/bill_burr:_live_at_red_rocks_2022
2016	Our Kind of Traitor	6.2	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/our_kind_of_traitor_2016
2021	Phil Wang: Philly Philly Wang Wang	6	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/phil_wang:_philly_philly_wang_wang_2021
2021	The Lost Daughter	6.7	Clint Brinner	Too long! i got asleep	a53b25e51721b113cc146034b57e02e2	https://cars_n_movies.com/movie_reviews/clint_brinner/the_lost_daughter_2021
2022	Lotawana	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/lotawana_2022
2006	The Good Shepherd	6.7	Clint Brinner	Too long! i got asleep	a53b25e51721b113cc146034b57e02e2	https://cars_n_movies.com/movie_reviews/clint_brinner/the_good_shepherd_2006
2022	Road Trip Romance	4.9	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/road_trip_romance_2022
2005	Elizabethtown	6.3	Clint Brinner	Too long! i got asleep	a53b25e51721b113cc146034b57e02e2	https://cars_n_movies.com/movie_reviews/clint_brinner/elizabethtown_2005
2022	Apollo 10½: A Space Age Childhood	7.3	Clint Brinner	A good choice to spent the Sunday evening	321237400ca9174ca0504a13619cc57d	https://cars_n_movies.com/movie_reviews/clint_brinner/apollo_10½:_a_space_age_childhood_2022
2021	To Which We Belong	7	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/to_which_we_belong_2021
2022	I Do (But I Don't)	5.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/i_do_(but_i_don't)_2022
2021	The Ghost and the Tout Too	6.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_ghost_and_the_tout_too_2021
2021	Queenpins	6.3	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/queenpins_2021
2021	Sold Out	5.7	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/sold_out_2021
2021	The Bezonians	6.1	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/the_bezonians_2021
2022	Chip 'n Dale: Rescue Rangers	7	Clint Brinner	Yeahh! This movie is definitely a must see	714e6f2486a4abca2966e073e0960fc9	https://cars_n_movies.com/movie_reviews/clint_brinner/chip_'n_dale:_rescue_rangers_2022
2019	Drunk Parents	4	Clint Brinner	Not bad but definitely overrated	fa88a88b60b08cc6f3e437fbf0a3d4ce	https://cars_n_movies.com/movie_reviews/clint_brinner/drunk_parents_2019
2021	The Middle Man	5.9	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_middle_man_2021
1993	Loaded Weapon 1	6.2	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/loaded_weapon_1_1993
2022	Catwoman: Hunted	5.5	Clint Brinner	it is a bit far fetched but a good movie overall	224a3bf5c84b6b64dfff026780f08710	https://cars_n_movies.com/movie_reviews/clint_brinner/catwoman:_hunted_2022
2021	Royal Blossom	5.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/royal_blossom_2021
2022	Taylor Tomlinson: Look at You	7.3	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/taylor_tomlinson:_look_at_you_2022
2000	Timecode	6.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/timecode_2000
2021	West Side Story	7.2	Clint Brinner	A good movie to watch with your couple	1b8cf3493264f24ce1ca9596b2deeda0	https://cars_n_movies.com/movie_reviews/clint_brinner/west_side_story_2021
2015	Mr. Holmes	6.8	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/mr._holmes_2015
2022	Gold	5.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/gold_2022
2022	The Sound of Scars	7.7	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/the_sound_of_scars_2022
2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/teen_titans_go!_&_dc_super_hero_girls:_mayhem_in_the_multiverse_2022
2021	Sweet Girl	5.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/sweet_girl_2021
2021	Wedding Cake Dreams	6	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/wedding_cake_dreams_2021
2021	The Cabin	5.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_cabin_2021
2022	Holy Heist	6.1	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/holy_heist_2022
2022	Anything's Possible	5.1	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/anything's_possible_2022
2022	No Woman No Try	6.1	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/no_woman_no_try_2022
2022	The Hall: Honoring the Greats of Stand-Up	6.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/the_hall:_honoring_the_greats_of_stand-up_2022
2021	Sonsational	5.8	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/sonsational_2021
2022	Christmas in Toyland	6.5	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/christmas_in_toyland_2022
2021	Untold: Caitlyn Jenner	6.4	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/untold:_caitlyn_jenner_2021
2022	Cristela Alonzo: Middle Classy	6.7	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/cristela_alonzo:_middle_classy_2022
2021	The Addams Family 2	5.4	Clint Brinner	Not really a Scary movie	36a5cef2e698ae586a0a7ff9491e4746	https://cars_n_movies.com/movie_reviews/clint_brinner/the_addams_family_2_2021
2021	Saints & Sinners Judgment Day	6.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/saints_&_sinners_judgment_day_2021
2022	Deep in the Heart: A Texas Wildlife Story	7.6	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/deep_in_the_heart:_a_texas_wildlife_story_2022
2021	Silent Night	5.7	Clint Brinner	Not really a Scary movie	36a5cef2e698ae586a0a7ff9491e4746	https://cars_n_movies.com/movie_reviews/clint_brinner/silent_night_2021
2021	Trust	5.3	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/trust_2021
2021	The Laws of the Border	6.9	Clint Brinner	I didn't understand the dialogues cause i don't speak spanish	728f583f5029680f2018ca231a357fec	https://cars_n_movies.com/movie_reviews/clint_brinner/the_laws_of_the_border_2021
2021	The Story of Film: A New Generation	7.3	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/the_story_of_film:_a_new_generation_2021
1999	Notting Hill	7.2	Clint Brinner	A good movie to watch with your couple	1b8cf3493264f24ce1ca9596b2deeda0	https://cars_n_movies.com/movie_reviews/clint_brinner/notting_hill_1999
2022	The 49th Annual Daytime Emmy Awards	8.2	Clint Brinner	A good choice to spent the Saturday evening	caafa7322c06029b6b8b99fe8df1e194	https://cars_n_movies.com/movie_reviews/clint_brinner/the_49th_annual_daytime_emmy_awards_2022
2021	The Way of Miracles	7.3	Clint Brinner	A good Documentary	7931347a2ab0bb9d75c311d76f342493	https://cars_n_movies.com/movie_reviews/clint_brinner/the_way_of_miracles_2021
2021	One of Ours	5.8	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/one_of_ours_2021
2022	As They Made Us	5.7	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/as_they_made_us_2022
2021	The Girl Who Got Away	5.4	Clint Brinner	Awesome movie! It scared the hell out of me	54c8bf709f98c82cc721109f6a18008f	https://cars_n_movies.com/movie_reviews/clint_brinner/the_girl_who_got_away_2021
2021	Our Towns	6.4	Clint Brinner	A good movie even for a Documentary	9eb482c6a449fc1a869fa71b07631ba8	https://cars_n_movies.com/movie_reviews/clint_brinner/our_towns_2021
2022	Swap Me Baby	5.4	Clint Brinner	That's what I call a great choice!	71392b4f303f8190e0e5ecd161128646	https://cars_n_movies.com/movie_reviews/clint_brinner/swap_me_baby_2022
2021	Superhost	5.5	Clint Brinner	Awesome movie! It scared the hell out of me	54c8bf709f98c82cc721109f6a18008f	https://cars_n_movies.com/movie_reviews/clint_brinner/superhost_2021
2021	Operation Varsity Blues	6.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/operation_varsity_blues_2021
1997	Insomnia	7.2	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/insomnia_1997
2022	Honor Society	6.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/honor_society_2022
2021	Seaspiracy	8.1	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/seaspiracy_2021
2021	The Land of Owls	5.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_land_of_owls_2021
2021	The Beta Test	6.1	Jim Mc-Cauling	Not really a Scary movie	41f1e88898355c77bc4300de4b290776	https://blockbusted.org/jim/jim_mc-cauling/the_beta_test_2021
2022	Shut In	5.9	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/shut_in_2022
2021	The United Way	7.2	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_united_way_2021
2022	Dying for Chocolate: A Curious Caterer Mystery	6.6	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/dying_for_chocolate:_a_curious_caterer_mystery_2022
2021	Stillwater	6.6	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/stillwater_2021
2021	When Today Ends	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/when_today_ends_2021
2021	The First Wave	6.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_first_wave_2021
2022	Tyler Perry's A Madea Homecoming	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/tyler_perry's_a_madea_homecoming_2022
2021	The Ice Road	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_ice_road_2021
2022	Tankhouse	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/tankhouse_2022
2022	Chickenhare and the Hamster of Darkness	6.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/chickenhare_and_the_hamster_of_darkness_2022
2022	Dinosaurs - The Final Day with David Attenborough	7.4	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/dinosaurs_-_the_final_day_with_david_attenborough_2022
2022	The Highwayman	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_highwayman_2022
1993	The Three Musketeers	6.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_three_musketeers_1993
2001	Cats & Dogs	5.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/cats_&_dogs_2001
2014	In Order of Disappearance	7.1	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/in_order_of_disappearance_2014
2021	Our Christmas Journey	6.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/our_christmas_journey_2021
2000	Thomas and the Magic Railroad	4.1	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/thomas_and_the_magic_railroad_2000
1992	Home Alone 2: Lost in New York	6.8	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/home_alone_2:_lost_in_new_york_1992
1983	The Ploughman's Lunch	6.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_ploughman's_lunch_1983
2021	The Christmas Promise	6.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_christmas_promise_2021
2002	The Adventures of Pluto Nash	3.8	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/the_adventures_of_pluto_nash_2002
2016	The Promise	6	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/the_promise_2016
2011	The Girl with the Dragon Tattoo	7.8	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/the_girl_with_the_dragon_tattoo_2011
2011	Hick	5.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/hick_2011
2013	The Hobbit: The Desolation of Smaug	7.8	Jim Mc-Cauling	Yeahh! This movie is definitely a must see	152ff68ff4ee59b2ac57e093c93e1cbf	https://blockbusted.org/jim/jim_mc-cauling/the_hobbit:_the_desolation_of_smaug_2013
2020	Beast Beast	6.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/beast_beast_2020
2000	State and Main	6.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/state_and_main_2000
2006	X-Men: The Last Stand	6.6	Jim Mc-Cauling	A good choice to spent the Sunday evening	7c609021f8b1aa5fae9543863a6143b5	https://blockbusted.org/jim/jim_mc-cauling/x-men:_the_last_stand_2006
2021	The Toolbox Killer	6.3	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_toolbox_killer_2021
2022	Not Okay	6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/not_okay_2022
2021	Resident Evil: Welcome to Raccoon City	5.2	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/resident_evil:_welcome_to_raccoon_city_2021
2022	Ray Donovan: The Movie	6.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/ray_donovan:_the_movie_2022
2022	Romance to the Rescue	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/romance_to_the_rescue_2022
2021	Shoplifters of the World	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/shoplifters_of_the_world_2021
2022	A Violent Man	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/a_violent_man_2022
2006	The Da Vinci Code	6.6	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/the_da_vinci_code_2006
2022	Diamond Hands: The Legend of WallStreetBets	5.5	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/diamond_hands:_the_legend_of_wallstreetbets_2022
2022	Jurassic World Dominion	5.7	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/jurassic_world_dominion_2022
2022	Tosh	7.7	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/tosh_2022
2022	Harry Potter 20th Anniversary: Return to Hogwarts	8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/harry_potter_20th_anniversary:_return_to_hogwarts_2022
2006	Mini's First Time	5.8	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/mini's_first_time_2006
2021	The House of Snails	4.9	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/the_house_of_snails_2021
2022	Emergency	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/emergency_2022
2022	Inside the Mind of a Cat	7	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/inside_the_mind_of_a_cat_2022
2021	The Wonderful: Stories from the Space Station	6.2	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/the_wonderful:_stories_from_the_space_station_2021
2021	Spring	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/spring_2021
2021	You Keep the Kids	6	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/you_keep_the_kids_2021
2022	Orphan: First Kill	6	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/orphan:_first_kill_2022
2022	Girl in the Picture	7.2	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/girl_in_the_picture_2022
2022	Jeff Foxworthy: The Good Old Days	6.1	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/jeff_foxworthy:_the_good_old_days_2022
2021	iGilbert	5.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/igilbert_2021
2021	The Jump	8.4	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/the_jump_2021
2021	Spin	6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/spin_2021
2022	American Experience Plague at the Golden Gate	7.5	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/american_experience_plague_at_the_golden_gate_2022
2021	Salt-N-Pepa	6	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/salt-n-pepa_2021
2021	tick tick... BOOM!	7.5	Jim Mc-Cauling	Yeahh! This movie is definitely a must see	152ff68ff4ee59b2ac57e093c93e1cbf	https://blockbusted.org/jim/jim_mc-cauling/tick_tick..._boom!_2021
2021	Why Did You Kill Me?	5.6	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/why_did_you_kill_me?_2021
2021	Raunch and Roll	6.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/raunch_and_roll_2021
2022	Jackass Forever	6.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/jackass_forever_2022
2022	Paul Virzi: Nocturnal Admissions	7	Jim Mc-Cauling	Yeahh! This movie is definitely a must see	152ff68ff4ee59b2ac57e093c93e1cbf	https://blockbusted.org/jim/jim_mc-cauling/paul_virzi:_nocturnal_admissions_2022
2021	The Loud House Movie	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_loud_house_movie_2021
2022	Rooney	6.8	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/rooney_2022
2022	A Genie's Tail	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/a_genie's_tail_2022
2021	The Conjuring: The Devil Made Me Do It	6.3	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_conjuring:_the_devil_made_me_do_it_2021
2021	Reefa	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/reefa_2021
2022	Hello Goodbye and Everything in Between	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/hello_goodbye_and_everything_in_between_2022
2021	Rise and Shine Benedict Stone	6.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/rise_and_shine_benedict_stone_2021
2021	Spider-Man: No Way Home	8.3	Jim Mc-Cauling	A good choice to spent the Sunday evening	7c609021f8b1aa5fae9543863a6143b5	https://blockbusted.org/jim/jim_mc-cauling/spider-man:_no_way_home_2021
2021	The River Runner	6.9	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/the_river_runner_2021
2021	The Cursed	6.2	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_cursed_2021
2022	Hunting Souls	5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/hunting_souls_2022
2022	The Photographer: Murder in Pinamar	6.7	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/the_photographer:_murder_in_pinamar_2022
2022	Centaur	5.3	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/centaur_2022
2021	Tinsel - The Lost Movie About Hollywood	7.4	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/tinsel_-_the_lost_movie_about_hollywood_2021
2022	The Twin	5.2	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_twin_2022
2022	North of the 10	6.1	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/north_of_the_10_2022
1992	Prelude to a Kiss	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/prelude_to_a_kiss_1992
2022	Due Season	5.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/due_season_2022
2022	Toy Aficiao	6.2	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/toy_aficiao_2022
2021	Tina	7.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/tina_2021
2021	Samantha Rose	6.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/samantha_rose_2021
2021	The Christmas Pitch	5.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_christmas_pitch_2021
2021	Rattle-Can	5.6	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/rattle-can_2021
2021	Small City	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/small_city_2021
2021	The Lost Leonardo	7.5	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/the_lost_leonardo_2021
2021	Rise of the Footsoldier: Origins	5.8	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/rise_of_the_footsoldier:_origins_2021
2022	Everything Everywhere All at Once	8.2	Jim Mc-Cauling	A good choice to spent the Sunday evening	7c609021f8b1aa5fae9543863a6143b5	https://blockbusted.org/jim/jim_mc-cauling/everything_everywhere_all_at_once_2022
2021	Xtreme	5.8	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/xtreme_2021
2021	The Healing Garden	5.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_healing_garden_2021
2021	This Is Not a Comedy	4.9	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/this_is_not_a_comedy_2021
2021	Two for the Win	6.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/two_for_the_win_2021
2022	Icahn: The Restless Billionaire	7	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/icahn:_the_restless_billionaire_2022
2021	Romeo Santos: King of Bachata	7.3	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/romeo_santos:_king_of_bachata_2021
2022	Cave Rescue	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/cave_rescue_2022
2021	The Girl Who Believes in Miracles	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_girl_who_believes_in_miracles_2021
2022	Pride Jewel	6.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/pride_jewel_2022
2022	Aftershock	5.8	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/aftershock_2022
2021	The Marksman	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_marksman_2021
2021	Set!	7.3	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/set!_2021
2021	Stars Fell on Alabama	5.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/stars_fell_on_alabama_2021
2018	BlacKkKlansman	7.5	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/blackkklansman_2018
2021	Wyrmwood: Apocalypse	5.4	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/wyrmwood:_apocalypse_2021
2021	The Price of Freedom	5.2	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_price_of_freedom_2021
2021	Shatner in Space	6.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/shatner_in_space_2021
2021	The Legend of Molly Johnson	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_legend_of_molly_johnson_2021
2021	Two Cents from a Pariah	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/two_cents_from_a_pariah_2021
2022	Bill Maher: #Adulting	6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/bill_maher:_#adulting_2022
2021	Things Heard & Seen	5.3	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/things_heard_&_seen_2021
1996	The Juror	5.7	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/the_juror_1996
2022	Burn	5.1	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/burn_2022
2022	Moriah's Lighthouse	6.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/moriah's_lighthouse_2022
2022	Stroke of Luck	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/stroke_of_luck_2022
2022	Ambulance	6.1	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/ambulance_2022
2022	The Good Neighbor	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_good_neighbor_2022
2021	The Man Who Fell from the Sky	5.4	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_man_who_fell_from_the_sky_2021
2021	Searching for Cannibal Holocaust	5.6	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/searching_for_cannibal_holocaust_2021
2021	The Ultimate Playlist of Noise	6.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_ultimate_playlist_of_noise_2021
2022	Junkyard Dogs	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/junkyard_dogs_2022
2022	The Mulligan	6.2	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/the_mulligan_2022
2022	I Want You Back	6.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/i_want_you_back_2022
2021	Venom: Let There Be Carnage	5.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/venom:_let_there_be_carnage_2021
2021	The Hating Game	6.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_hating_game_2021
2022	Catherine Cohen: The Twist...? She's Gorgeous	5	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/catherine_cohen:_the_twist...?_she's_gorgeous_2022
2021	Truth to Power	6.8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/truth_to_power_2021
2021	The Demented	5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_demented_2021
2021	The Power	5.5	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_power_2021
2021	You Are Not My Mother	5.8	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/you_are_not_my_mother_2021
2021	The Rescue	8.3	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_rescue_2021
2022	Running with the Devil: The Wild World of John McAfee	6	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/running_with_the_devil:_the_wild_world_of_john_mcafee_2022
2003	The Cooler	6.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_cooler_2003
2021	The Right One	5.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_right_one_2021
2021	The Automat	7.6	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_automat_2021
2021	Volcanic UFO Mysteries	6.1	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/volcanic_ufo_mysteries_2021
2022	Sex Appeal	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/sex_appeal_2022
2021	Yes Day	5.7	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/yes_day_2021
2021	The Last Mountain	7.2	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_last_mountain_2021
2021	The Forever Purge	5.4	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_forever_purge_2021
2022	American Carnage	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/american_carnage_2022
2022	Redeeming Love	6.6	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/redeeming_love_2022
2021	See You Then	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/see_you_then_2021
2021	The Nine Kittens of Christmas	6.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_nine_kittens_of_christmas_2021
2022	The Bad Guys	6.8	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/the_bad_guys_2022
2022	Proyecto Emperador	5.8	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/proyecto_emperador_2022
2021	The Virtuoso	4.9	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/the_virtuoso_2021
2021	The Race to Save the World	5.2	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_race_to_save_the_world_2021
2022	Putting Love to the Test	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/putting_love_to_the_test_2022
2021	The Novice	6.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_novice_2021
2022	Resisting Roots	5.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/resisting_roots_2022
2022	Heart of the Matter	6.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/heart_of_the_matter_2022
2021	Show Me the Father	6.6	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/show_me_the_father_2021
2022	Rogue Agent	6.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/rogue_agent_2022
2021	The Vault	6.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_vault_2021
2022	Mother's Love	5.8	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/mother's_love_2022
2021	The Wisdom of Trauma	8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_wisdom_of_trauma_2021
2022	No Name and Dynamite Davenport	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/no_name_and_dynamite_davenport_2022
2022	The In Between	5.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_in_between_2022
2022	Step Into... The Movies	7.5	Jim Mc-Cauling	Yeahh! This movie is definitely a must see	152ff68ff4ee59b2ac57e093c93e1cbf	https://blockbusted.org/jim/jim_mc-cauling/step_into..._the_movies_2022
1984	Dune	6.3	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/dune_1984
2021	Riverdance: The Animated Adventure	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/riverdance:_the_animated_adventure_2021
2021	Wicked	5.3	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/wicked_2021
2021	Ted K	6	Jim Mc-Cauling	it is a bit far fetched but a good movie overall	032487083f98051a1633402f1b291df2	https://blockbusted.org/jim/jim_mc-cauling/ted_k_2021
2021	The Kids	7.2	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/the_kids_2021
2022	Facing Nolan	8	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/facing_nolan_2022
2022	Jane Fonda & Lily Tomlin: Ladies Night Live	5.5	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/jane_fonda_&_lily_tomlin:_ladies_night_live_2022
2022	Elizabeth: A Portrait in Part(s)	5.7	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/elizabeth:_a_portrait_in_part(s)_2022
1997	The Edge	6.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_edge_1997
2021	Storm Lake	7	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/storm_lake_2021
2022	The Sky Is Everywhere	5.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_sky_is_everywhere_2022
2021	Pirates	5.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/pirates_2021
2022	The King's Daughter	5.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/the_king's_daughter_2022
2022	Mr. Malcolm's List	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/mr._malcolm's_list_2022
2022	Never Alone	6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/never_alone_2022
2019	Arctic Dogs	4.7	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/arctic_dogs_2019
2022	Vengeance	6.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/vengeance_2022
2022	That's Amor	5.2	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/that's_amor_2022
2021	Subjects of Desire	7.8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/subjects_of_desire_2021
2022	It Snows All the Time	5.8	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/it_snows_all_the_time_2022
2021	The Unholy	5.1	Jim Mc-Cauling	Awesome movie! It scared the hell out of me	648c4d78bc1f6c6336d2ac0bb03dee3d	https://blockbusted.org/jim/jim_mc-cauling/the_unholy_2021
2021	The Tomorrow War	6.5	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/the_tomorrow_war_2021
2021	Wash My Soul in the River's Flow	8.7	Jim Mc-Cauling	A good Documentary	1a5a5a9b321797e8b7ecf70139f6c20b	https://blockbusted.org/jim/jim_mc-cauling/wash_my_soul_in_the_river's_flow_2021
2022	Gamestop: Rise of the Players	5.8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/gamestop:_rise_of_the_players_2022
2022	Fireheart	6.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/fireheart_2022
2022	King Tweety	5.4	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/king_tweety_2022
2022	Polar Bear	6.9	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/polar_bear_2022
2022	Moonshot	5.5	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/moonshot_2022
2021	The Cleveland Kidnappings	6.8	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/the_cleveland_kidnappings_2021
2022	Harmony in Paradise	6.6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/harmony_in_paradise_2022
2021	Scenes from an Empty Church	6	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/scenes_from_an_empty_church_2021
2021	Seduction & Snacks	5.9	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/seduction_&_snacks_2021
2021	The Tragedy of Macbeth	7.1	Jim Mc-Cauling	Yeahh! This movie is definitely a must see	152ff68ff4ee59b2ac57e093c93e1cbf	https://blockbusted.org/jim/jim_mc-cauling/the_tragedy_of_macbeth_2021
1998	The Avengers	3.8	Jim Mc-Cauling	Not bad but definitely overrated	f25a7a1c86e9a57b8f8e8d6cfc9b6382	https://blockbusted.org/jim/jim_mc-cauling/the_avengers_1998
2022	Alone Together	5.1	Jim Mc-Cauling	That's what I call a great choice!	04a7095d541df08a2b9760295f450a5f	https://blockbusted.org/jim/jim_mc-cauling/alone_together_2022
2022	Jackass 4.5	6.5	Jim Mc-Cauling	A good movie even for a Documentary	6c8b398f9c83cd35a7fa9421d9d1b8a7	https://blockbusted.org/jim/jim_mc-cauling/jackass_4.5_2022
2021	Romeo & Juliet	7.4	Jim Mc-Cauling	A good movie to watch with your couple	4761a9a10493185bce7d995f7b997658	https://blockbusted.org/jim/jim_mc-cauling/romeo_&_juliet_2021
2022	El Rezador	5.3	Jim Mc-Cauling	I didn't understand the dialogues cause i don't speak spanish	fe6caca7db3a906d89552233d5f3cdc0	https://blockbusted.org/jim/jim_mc-cauling/el_rezador_2022
2022	Sonic the Hedgehog 2	6.5	Jim Mc-Cauling	Too long! i got asleep	b9ba77714614e82ced0dda755118e3b0	https://blockbusted.org/jim/jim_mc-cauling/sonic_the_hedgehog_2_2022
2022	Randy Rhoads: Reflections of a Guitar Icon	8	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/randy_rhoads:_reflections_of_a_guitar_icon_2022
2022	The Wrath of God	5.7	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/the_wrath_of_god_2022
2021	Sister Swap: A Hometown Holiday	6.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/sister_swap:_a_hometown_holiday_2021
2021	The Secret of Sinchanee	5.2	Melissa Stillton	Awesome movie! It scared the hell out of me	5d8051455487f97c895e7bd4978c2b8b	https://palomitas.es/reviews/melissa_stillton/the_secret_of_sinchanee_2021
2021	Twice Bitten	5.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/twice_bitten_2021
2022	Welcome to Mama's	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/welcome_to_mama's_2022
2022	Her Private Hell	4.9	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/her_private_hell_2022
2022	River Road	6.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/river_road_2022
2022	Ricardo Quevedo: Tomorrow Will Be Worse	5.2	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/ricardo_quevedo:_tomorrow_will_be_worse_2022
2022	South Park: The 25th Anniversary Concert	7.9	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/south_park:_the_25th_anniversary_concert_2022
2001	Scary Movie 2	5.3	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/scary_movie_2_2001
2021	This Is Not a War Story	6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/this_is_not_a_war_story_2021
2022	Bear Witness	6.9	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/bear_witness_2022
2022	Jerry and Marge Go Large	6.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/jerry_and_marge_go_large_2022
2021	Warming up to you	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/warming_up_to_you_2021
2021	Searchers	5.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/searchers_2021
2021	Willy's Wonderland	5.5	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/willy's_wonderland_2021
2022	Good Luck to You Leo Grande	7.2	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/good_luck_to_you_leo_grande_2022
2021	Reno 911!: The Hunt for QAnon	5.6	Melissa Stillton	it is a bit far fetched but a good movie overall	56f38bb9f7978dda26c9ec310650e7d2	https://palomitas.es/reviews/melissa_stillton/reno_911!:_the_hunt_for_qanon_2021
2022	What Is a Woman?	8.6	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/what_is_a_woman?_2022
2022	Super Turnt	5.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/super_turnt_2022
2021	The Most Beautiful Boy in the World	6.8	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/the_most_beautiful_boy_in_the_world_2021
2022	Turning Red	7	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/turning_red_2022
2022	My Grown-Up Christmas List	6.5	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/my_grown-up_christmas_list_2022
2021	The Wheel	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_wheel_2021
2021	The Beatles and India	6.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_beatles_and_india_2021
2021	The Wimbledon Kidnapping	5.9	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_wimbledon_kidnapping_2021
2022	Tom and Jerry: Cowboy Up!	5.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/tom_and_jerry:_cowboy_up!_2022
2022	The 28th Annual Screen Actors Guild Awards	6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_28th_annual_screen_actors_guild_awards_2022
2022	Virus-32	5.4	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/virus-32_2022
1991	The Marrying Man	5.7	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_marrying_man_1991
2021	The Boss Baby: Family Business	5.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_boss_baby:_family_business_2021
2022	Rescued by Ruby	7.1	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/rescued_by_ruby_2022
2021	Together	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/together_2021
2021	Sundown	6.5	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/sundown_2021
2022	Elvis	7.6	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/elvis_2022
2021	The Card Counter	6.2	Melissa Stillton	it is a bit far fetched but a good movie overall	56f38bb9f7978dda26c9ec310650e7d2	https://palomitas.es/reviews/melissa_stillton/the_card_counter_2021
2021	The House of Flowers: The Movie	5.5	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/the_house_of_flowers:_the_movie_2021
2022	Burden	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/burden_2022
2022	Beyond Impossible	5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/beyond_impossible_2022
2021	The Enormity of Life	6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_enormity_of_life_2021
2022	Love Under the Lemon Tree	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/love_under_the_lemon_tree_2022
2022	Navalny	7.4	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/navalny_2022
2022	Lie Hard	5.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/lie_hard_2022
2021	Stop and Go	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/stop_and_go_2021
2003	The Cat in the Hat	4	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/the_cat_in_the_hat_2003
1980	Times Square	6.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/times_square_1980
2021	To All the Boys: Always and Forever	6.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/to_all_the_boys:_always_and_forever_2021
2021	Sugar Plum Twist	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/sugar_plum_twist_2021
2021	South of Heaven	5.7	Melissa Stillton	Awesome movie! It scared the hell out of me	5d8051455487f97c895e7bd4978c2b8b	https://palomitas.es/reviews/melissa_stillton/south_of_heaven_2021
2021	The Loneliest Whale: The Search for 52	6.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_loneliest_whale:_the_search_for_52_2021
2022	Bank Robbers: The Last Great Heist	7.1	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/bank_robbers:_the_last_great_heist_2022
2021	The Replacement	6.3	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/the_replacement_2021
1987	Jim & Piraterna Blom	6.1	Melissa Stillton	I didn't understand the dialogues cause i don't speak swedish	6e21625eccc0384119d9fbf4316cd352	https://palomitas.es/reviews/melissa_stillton/jim_&_piraterna_blom_1987
2021	Zoey's Extraordinary Christmas	7.3	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/zoey's_extraordinary_christmas_2021
2021	Untold: Malice at the Palace	7.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/untold:_malice_at_the_palace_2021
2021	Snake Eyes	5.3	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/snake_eyes_2021
2021	The Seance	5	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_seance_2021
2022	A Cowgirl's Song	5.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/a_cowgirl's_song_2022
2021	Walk With Me	5.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/walk_with_me_2021
1985	Legend	6.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/legend_1985
2022	Day Shift	6.1	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/day_shift_2022
2021	Vivo	6.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/vivo_2021
2022	Adeline	7	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/adeline_2022
2022	Stay on Board: The Leo Baker Story	6.2	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/stay_on_board:_the_leo_baker_story_2022
2021	Oslo	6.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/oslo_2021
2022	Fresh	6.7	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/fresh_2022
2021	Shepherd	4.9	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/shepherd_2021
2022	The Ledge	5.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_ledge_2022
2021	Secrets in the Wilderness	5.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/secrets_in_the_wilderness_2021
2021	Persona: The Dark Truth Behind Personality Tests	5.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/persona:_the_dark_truth_behind_personality_tests_2021
2022	Wuthering Heights	5.3	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/wuthering_heights_2022
2021	Playing Cupid	6.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/playing_cupid_2021
2022	Biffy Clyro: Cultural Sons of Scotland	7.7	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/biffy_clyro:_cultural_sons_of_scotland_2022
1999	Deep Blue Sea	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/deep_blue_sea_1999
2021	Pati Patni and Joe	6.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/pati_patni_and_joe_2021
2021	Sweetheart	6.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/sweetheart_2021
2022	Last Seen Alive	5.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/last_seen_alive_2022
2021	Where the Land Meets the Sky	4.9	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/where_the_land_meets_the_sky_2021
2022	Rise of the Teenage Mutant Ninja Turtles: The Movie	5.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/rise_of_the_teenage_mutant_ninja_turtles:_the_movie_2022
2022	Top Gun: Maverick	8.5	Melissa Stillton	A good choice to spent the Saturday evening	676ce677db5a654f368cd326c5dfc5bf	https://palomitas.es/reviews/melissa_stillton/top_gun:_maverick_2022
1985	Plenty	6	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/plenty_1985
1995	Restoration	6.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/restoration_1995
2022	Exposure 36	5.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/exposure_36_2022
2021	Poly Styrene: I Am a Cliché	7.1	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/poly_styrene:_i_am_a_cliché_2021
2022	The Unbearable Weight of Massive Talent	7	Melissa Stillton	it is a bit far fetched but a good movie overall	56f38bb9f7978dda26c9ec310650e7d2	https://palomitas.es/reviews/melissa_stillton/the_unbearable_weight_of_massive_talent_2022
2021	The Gig Is Up	6.8	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_gig_is_up_2021
2022	Persuasion	5.7	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/persuasion_2022
2022	Infinite Storm	5.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/infinite_storm_2022
2022	Lancaster	7.6	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/lancaster_2022
2022	Brut Force	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/brut_force_2022
2021	Rushed	6	Melissa Stillton	Awesome movie! It scared the hell out of me	5d8051455487f97c895e7bd4978c2b8b	https://palomitas.es/reviews/melissa_stillton/rushed_2021
2021	Potato Dreams of America	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/potato_dreams_of_america_2021
2021	Simple as Water	6.8	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/simple_as_water_2021
2021	Who is Bill Rebane?	6.8	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/who_is_bill_rebane?_2021
2022	Save the Cinema	6.5	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/save_the_cinema_2022
2021	The Power of the Dog	6.8	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/the_power_of_the_dog_2021
2021	The Humans	6.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_humans_2021
2021	The Passenger	5.2	Melissa Stillton	I didn't understand the dialogues cause i don't speak spanish	199f0ea7ed22b49fa7c64460881af03e	https://palomitas.es/reviews/melissa_stillton/the_passenger_2021
2013	The Wolverine	6.7	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/the_wolverine_2013
2021	The Murder of Gabby Petito: Truth Lies and Social Media	6.2	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_murder_of_gabby_petito:_truth_lies_and_social_media_2021
2022	Watcher	6.3	Melissa Stillton	Awesome movie! It scared the hell out of me	5d8051455487f97c895e7bd4978c2b8b	https://palomitas.es/reviews/melissa_stillton/watcher_2022
2021	Senior Moment	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/senior_moment_2021
1981	Priest of Love	6.2	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/priest_of_love_1981
2021	Roadrunner: A Film About Anthony Bourdain	7.7	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/roadrunner:_a_film_about_anthony_bourdain_2021
2022	American Werewolves	5.1	Melissa Stillton	Awesome movie! It scared the hell out of me	5d8051455487f97c895e7bd4978c2b8b	https://palomitas.es/reviews/melissa_stillton/american_werewolves_2022
2022	Love Accidentally	5.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/love_accidentally_2022
2022	Along for the Ride	6.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/along_for_the_ride_2022
2022	The Royal Treatment	5.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_royal_treatment_2022
2021	The Horrific Evil Monsters	5.2	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/the_horrific_evil_monsters_2021
2021	The Green Sea	5.2	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_green_sea_2021
2015	Aloha	5.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/aloha_2015
2022	Joyride	5.9	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/joyride_2022
2021	Wrath of Man	7.1	Melissa Stillton	it is a bit far fetched but a good movie overall	56f38bb9f7978dda26c9ec310650e7d2	https://palomitas.es/reviews/melissa_stillton/wrath_of_man_2021
2022	Minions: The Rise of Gru	6.6	Melissa Stillton	it is a bit far fetched but a good movie overall	56f38bb9f7978dda26c9ec310650e7d2	https://palomitas.es/reviews/melissa_stillton/minions:_the_rise_of_gru_2022
2018	The Man Who Killed Don Quixote	6.3	Melissa Stillton	Too long! i got asleep	dd209f9103d10f54b73982fdcad1f878	https://palomitas.es/reviews/melissa_stillton/the_man_who_killed_don_quixote_2018
2022	Hollywood Stargirl	5.7	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/hollywood_stargirl_2022
2021	UnPerfect Christmas Wish	5.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/unperfect_christmas_wish_2021
2014	The Hobbit: The Battle of the Five Armies	7.4	Melissa Stillton	Yeahh! This movie is definitely a must see	d85c3b787d1a9079ed927ee2a4b1a79a	https://palomitas.es/reviews/melissa_stillton/the_hobbit:_the_battle_of_the_five_armies_2014
2021	Redeemed	6.6	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/redeemed_2021
2021	Repeat	4.9	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/repeat_2021
2022	The Figo Affair: The Transfer that Changed Football	7.2	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/the_figo_affair:_the_transfer_that_changed_football_2022
2022	Jackass Shark Week 2.0	5.5	Melissa Stillton	A good Documentary	9f13d0e164931711f9f6c95145e5515e	https://palomitas.es/reviews/melissa_stillton/jackass_shark_week_2.0_2022
2006	Running with Scissors	6.1	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/running_with_scissors_2006
2017	The Boss Baby	6.3	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/the_boss_baby_2017
2022	2000 Mules	6.2	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/2000_mules_2022
2012	Rise of the Guardians	7.2	Melissa Stillton	A good choice to spent the Sunday evening	1bca8067553b39a35fba32e46d570945	https://palomitas.es/reviews/melissa_stillton/rise_of_the_guardians_2012
2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog	6.3	Melissa Stillton	Not really a Scary movie	a30589013e2a8b62c91fe03634ad3abf	https://palomitas.es/reviews/melissa_stillton/straight_outta_nowhere:_scooby-doo!_meets_courage_the_cowardly_dog_2021
2022	The Reunion	4.9	Melissa Stillton	Not bad but definitely overrated	db932735b6ca6f4ce7ef057b74f970d3	https://palomitas.es/reviews/melissa_stillton/the_reunion_2022
2021	Rumba Love	6.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/rumba_love_2021
2021	Steve McQueen: The Lost Movie	6.6	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/steve_mcqueen:_the_lost_movie_2021
2021	The Hunt for Planet B	6.5	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/the_hunt_for_planet_b_2021
2022	Harmony from the Heart	6.4	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/harmony_from_the_heart_2022
2021	Untold: Deal with the Devil	7.3	Melissa Stillton	A good movie even for a Documentary	7b159fad886c63817aec32858564b9fe	https://palomitas.es/reviews/melissa_stillton/untold:_deal_with_the_devil_2021
2022	Press Play	5.8	Melissa Stillton	That's what I call a great choice!	68e124af437d276f0e27b16123441570	https://palomitas.es/reviews/melissa_stillton/press_play_2022
2001	Final Fantasy: The Spirits Within	6.4	Melissa Stillton	A good choice to spent the Sunday evening	1bca8067553b39a35fba32e46d570945	https://palomitas.es/reviews/melissa_stillton/final_fantasy:_the_spirits_within_2001
2021	The United States vs. Billie Holiday	6.2	Paul Mulligan	Too long! i got asleep	2875abfd85a2293c5d10bc158b2c73fd	https://forummovies.org/reviews/paul_mulligan/the_united_states_vs._billie_holiday_2021
2021	Range Roads	6.3	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/range_roads_2021
2022	Return to Space	7.3	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/return_to_space_2022
2021	The Wrong Valentine	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/the_wrong_valentine_2021
2021	Quickening	5.4	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/quickening_2021
2021	The Ballad of Billy McCrae	5.3	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_ballad_of_billy_mccrae_2021
2021	Paper & Glue	8.4	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/paper_&_glue_2021
2004	The Aviator	7.5	Paul Mulligan	Yeahh! This movie is definitely a must see	3a3d257d0fabcac1f3ef175676c4cbcd	https://forummovies.org/reviews/paul_mulligan/the_aviator_2004
2022	Through My Window	5.4	Paul Mulligan	I didn't understand the dialogues cause i don't speak spanish	219321c82ecf9fa7efaba84b9e2199d5	https://forummovies.org/reviews/paul_mulligan/through_my_window_2022
2022	The 75th Annual Tony Awards	5.6	Paul Mulligan	Too long! i got asleep	2875abfd85a2293c5d10bc158b2c73fd	https://forummovies.org/reviews/paul_mulligan/the_75th_annual_tony_awards_2022
2021	Torn	7.5	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/torn_2021
2021	Sweet Carolina	6.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/sweet_carolina_2021
2021	The Christmas Contest	5.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_christmas_contest_2021
2021	SAS: Red Notice	5.2	Paul Mulligan	Too long! i got asleep	2875abfd85a2293c5d10bc158b2c73fd	https://forummovies.org/reviews/paul_mulligan/sas:_red_notice_2021
2021	Rebellion	6.7	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/rebellion_2021
2022	The Wedding Veil Legacy	7.3	Paul Mulligan	A good movie to watch with your couple	ac754d9a1de71fc78408c066d7f9ec9c	https://forummovies.org/reviews/paul_mulligan/the_wedding_veil_legacy_2022
2021	Trevor Noah Presents Josh Johnson: # (Hashtag)	5.2	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/trevor_noah_presents_josh_johnson:_#_(hashtag)_2021
2022	Studio 666	5.7	Paul Mulligan	Not really a Scary movie	241f2cf4ec5b6d2a28c858a5ba126290	https://forummovies.org/reviews/paul_mulligan/studio_666_2022
2021	The Matrix Resurrections	5.7	Paul Mulligan	Too long! i got asleep	2875abfd85a2293c5d10bc158b2c73fd	https://forummovies.org/reviews/paul_mulligan/the_matrix_resurrections_2021
2021	Project Pay Day	6	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/project_pay_day_2021
2021	Sweet Pecan Summer	6.2	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/sweet_pecan_summer_2021
2022	The Outfit	7.1	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/the_outfit_2022
2022	David A. Arnold: It Ain't for the Weak	6.5	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/david_a._arnold:_it_ain't_for_the_weak_2022
2006	The Departed	8.5	Paul Mulligan	A good choice to spent the Saturday evening	78135d90ffc0ba2ed9c24fe98947c4e9	https://forummovies.org/reviews/paul_mulligan/the_departed_2006
2022	The Adventures of Peanut and Pig	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/the_adventures_of_peanut_and_pig_2022
2021	Puff: Wonders of the Reef	7.2	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/puff:_wonders_of_the_reef_2021
2021	V/H/S/94	5.4	Paul Mulligan	Awesome movie! It scared the hell out of me	aa7653b8cd5897b96ae38ee3a7cb7663	https://forummovies.org/reviews/paul_mulligan/v/h/s/94_2021
2022	Game Set Love	5.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/game_set_love_2022
2021	Outside	5	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/outside_2021
2021	Road to Damascus	5.4	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/road_to_damascus_2021
2022	Metal Lords	6.7	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/metal_lords_2022
2021	Rock Dog 2: Rock Around the Park	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/rock_dog_2:_rock_around_the_park_2021
2021	Saying Yes to Christmas	5.6	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/saying_yes_to_christmas_2021
2021	The United States of Insanity	6.8	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/the_united_states_of_insanity_2021
2022	White Hot: The Rise & Fall of Abercrombie & Fitch	5.7	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/white_hot:_the_rise_&_fall_of_abercrombie_&_fitch_2022
2021	The Valentine Competition	5.5	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_valentine_competition_2021
2021	Paul Dood's Deadly Lunch Break	5.4	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/paul_dood's_deadly_lunch_break_2021
2016	Blind	5.7	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/blind_2016
2021	The Swim	6.2	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/the_swim_2021
2022	The Monkey King: The Legend Begins	5.7	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_monkey_king:_the_legend_begins_2022
2021	The Last Letter from Your Lover	6.6	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_last_letter_from_your_lover_2021
2022	Feeling Butterflies	6.4	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/feeling_butterflies_2022
2022	Downfall: The Case Against Boeing	7.4	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/downfall:_the_case_against_boeing_2022
2016	Paris Can Wait	5.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/paris_can_wait_2016
1998	Ronin	7.2	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/ronin_1998
2021	Snowkissed	6.1	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/snowkissed_2021
2021	Reach for the Rings	6.6	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/reach_for_the_rings_2021
2021	This Is Port Adelaide	6.9	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/this_is_port_adelaide_2021
2021	The Alpines	5	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_alpines_2021
2022	Sheryl	6.8	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/sheryl_2022
2022	Don't Make Me Go	6.6	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/don't_make_me_go_2022
2022	Prey	7.2	Paul Mulligan	A good choice to spent the Sunday evening	265fad1e765aebd1d962c900412b3427	https://forummovies.org/reviews/paul_mulligan/prey_2022
2022	Last Seen Alive	5.6	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/last_seen_alive_2022
2021	Skateshop	6.7	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/skateshop_2021
2021	The Perfect Family	5.3	Paul Mulligan	I didn't understand the dialogues cause i don't speak spanish	219321c82ecf9fa7efaba84b9e2199d5	https://forummovies.org/reviews/paul_mulligan/the_perfect_family_2021
2014	Still Alice	7.5	Paul Mulligan	Yeahh! This movie is definitely a must see	3a3d257d0fabcac1f3ef175676c4cbcd	https://forummovies.org/reviews/paul_mulligan/still_alice_2014
2005	Neverwas	6.5	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/neverwas_2005
2022	Single Black Female	5.2	Paul Mulligan	Awesome movie! It scared the hell out of me	aa7653b8cd5897b96ae38ee3a7cb7663	https://forummovies.org/reviews/paul_mulligan/single_black_female_2022
2021	What Josiah Saw	6.1	Paul Mulligan	Awesome movie! It scared the hell out of me	aa7653b8cd5897b96ae38ee3a7cb7663	https://forummovies.org/reviews/paul_mulligan/what_josiah_saw_2021
1994	The Shadow	6	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/the_shadow_1994
2021	The Eyes of Tammy Faye	6.6	Paul Mulligan	Too long! i got asleep	2875abfd85a2293c5d10bc158b2c73fd	https://forummovies.org/reviews/paul_mulligan/the_eyes_of_tammy_faye_2021
2022	Ranveer vs. Wild with Bear Grylls	6.6	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/ranveer_vs._wild_with_bear_grylls_2022
2021	Tony Parker: The Final Shot	6.8	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/tony_parker:_the_final_shot_2021
2021	Stallone: Frank That Is	6.4	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/stallone:_frank_that_is_2021
2021	Sisters on Track	5.8	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/sisters_on_track_2021
2021	The Enchanted Christmas Cake	5.3	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_enchanted_christmas_cake_2021
2021	Sir Alex Ferguson: Never Give In	8.2	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/sir_alex_ferguson:_never_give_in_2021
2022	Eddie Izzard: Wunderbar	6.4	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/eddie_izzard:_wunderbar_2022
2022	The Weekend Away	5.6	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/the_weekend_away_2022
1997	McHale's Navy	4.5	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/mchale's_navy_1997
2017	Return to Montauk	5.9	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/return_to_montauk_2017
2022	This Much I Know to Be True	7.8	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/this_much_i_know_to_be_true_2022
2022	Wifelike	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/wifelike_2022
2022	Dancing on Glass	5.5	Paul Mulligan	I didn't understand the dialogues cause i don't speak spanish	219321c82ecf9fa7efaba84b9e2199d5	https://forummovies.org/reviews/paul_mulligan/dancing_on_glass_2022
2022	The Journey Ahead	6.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_journey_ahead_2022
2022	Gabriel's Rapture: Part Three	6.1	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/gabriel's_rapture:_part_three_2022
2022	Floodlights	7.5	Paul Mulligan	Yeahh! This movie is definitely a must see	3a3d257d0fabcac1f3ef175676c4cbcd	https://forummovies.org/reviews/paul_mulligan/floodlights_2022
2021	Rebel Dykes	7	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/rebel_dykes_2021
2021	Taking the Fall	5.9	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/taking_the_fall_2021
2019	Before You Know It	5.2	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/before_you_know_it_2019
2021	The Protégé	6.1	Paul Mulligan	it is a bit far fetched but a good movie overall	6d67742218f0a68d1ddfa456c4e71098	https://forummovies.org/reviews/paul_mulligan/the_protégé_2021
2022	Secret Headquarters	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/secret_headquarters_2022
2021	Zebra Girl	5.2	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/zebra_girl_2021
2022	The Lost	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/the_lost_2022
2021	The Boss Baby: Family Business	5.8	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/the_boss_baby:_family_business_2021
2022	Gone in the Night	4.9	Paul Mulligan	Not bad but definitely overrated	bf6f55fb6088df2c0b5dfe319e98b237	https://forummovies.org/reviews/paul_mulligan/gone_in_the_night_2022
2021	Robin Roberts Presents: Mahalia	7.4	Paul Mulligan	Yeahh! This movie is definitely a must see	3a3d257d0fabcac1f3ef175676c4cbcd	https://forummovies.org/reviews/paul_mulligan/robin_roberts_presents:_mahalia_2021
2021	The Last Thing Mary Saw	5.2	Paul Mulligan	Awesome movie! It scared the hell out of me	aa7653b8cd5897b96ae38ee3a7cb7663	https://forummovies.org/reviews/paul_mulligan/the_last_thing_mary_saw_2021
2022	Untold: The Rise and Fall of AND1	6.8	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/untold:_the_rise_and_fall_of_and1_2022
2021	The Red Star	5.9	Paul Mulligan	I didn't understand the dialogues cause i don't speak spanish	219321c82ecf9fa7efaba84b9e2199d5	https://forummovies.org/reviews/paul_mulligan/the_red_star_2021
2021	What Drives Us	7.3	Paul Mulligan	A good movie even for a Documentary	c11e5f1c25106f93735da41f1bcfc6cd	https://forummovies.org/reviews/paul_mulligan/what_drives_us_2021
2021	Shadow Game	7.6	Paul Mulligan	A good Documentary	cc1d5a1733c3ce6f4ebd6025c35cc35b	https://forummovies.org/reviews/paul_mulligan/shadow_game_2021
2021	Oprah with Meghan and Harry: A CBS Primetime Special	5.2	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/oprah_with_meghan_and_harry:_a_cbs_primetime_special_2021
2011	Melancholia	7.1	Paul Mulligan	A good choice to spent the Sunday evening	265fad1e765aebd1d962c900412b3427	https://forummovies.org/reviews/paul_mulligan/melancholia_2011
2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist	6.5	Paul Mulligan	That's what I call a great choice!	def9cefefbbeda2c7488285a889618c7	https://forummovies.org/reviews/paul_mulligan/v.c._andrews'_landry_family_v.c._andrews'_pearl_in_the_mist_2021
2021	Real Talk	5.6	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/real_talk_2021
2016	Back in the Day	4	Paul Pendergast	Too long! i got asleep	44e44224f78a22a438bff36f66e54001	https://palomitas.es/reviews/paul_pendergast/back_in_the_day_2016
1988	Married to the Mob	6.2	Paul Pendergast	it is a bit far fetched but a good movie overall	9a59af7b7135310426ad9e1fdbab74df	https://palomitas.es/reviews/paul_pendergast/married_to_the_mob_1988
2019	Out Stealing Horses	6.5	Paul Pendergast	Too long! i got asleep	44e44224f78a22a438bff36f66e54001	https://palomitas.es/reviews/paul_pendergast/out_stealing_horses_2019
1999	The Confession	6	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_confession_1999
1997	Amistad	7.3	Paul Pendergast	Yeahh! This movie is definitely a must see	093f76eaa67449ada9bbfe238ca27d33	https://palomitas.es/reviews/paul_pendergast/amistad_1997
2015	Andron	2.7	Paul Pendergast	This movie is boring and the acting is mediocre	d2b4c121d98a2d1be8f4e2de4fd43c4a	https://palomitas.es/reviews/paul_pendergast/andron_2015
2015	Avengers: Age of Ultron	7.3	Paul Pendergast	A good choice to spent the Sunday evening	554e40776cae2e6ef89583b74b2dd10d	https://palomitas.es/reviews/paul_pendergast/avengers:_age_of_ultron_2015
2007	Stardust	7.6	Paul Pendergast	A good movie to watch with your couple	406cacbe920c72ad7aa206d3f6655471	https://palomitas.es/reviews/paul_pendergast/stardust_2007
2013	Seduced and Abandoned	6.6	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/seduced_and_abandoned_2013
1997	Good Will Hunting	8.3	Paul Pendergast	A good movie to watch with your couple	406cacbe920c72ad7aa206d3f6655471	https://palomitas.es/reviews/paul_pendergast/good_will_hunting_1997
2012	To Rome with Love	6.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/to_rome_with_love_2012
2021	Wolfgang	6.9	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/wolfgang_2021
2021	The Tender Bar	6.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_tender_bar_2021
2021	The Unwonted Sasquatch - Director's Cut	5.9	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_unwonted_sasquatch_-_director's_cut_2021
2021	Two Yellow Lines	6.9	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/two_yellow_lines_2021
2021	South Park: Post Covid - The Return of Covid	7.5	Paul Pendergast	Yeahh! This movie is definitely a must see	093f76eaa67449ada9bbfe238ca27d33	https://palomitas.es/reviews/paul_pendergast/south_park:_post_covid_-_the_return_of_covid_2021
2022	Gerry Anderson: A Life Uncharted	7.4	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/gerry_anderson:_a_life_uncharted_2022
2022	God's Waiting Room	5.8	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/god's_waiting_room_2022
2022	The Mystery of Marilyn Monroe: The Unheard Tapes	6.2	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_mystery_of_marilyn_monroe:_the_unheard_tapes_2022
2022	Katrina Babies	7.2	Paul Pendergast	A good Documentary	953647e7f68f1f670ce1ca54a7987c77	https://palomitas.es/reviews/paul_pendergast/katrina_babies_2022
2021	Our Dream Wedding	5.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/our_dream_wedding_2021
2022	The Second Age of Aquarius	5.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_second_age_of_aquarius_2022
2022	Love in the Limelight	6.5	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/love_in_the_limelight_2022
2021	The Rise of the Anti-Vaxx Movement	5.8	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_rise_of_the_anti-vaxx_movement_2021
2021	The Dig	7.1	Paul Pendergast	Yeahh! This movie is definitely a must see	093f76eaa67449ada9bbfe238ca27d33	https://palomitas.es/reviews/paul_pendergast/the_dig_2021
2022	Malicious Mind Games	4.9	Paul Pendergast	Not bad but definitely overrated	3635ae4abf7989555f7b1c044021e4f6	https://palomitas.es/reviews/paul_pendergast/malicious_mind_games_2022
2022	Freedom Uncut	8.3	Paul Pendergast	A good Documentary	953647e7f68f1f670ce1ca54a7987c77	https://palomitas.es/reviews/paul_pendergast/freedom_uncut_2022
2022	Green Lantern: Beware My Power	6	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/green_lantern:_beware_my_power_2022
2022	Salesmen	6.1	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/salesmen_2022
2022	The House	6.8	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_house_2022
2021	The Black Phone	7	Paul Pendergast	Awesome movie! It scared the hell out of me	9a0dfc0e28bb19b19c0c8c9d7969e6ec	https://palomitas.es/reviews/paul_pendergast/the_black_phone_2021
2021	Workhorse Queen	7.1	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/workhorse_queen_2021
2021	Swan Song	7	Paul Pendergast	Yeahh! This movie is definitely a must see	093f76eaa67449ada9bbfe238ca27d33	https://palomitas.es/reviews/paul_pendergast/swan_song_2021
2021	The Housewife and the Hustler	6.3	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_housewife_and_the_hustler_2021
2022	This Is Joan Collins	7.6	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/this_is_joan_collins_2022
2021	Revealed: The Hunt for Bin Laden	6.5	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/revealed:_the_hunt_for_bin_laden_2021
2022	Paws of Fury: The Legend of Hank	5.6	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/paws_of_fury:_the_legend_of_hank_2022
2022	The Contractor	5.8	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_contractor_2022
2021	The Pedal Movie	7.2	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_pedal_movie_2021
2021	Street Gang: How We Got to Sesame Street	8.1	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/street_gang:_how_we_got_to_sesame_street_2021
2022	Lost Angel	5	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/lost_angel_2022
2022	More Than Robots	6	Paul Pendergast	A good Documentary	953647e7f68f1f670ce1ca54a7987c77	https://palomitas.es/reviews/paul_pendergast/more_than_robots_2022
2021	Reminiscence	5.8	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/reminiscence_2021
2022	Gatlopp	5.9	Paul Pendergast	Not really a Scary movie	74cdaba433201305fa0ff95511ca6f92	https://palomitas.es/reviews/paul_pendergast/gatlopp_2022
2022	Assailant	5.4	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/assailant_2022
2021	Tina and Lori	5.2	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/tina_and_lori_2021
2022	The Disruptors	8.3	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_disruptors_2022
2022	Terror on the Prairie	5.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/terror_on_the_prairie_2022
2021	Soy Rada: Serendipity	6.1	Paul Pendergast	I didn't understand the dialogues cause i don't speak spanish	8d475f2874e33904cfc73985356abe97	https://palomitas.es/reviews/paul_pendergast/soy_rada:_serendipity_2021
2022	Father Stu	6.4	Paul Pendergast	Too long! i got asleep	44e44224f78a22a438bff36f66e54001	https://palomitas.es/reviews/paul_pendergast/father_stu_2022
2022	The Railway Children Return	5.5	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_railway_children_return_2022
2021	The Colour Room	6.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_colour_room_2021
2022	Family Camp	4.9	Paul Pendergast	Not bad but definitely overrated	3635ae4abf7989555f7b1c044021e4f6	https://palomitas.es/reviews/paul_pendergast/family_camp_2022
2021	Till Death	5.8	Paul Pendergast	Awesome movie! It scared the hell out of me	9a0dfc0e28bb19b19c0c8c9d7969e6ec	https://palomitas.es/reviews/paul_pendergast/till_death_2021
2022	My Fake Boyfriend	4.9	Paul Pendergast	Not bad but definitely overrated	3635ae4abf7989555f7b1c044021e4f6	https://palomitas.es/reviews/paul_pendergast/my_fake_boyfriend_2022
2022	Look Both Ways	6.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/look_both_ways_2022
2022	The Cellar	5.2	Paul Pendergast	Awesome movie! It scared the hell out of me	9a0dfc0e28bb19b19c0c8c9d7969e6ec	https://palomitas.es/reviews/paul_pendergast/the_cellar_2022
2022	Carole King & James Taylor: Just Call Out My Name	8.1	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/carole_king_&_james_taylor:_just_call_out_my_name_2022
2022	Killer Ambition	4.9	Paul Pendergast	Not bad but definitely overrated	3635ae4abf7989555f7b1c044021e4f6	https://palomitas.es/reviews/paul_pendergast/killer_ambition_2022
2021	The Velvet Underground	7.4	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_velvet_underground_2021
2022	Belle Vie	8	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/belle_vie_2022
2022	Jazz Fest: A New Orleans Story	7.3	Paul Pendergast	A good Documentary	953647e7f68f1f670ce1ca54a7987c77	https://palomitas.es/reviews/paul_pendergast/jazz_fest:_a_new_orleans_story_2022
2022	Men	6.1	Paul Pendergast	A good choice to spent the Sunday evening	554e40776cae2e6ef89583b74b2dd10d	https://palomitas.es/reviews/paul_pendergast/men_2022
2021	Taking the Reins	6.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/taking_the_reins_2021
2021	There Is No I in Threesome	5.4	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/there_is_no_i_in_threesome_2021
2022	Brian and Charles	6.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/brian_and_charles_2022
2021	Ride the Eagle	6.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/ride_the_eagle_2021
2021	Secretly Santa	5.2	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/secretly_santa_2021
2021	Sand Dollar Cove	6.2	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/sand_dollar_cove_2021
2021	The Influencer	5.7	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_influencer_2021
2021	The Forever Prisoner	7.3	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/the_forever_prisoner_2021
2022	Surviving Paradise: A Family Tale	7.5	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/surviving_paradise:_a_family_tale_2022
2022	Watergate: High Crimes in the White House	7	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/watergate:_high_crimes_in_the_white_house_2022
2021	The Starling	6.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_starling_2021
2021	We Broke Up	5	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/we_broke_up_2021
2022	Civil: Ben Crump	5.4	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/civil:_ben_crump_2022
2021	The Wedding Ring	5.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_wedding_ring_2021
2022	Marry Me	6.1	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/marry_me_2022
2021	The 43rd Annual Kennedy Center Honors	6.4	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/the_43rd_annual_kennedy_center_honors_2021
2021	Spiral	5.2	Paul Pendergast	Awesome movie! It scared the hell out of me	9a0dfc0e28bb19b19c0c8c9d7969e6ec	https://palomitas.es/reviews/paul_pendergast/spiral_2021
2022	Stand Out: An LGBTQ+ Celebration	5.9	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/stand_out:_an_lgbtq+_celebration_2022
2021	Take Me to Tarzana	5.3	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/take_me_to_tarzana_2021
2022	Cypress Hill: Insane in the Brain	7.1	Paul Pendergast	A good movie even for a Documentary	59586fbc65ebb4d4ab6efcc35525573b	https://palomitas.es/reviews/paul_pendergast/cypress_hill:_insane_in_the_brain_2022
2022	Moonfall	5.2	Paul Pendergast	Too long! i got asleep	44e44224f78a22a438bff36f66e54001	https://palomitas.es/reviews/paul_pendergast/moonfall_2022
2021	What She Said	5.9	Paul Pendergast	That's what I call a great choice!	a860a229d3c2bcd30158e0c231759dec	https://palomitas.es/reviews/paul_pendergast/what_she_said_2021
2022	The Winter Palace	6.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_winter_palace_2022
2021	Stowaway	5.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/stowaway_2021
2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony	6.8	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_2021_rock_&_roll_hall_of_fame_induction_ceremony_2021
2022	2022 Oscar Nominated Short Films: Animation	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/2022_oscar_nominated_short_films:_animation_2022
2021	See for Me	5.8	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/see_for_me_2021
2022	Home Team	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/home_team_2022
2021	The Electrical Life of Louis Wain	6.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_electrical_life_of_louis_wain_2021
2021	The Devil's Ring	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_devil's_ring_2021
2021	The Daughter	6.2	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/the_daughter_2021
2022	David Spade: Nothing Personal	5.8	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/david_spade:_nothing_personal_2022
2021	The Rise and Fall of LuLaRoe	6.6	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/the_rise_and_fall_of_lularoe_2021
1993	Six Degrees of Separation	6.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/six_degrees_of_separation_1993
2022	VALLDAURA: A Quarantine Cabin	6.7	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/valldaura:_a_quarantine_cabin_2022
2021	Seal Team	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/seal_team_2021
2022	Take the Night	5.6	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/take_the_night_2022
2021	Open by Christmas	6.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/open_by_christmas_2021
2022	The 355	5.4	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_355_2022
2022	Erzulie	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/erzulie_2022
2021	Peace by Chocolate	6.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/peace_by_chocolate_2021
2022	Untrapped: The Story of Lil Baby	5.7	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/untrapped:_the_story_of_lil_baby_2022
2021	The Eternal Moment	7.8	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/the_eternal_moment_2021
2022	Lucy and Desi	7.8	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/lucy_and_desi_2022
2021	This is Gwar	7.8	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/this_is_gwar_2021
2021	The Last Bus	6.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_last_bus_2021
1995	Two Bits	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/two_bits_1995
2022	Radford Returns	5.6	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/radford_returns_2022
2021	Own the Room	6.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/own_the_room_2021
2021	Schumacher	7.4	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/schumacher_2021
2021	The Harder They Fall	6.5	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_harder_they_fall_2021
2021	The Holiday Fix Up	6.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_holiday_fix_up_2021
2021	Prince of Muck	7	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/prince_of_muck_2021
2021	The Jenkins Family Christmas	5.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_jenkins_family_christmas_2021
2021	Shock Docs The Exorcism of Roland Doe	6.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/shock_docs_the_exorcism_of_roland_doe_2021
2022	Scream	6.3	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/scream_2022
2022	Beavis and Butt-Head Do the Universe	7	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/beavis_and_butt-head_do_the_universe_2022
2022	Death on the Nile	6.3	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/death_on_the_nile_2022
2021	Zone 414	4.9	Phill Freeman	Not bad but definitely overrated	0c49e0f845b2ec6b9328e810094998d1	https://forummovies.org/reviews/phill_freeman/zone_414_2021
2021	Paranormal Activity: Next of Kin	5.2	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/paranormal_activity:_next_of_kin_2021
2021	Private Network: Who Killed Manuel Buendía?	6.8	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/private_network:_who_killed_manuel_buendía?_2021
2022	Unicorn Town	9.1	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/unicorn_town_2022
2022	Deep Water	5.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/deep_water_2022
2021	The Ogglies	5.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_ogglies_2021
2021	Triumph	5.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/triumph_2021
2022	The Northman	7.2	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/the_northman_2022
2021	The Girl in the Window	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_girl_in_the_window_2021
2022	Women of the White Buffalo	6.1	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/women_of_the_white_buffalo_2022
2021	Roller Squad	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/roller_squad_2021
2021	The War Below	6.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_war_below_2021
2021	The Jesus Music	7.3	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/the_jesus_music_2021
2021	Second Chances	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/second_chances_2021
2006	Pirates of the Caribbean: Dead Man's Chest	7.3	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/pirates_of_the_caribbean:_dead_man's_chest_2006
2021	The French Dispatch	7.2	Phill Freeman	A good movie to watch with your couple	895906799dda4d13fda2e8377e59136b	https://forummovies.org/reviews/phill_freeman/the_french_dispatch_2021
2021	The Witcher: Nightmare of the Wolf	7.2	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/the_witcher:_nightmare_of_the_wolf_2021
2021	She Will	5.4	Phill Freeman	Not really a Scary movie	9098db015e03238723ce1bddbfd909a8	https://forummovies.org/reviews/phill_freeman/she_will_2021
2021	Redemption for Easter	5.6	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/redemption_for_easter_2021
2021	Sing 2	7.4	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/sing_2_2021
2021	The Storms of Jeremy Thomas	6.4	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/the_storms_of_jeremy_thomas_2021
2021	Ultrasound	5.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/ultrasound_2021
2021	Switched Before Birth	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/switched_before_birth_2021
2021	The Found Footage Phenomenon	6.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/the_found_footage_phenomenon_2021
2022	Crimes of the Future	5.9	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/crimes_of_the_future_2022
2021	This Is the Night	5.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/this_is_the_night_2021
2022	The Royal	6.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_royal_2022
2018	The Public	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_public_2018
2022	Hidden Gems	6.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/hidden_gems_2022
2022	I Love My Dad	6.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/i_love_my_dad_2022
2022	The Adam Project	6.7	Phill Freeman	A good choice to spent the Sunday evening	d62ca8d1be1ff8c9261a8e756a807d85	https://forummovies.org/reviews/phill_freeman/the_adam_project_2022
2021	We're All Going to the World's Fair	5.3	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/we're_all_going_to_the_world's_fair_2021
2021	Try Harder!	7.2	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/try_harder!_2021
2022	Benjamin Franklin	8.3	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/benjamin_franklin_2022
2022	Spring Awakening: Those You've Known	8	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/spring_awakening:_those_you've_known_2022
2021	Single All the Way	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/single_all_the_way_2021
2021	The Village Detective: a song cycle	6.8	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/the_village_detective:_a_song_cycle_2021
2021	The Maltese Holiday	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_maltese_holiday_2021
2021	Prayers for the Stolen	7.3	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/prayers_for_the_stolen_2021
2022	Murder at Yellowstone City	5	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/murder_at_yellowstone_city_2022
2020	Pixie	5.8	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/pixie_2020
2022	Tony Hawk: Until the Wheels Fall Off	8	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/tony_hawk:_until_the_wheels_fall_off_2022
2021	The Exchange	5.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_exchange_2021
2021	The Children of God	5.3	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/the_children_of_god_2021
2022	Caught in His Web	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/caught_in_his_web_2022
2021	Saving Sloane	5.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/saving_sloane_2021
2021	Under the Volcano	7.6	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/under_the_volcano_2021
2022	Trophy Wife	6.9	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/trophy_wife_2022
2022	City of Vultures 2	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/city_of_vultures_2_2022
2022	Torn Hearts	5.1	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/torn_hearts_2022
2022	Easter Sunday	5.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/easter_sunday_2022
2021	The White Tiger	7.1	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/the_white_tiger_2021
2021	To Olivia	6.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/to_olivia_2021
2022	Butlers in Love	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/butlers_in_love_2022
2021	Tom and Jerry	5.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/tom_and_jerry_2021
2022	Kick Like Tayla	5.7	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/kick_like_tayla_2022
2022	Uncharted	6.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/uncharted_2022
2022	Memory	5.6	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/memory_2022
2022	Low Life	5.4	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/low_life_2022
2021	Violet	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/violet_2021
2022	Dakota	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/dakota_2022
2021	The One You're With	5.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_one_you're_with_2021
2021	The Grand Duke of Corsica	4.9	Phill Freeman	Not bad but definitely overrated	0c49e0f845b2ec6b9328e810094998d1	https://forummovies.org/reviews/phill_freeman/the_grand_duke_of_corsica_2021
2021	The Show	7	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/the_show_2021
2021	Super Hot	5.2	Phill Freeman	Not really a Scary movie	9098db015e03238723ce1bddbfd909a8	https://forummovies.org/reviews/phill_freeman/super_hot_2021
2021	The Many Saints of Newark	6.3	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/the_many_saints_of_newark_2021
1989	Scandal	6.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/scandal_1989
2021	The Sacred Spirit	6.6	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/the_sacred_spirit_2021
2022	Here Out West	7.1	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/here_out_west_2022
2022	Chernobyl: The Lost Tapes	8	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/chernobyl:_the_lost_tapes_2022
2021	Tango Shalom	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/tango_shalom_2021
2021	The Pebble and the Boy	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_pebble_and_the_boy_2021
2021	Resurgence	7.1	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/resurgence_2021
2022	A Tear in the Sky	4.9	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/a_tear_in_the_sky_2022
2021	Redemption in Cherry Springs	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/redemption_in_cherry_springs_2021
2021	Queen Bees	6.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/queen_bees_2021
2021	Wild Game	5.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/wild_game_2021
2022	Morbius	5.2	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/morbius_2022
2021	The Matchmaker	7.2	Phill Freeman	A good movie to watch with your couple	895906799dda4d13fda2e8377e59136b	https://forummovies.org/reviews/phill_freeman/the_matchmaker_2021
2021	The Pharm	5.1	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/the_pharm_2021
2021	Twyla Moves	7.1	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/twyla_moves_2021
2021	Playing with Sharks: The Valerie Taylor Story	7.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/playing_with_sharks:_the_valerie_taylor_story_2021
2021	The Good Father: The Martin MacNeill Story	5.9	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/the_good_father:_the_martin_macneill_story_2021
2021	The Deep House	5.4	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/the_deep_house_2021
2021	Silent Hours	5.2	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/silent_hours_2021
2022	No Exit	6.1	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/no_exit_2022
2021	Pleasure	6.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/pleasure_2021
2022	Three Months	6.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/three_months_2022
2022	Snoop Dogg's F*Cn Around Comedy Special	5.2	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/snoop_dogg's_f*cn_around_comedy_special_2022
2021	The Dog Who Wouldn't Be Quiet	6.3	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/the_dog_who_wouldn't_be_quiet_2021
2022	Senior Year	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/senior_year_2022
2022	Windfall	5.7	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/windfall_2022
2011	Thor	7	Phill Freeman	A good choice to spent the Sunday evening	d62ca8d1be1ff8c9261a8e756a807d85	https://forummovies.org/reviews/phill_freeman/thor_2011
2021	The Housewives of the North Pole	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_housewives_of_the_north_pole_2021
2021	The Forgiven	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_forgiven_2021
2022	Boon	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/boon_2022
2021	Woodlands Dark and Days Bewitched: A History of Folk Horror	7.7	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/woodlands_dark_and_days_bewitched:_a_history_of_folk_horror_2021
2022	13: The Musical	5.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/13:_the_musical_2022
2021	One Summer	7	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/one_summer_2021
2022	Me Time	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/me_time_2022
2022	The Princess	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_princess_2022
2021	The Sailor	7.4	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/the_sailor_2021
2022	Love Classified	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/love_classified_2022
2021	Welcome Matt	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/welcome_matt_2021
2021	Scooby-Doo! The Sword and the Scoob	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/scooby-doo!_the_sword_and_the_scoob_2021
1996	Ghosts of Mississippi	6.7	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/ghosts_of_mississippi_1996
2021	The Green Knight	6.6	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_green_knight_2021
2021	Space Titans: Musk Bezos Branson	5.4	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/space_titans:_musk_bezos_branson_2021
2021	Pretenders	5.5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/pretenders_2021
2022	The Mystery of Her	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_mystery_of_her_2022
2022	How to Please a Woman	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/how_to_please_a_woman_2022
2021	The Mauritanian	7.4	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/the_mauritanian_2021
2022	They Live in the Grey	5	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/they_live_in_the_grey_2022
2022	X	6.6	Phill Freeman	Awesome movie! It scared the hell out of me	bd7a851a44c7704e3ccc05be8a3797be	https://forummovies.org/reviews/phill_freeman/x_2022
2021	Payback	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/payback_2021
2021	Vacation Friends	6.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/vacation_friends_2021
2021	The Lost Sons	7.3	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/the_lost_sons_2021
2022	Block Party	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/block_party_2022
1997	Swept from the Sea	6.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/swept_from_the_sea_1997
2021	The Story of My Wife	6.2	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_story_of_my_wife_2021
2021	One Winter Wedding	6.1	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/one_winter_wedding_2021
2022	Octopus Pot	5	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/octopus_pot_2022
2021	Open	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/open_2021
2022	Christina P.: Mom Genes	5.9	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/christina_p.:_mom_genes_2022
2022	After Jackie	7.2	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/after_jackie_2022
2022	Rip in Time	6.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/rip_in_time_2022
2021	Superior	5.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/superior_2021
2022	Paulie Go!	5.3	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/paulie_go!_2022
2021	Skater Girl	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/skater_girl_2021
2022	Ronny Chieng: Speakeasy	6.3	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/ronny_chieng:_speakeasy_2022
2022	The Gray Man	6.5	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/the_gray_man_2022
2000	Harlan County War	6.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/harlan_county_war_2000
2022	Found Wandering Lost	5.7	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/found_wandering_lost_2022
1988	Talk Radio	7.2	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/talk_radio_1988
1990	Alice	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/alice_1990
1991	Oscar	6.5	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/oscar_1991
2008	The Secret of Moonacre	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_secret_of_moonacre_2008
2012	The Avengers	8	Phill Freeman	A good choice to spent the Sunday evening	d62ca8d1be1ff8c9261a8e756a807d85	https://forummovies.org/reviews/phill_freeman/the_avengers_2012
2022	Crush	6.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/crush_2022
2019	The Good Liar	6.7	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/the_good_liar_2019
2022	Movers Ultimate	6.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/movers_ultimate_2022
1999	Outside Providence	6.4	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/outside_providence_1999
1988	She's Having a Baby	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/she's_having_a_baby_1988
2004	Along Came Polly	6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/along_came_polly_2004
2000	Dancer in the Dark	7.9	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/dancer_in_the_dark_2000
1982	Annie	6.6	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/annie_1982
2002	Ritual	4.8	Phill Freeman	Not bad but definitely overrated	0c49e0f845b2ec6b9328e810094998d1	https://forummovies.org/reviews/phill_freeman/ritual_2002
2001	Pearl Harbor	6.2	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/pearl_harbor_2001
2021	Streamline	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/streamline_2021
2012	Rock of Ages	5.9	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/rock_of_ages_2012
2021	Trollhunters: Rise of the Titans	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/trollhunters:_rise_of_the_titans_2021
2008	My Best Friend's Girl	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/my_best_friend's_girl_2008
1989	Great Balls of Fire!	6.2	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/great_balls_of_fire!_1989
2022	The Bob's Burgers Movie	7	Phill Freeman	Yeahh! This movie is definitely a must see	fb95353028ad2b3566cdce39ca8bd8e1	https://forummovies.org/reviews/phill_freeman/the_bob's_burgers_movie_2022
1998	Mercury Rising	6.1	Phill Freeman	it is a bit far fetched but a good movie overall	e0bdaa93be687493d629f487279e2c86	https://forummovies.org/reviews/phill_freeman/mercury_rising_1998
2021	To Be Determined	6.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/to_be_determined_2021
2021	Sounds Like Love	5.4	Phill Freeman	I didn't understand the dialogues cause i don't speak spanish	a2198179a524ac55230045c738ba91ac	https://forummovies.org/reviews/phill_freeman/sounds_like_love_2021
2022	After Yang	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/after_yang_2022
2022	Mo Gilligan: There's Mo to Life	5.9	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/mo_gilligan:_there's_mo_to_life_2022
2022	Olivia Rodrigo: driving home 2 u (a SOUR film)	7.1	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/olivia_rodrigo:_driving_home_2_u_(a_sour_film)_2022
2021	Rose West: Born Evil?	6.2	Phill Freeman	A good Documentary	c4cb462fc3ed7d1678976fae9d7bbbd9	https://forummovies.org/reviews/phill_freeman/rose_west:_born_evil?_2021
2021	Strawberry Mansion	6.4	Phill Freeman	A good choice to spent the Sunday evening	d62ca8d1be1ff8c9261a8e756a807d85	https://forummovies.org/reviews/phill_freeman/strawberry_mansion_2021
2021	Truly Texas Mexican	6.6	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/truly_texas_mexican_2021
2022	The Man from Toronto	5.8	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/the_man_from_toronto_2022
2021	Wish Dragon	7.2	Phill Freeman	A good movie to watch with your couple	895906799dda4d13fda2e8377e59136b	https://forummovies.org/reviews/phill_freeman/wish_dragon_2021
2021	Respect	6.5	Phill Freeman	Too long! i got asleep	39c70f7f3e4b956a4cd6e610f79ff45e	https://forummovies.org/reviews/phill_freeman/respect_2021
2022	Elizabeth Windsor	6.5	Phill Freeman	A good movie even for a Documentary	880cf1f839805521958128894c8fcf2c	https://forummovies.org/reviews/phill_freeman/elizabeth_windsor_2022
2006	Flushed Away	6.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/flushed_away_2006
2021	One Shot	5.6	Phill Freeman	That's what I call a great choice!	abfb5e25b8372e605c25639f3815e554	https://forummovies.org/reviews/phill_freeman/one_shot_2021
\.


--
-- Data for Name: director_pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.director_pelicula (titulo, anno, director) FROM stdin;
Clue	1985	\N
Miami Blues	1990	George Armitage
Stardust	2007	Matthew Vaughn
Infinitum: Subject Unknown	2021	\N
The Aviator	2004	Martin Scorsese
Paris Can Wait	2016	\N
The Three Musketeers	1993	\N
Rise of the Guardians	2012	\N
Six Degrees of Separation	1993	\N
X-Men: The Last Stand	2006	\N
My Sister's Keeper	2009	\N
The Shadow	1994	\N
Our Kind of Traitor	2016	\N
Heaven's Prisoners	1996	\N
Two Bits	1995	James Foley
Annie	1982	John Huston
Still Alice	2014	\N
Kinsey	2004	\N
Out Stealing Horses	2019	\N
Mini's First Time	2006	\N
Congo	1995	\N
Chick Fight	2020	\N
The Lord of the Rings: The Return of the King	2003	Peter Jackson
Drunk Parents	2019	\N
Rules Don't Apply	2016	\N
Pixie	2020	\N
Thor	2011	Kenneth Branagh
Arctic Dogs	2019	\N
Elizabethtown	2005	Cameron Crowe
BlacKkKlansman	2018	Spike Lee
Seduced and Abandoned	2013	\N
The Cat in the Hat	2003	\N
Harlan County War	2000	\N
Oscar	1991	John Landis
The Unbearable Lightness of Being	1988	Philip Kaufman
Great Balls of Fire!	1989	\N
Insomnia	2002	\N
Cats & Dogs	2001	\N
Deep Blue Sea	1999	\N
Restoration	1995	\N
The Avengers	2012	Joss Whedon
The Marrying Man	1991	\N
The Boss Baby	2017	\N
Insomnia	1997	\N
The Hobbit: An Unexpected Journey	2012	Peter Jackson
Back in the Day	2016	\N
Final Fantasy: The Spirits Within	2001	\N
The Avengers	1998	Joss Whedon
My Best Friend's Girl	2008	\N
The Man Who Killed Don Quixote	2018	Terry Gilliam
In Order of Disappearance	2014	\N
The Royal Tenenbaums	2001	Wes Anderson
The Good Shepherd	2006	Robert De Niro
The Hobbit: The Desolation of Smaug	2013	Peter Jackson
Alice	1990	Woody Allen
Timecode	2000	Mike Figgis
The Getaway	1994	Roger Donaldson
The Lord of the Rings: The Fellowship of the Ring	2001	Peter Jackson
Cinderella	2015	Kenneth Branagh
Thomas and the Magic Railroad	2000	\N
The Edge	1997	Lee Tamahori
No Good Deed	2002	Bob Rafelson
Scary Movie 2	2001	\N
Dogville	2003	Lars Von Trier
Concussion	2015	\N
Legend	1985	Ridley Scott
Along Came Polly	2004	\N
Before You Know It	2019	\N
Flushed Away	2006	\N
The Rocky Horror Picture Show	1975	\N
To Rome with Love	2012	Woody Allen
The Shout	1978	\N
The Da Vinci Code	2006	Ron Howard
Good Will Hunting	1997	Gus Van Sant
Glengarry Glen Ross	1992	James Foley
Plenty	1985	\N
The Good Liar	2019	\N
Blue Jasmine	2013	Woody Allen
Malice	1993	\N
Working Girl	1988	Mike Nichols
She's Having a Baby	1988	John Hughes
Rock of Ages	2012	\N
Mr. Holmes	2015	\N
Notting Hill	1999	\N
Scandal	1989	\N
The Confession	1999	\N
A Star Is Born	2018	\N
Suburban Girl	2007	\N
Andron	2015	\N
The Promise	2016	\N
The Cooler	2003	\N
Times Square	1980	\N
The Hunt for Red October	1990	John McTiernan
Crown Vic	2019	\N
Amistad	1997	Steven Spielberg
The Departed	2006	Martin Scorsese
Return to Montauk	2017	\N
Prelude to a Kiss	1992	\N
Running with Scissors	2006	\N
Beetlejuice	1988	Tim Burton
Beast Beast	2020	\N
The Boss Baby: Family Business	2021	\N
Mercury Rising	1998	\N
Talk Radio	1988	Oliver Stone
Dune	1984	Denis Villeneuve
Motherless Brooklyn	2019	\N
Gods and Monsters	1998	\N
Blind	2016	\N
State and Main	2000	\N
Home Alone 2: Lost in New York	1992	\N
Avengers: Age of Ultron	2015	Joss Whedon
Married to the Mob	1988	Jonathan Demme
Thor: The Dark World	2013	\N
McHale's Navy	1997	\N
Dancer in the Dark	2000	Lars Von Trier
The Wolverine	2013	James Mangold
Jim & Piraterna Blom	1987	\N
Priest of Love	1981	\N
Angels & Demons	2009	Ron Howard
The Public	2018	\N
Hick	2011	\N
Ritual	2002	\N
Muppet Treasure Island	1996	\N
Melancholia	2011	Lars Von Trier
Pirates of the Caribbean: Dead Man's Chest	2006	Gore Verbinski
The Secret of Moonacre	2008	\N
Aloha	2015	Cameron Crowe
The Ploughman's Lunch	1983	Richard Eyre
Outside Providence	1999	\N
Ghosts of Mississippi	1996	Rob Reiner
Mamma Mia!	2008	\N
X-Men: Days of Future Past	2014	Bryan Singer
Charlie's Angels	2000	\N
The Simple-Minded Murderer	1982	\N
Pearl Harbor	2001	\N
No Good Deed	2014	Bob Rafelson
Neverwas	2005	\N
Ronin	1998	John Frankenheimer
The Hobbit: The Battle of the Five Armies	2014	Peter Jackson
Loaded Weapon 1	1993	\N
Last Action Hero	1993	John McTiernan
Swept from the Sea	1997	\N
The Girl with the Dragon Tattoo	2011	David Fincher
The Adventures of Pluto Nash	2002	\N
Apt Pupil	1998	Bryan Singer
The Juror	1996	\N
Breaking the Waves	1996	Lars Von Trier
\.


--
-- Data for Name: directores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directores (nombre, anno_nacimiento) FROM stdin;
Aamir Khan	\N
Abdellatif Kechiche	\N
Abel Gance	\N
Adam Elliot	\N
Akira Kurosawa	\N
Alain Resnais	\N
Alan J. Pakula	\N
Alan Mak	\N
Alan Parker	\N
Alejandro Amenábar	\N
Alejandro G. Innárritu	\N
Alejandro González Innárritu	\N
Alex Garland	\N
Alex Proyas	\N
Alexander Mackendrick	\N
Alexander Payne	\N
Alfonso Cuarón	\N
Alfred Hitchcock	\N
Andrea Arnold	\N
Andrew Adamson	\N
Andrew Davis	\N
Andrew Dominik	\N
Andrew Lau	\N
Andrew Marton	\N
Andrew Niccol	\N
Andrew Stanton	\N
Andrey Tarkovskiy	\N
Andrey Zvyagintsev	\N
Ang Lee	\N
Anthony Minghella	\N
Anthony Russo	\N
Anton Corbijn	\N
Anurag Basu	\N
Anurag Kashyap	\N
Armando Iannucci	\N
Arthur Penn	\N
Arthur Rosson	\N
Asghar Farhadi	\N
Ash Brannon	\N
Ashutosh Gowariker	\N
Atom Egoyan	\N
Barry Cook	\N
Barry Levinson	\N
Baz Luhrmann	\N
Ben Affleck	\N
Benh Zeitlin	\N
Bennett Miller	\N
Bernardo Bertolucci	\N
Billy Bob Thornton	\N
Billy Wilder	\N
Blake Edwards	\N
Bob Clark	\N
Bob Fosse	\N
Bob Peterson	\N
Bob Rafelson	\N
Brad Bird	\N
Brian De Palma	\N
Brian G. Hutton	\N
Bruce Robinson	\N
Bryan Singer	\N
Buster Keaton	\N
Byron Howard	\N
Béla Tarr	\N
Cameron Crowe	\N
Carl Th. Dreyer	\N
Carl Theodor Dreyer	\N
Carol Reed	\N
Cecil B. de Mille	\N
Chan-wook Park	\N
Charles Chaplin	\N
Charles Crichton	\N
Charles Laughton	\N
Charles Vidor	\N
Charlie Chaplin	\N
Chas. F. Reisner	\N
Chris Buck	\N
Chris Sanders	\N
Chris Williams	\N
Christopher Guest	\N
Christopher Miller	\N
Christopher Nolan	\N
Claude Berri	\N
Clint Eastwood	\N
Clyde Bruckman	\N
Costa-Gavras	\N
Cristian Mungiu	\N
Curtis Hanson	\N
Cy Endfield	\N
D.W. Griffith	\N
Damien Chazelle	\N
Damián Szifron	\N
Dan Gilroy	\N
Daniel Monzón	\N
Danis Tanovic	\N
Danny Boyle	\N
Dario Argento	\N
Darren Aronofsky	\N
David Anspaugh	\N
David Ayer	\N
David Cronenberg	\N
David Fincher	\N
David Hand	\N
David Lean	\N
David Lynch	\N
David Michôd	\N
David O. Russell	\N
David Silverman	\N
David Yates	\N
David Zucker	\N
Dean DeBlois	\N
Debra Granik	\N
Delbert Mann	\N
Denis Villeneuve	\N
Dennis Hopper	\N
Derek Cianfrance	\N
Destin Daniel Cretton	\N
Don Hall	\N
Don Siegel	\N
Donald Siegel	\N
Doug Liman	\N
Duncan Jones	\N
E. Klimov	\N
Edgar Wright	\N
Edward Sedgwick	\N
Edward Yang	\N
Edward Zwick	\N
Eli Craig	\N
Eli Roth	\N
Elia Kazan	\N
Elmar Klos	\N
Emeric Pressburger	\N
Emir Kusturica	\N
Eric Toledano	\N
Erich von Stroheim	\N
Ernst Lubitsch	\N
Ethan Coen	\N
F.W. Murnau	\N
Fabian Bielinsky	\N
Fatih Akin	\N
Federico Fellini	\N
Fernando Meirelles	\N
Florian Henckel von Donnersmarck	\N
Francis Coppola	\N
Francis Ford Coppola	\N
Francis Lawrence	\N
Frank Capra	\N
Frank Darabont	\N
Frank Miller	\N
Franklin J. Schaffner	\N
François Truffaut	\N
Fred McLeod Wilcox	\N
Fred Neymeyer	\N
Fred Zinnemann	\N
Fritz Lang	\N
Gareth Evans	\N
Gareth Huw Evans	\N
Gary Trousdale	\N
Gavin O'Connor	\N
Gene Kelly	\N
Georg Wilhelm Pabst	\N
George A. Romero	\N
George Armitage	\N
George Clooney	\N
George Cukor	\N
George Lucas	\N
George Miller	\N
George P. Cosmatos	\N
George Roy Hill	\N
George Seaton	\N
George Sluizer	\N
George Stevens	\N
Georges Franju	\N
Gillo Pontecorvo	\N
Giuseppe Tornatore	\N
Gore Verbinski	\N
Greg Mottola	\N
Gregg Araki	\N
Gregory La Cava	\N
Guillaume Canet	\N
Guillermo del Toro	\N
Gus Van Sant	\N
Gus Van Sant Jr.	\N
Guy Hamilton	\N
Guy Ritchie	\N
H.G. Clouzot	\N
Hal Ashby	\N
Harold Ramis	\N
Hayao Miyazaki	\N
Henri-Georges Clouzot	\N
Henry Koster	\N
Henry Selick	\N
Hideo Nakata	\N
Hirokazu Koreeda	\N
Hiromasa Yonebayashi	\N
Hiroshi Teshigahara	\N
Hong-jin Na	\N
Howard Hawks	\N
Ingmar Bergman	\N
Irvin Kershner	\N
Irving Rapper	\N
Isao Takahata	\N
Ivan Reitman	\N
J. Lee Thompson	\N
J.J. Abrams	\N
Jack Blystone	\N
Jack Clayton	\N
Jacques Audiard	\N
Jacques Becker	\N
Jacques Demy	\N
Jacques Tati	\N
Jacques Tourneur	\N
James Algar	\N
James Cameron	\N
James Foley	\N
James Gunn	\N
James Ivory	\N
James L. Brooks	\N
James Mangold	\N
James McTeigue	\N
James Ponsoldt	\N
James Whale	\N
Jan Pinkava	\N
Jan de Bont	\N
Jane Campion	\N
Jason Reitman	\N
Jaume Balagueró	\N
Je-gyu Kang	\N
Jean Cocteau	\N
Jean Renoir	\N
Jean Vigo	\N
Jean-Luc Godard	\N
Jean-Marc Vallée	\N
Jean-Pierre Dardenne	\N
Jean-Pierre Jeunet	\N
Jean-Pierre Melville	\N
Jeff Nichols	\N
Jemaine Clement	\N
Jennifer Lee	\N
Jeong-beom Lee	\N
Jerome Robbins	\N
Jim Abrahams	\N
Jim Jarmusch	\N
Jim Sheridan	\N
Joe Johnston	\N
Joe Russo	\N
Joe Wright	\N
Joel Coen	\N
John Boorman	\N
John Carney	\N
John Carpenter	\N
John Cassavetes	\N
John Crowley	\N
John Ford	\N
John Frankenheimer	\N
John G. Avildsen	\N
John Hillcoat	\N
John Hughes	\N
John Huston	\N
John Landis	\N
John Lasseter	\N
John McTiernan	\N
John Musker	\N
John Sayles	\N
John Schlesinger	\N
John Singleton	\N
John Stevenson	\N
John Sturges	\N
John Woo	\N
Jon Favreau	\N
Jonathan Dayton	\N
Jonathan Demme	\N
Jonathan Frakes	\N
Jonathan Levine	\N
Joon Ho Bong	\N
Joseph L. Mankiewicz	\N
Joseph Sargent	\N
Joss Whedon	\N
José Padilha	\N
Juan José Campanella	\N
Jules Dassin	\N
Julian Schnabel	\N
Ján Kadár	\N
Kaige Chen	\N
Kar Wai Wong	\N
Karan Johar	\N
Kathryn Bigelow	\N
Katsuhiro Ôtomo	\N
Ken Annakin	\N
Ken Loach	\N
Kenji Mizoguchi	\N
Kenneth Branagh	\N
Kenneth Loach	\N
Kenneth Lonergan	\N
Kevin Costner	\N
Kevin Macdonald	\N
Kevin Smith	\N
Ki-duk Kim	\N
Kim Jee-woon	\N
Kimberly Peirce	\N
King Vidor	\N
Kinji Fukasaku	\N
Kirk Wise	\N
Krzysztof Kieslowski	\N
Kátia Lund	\N
Larry Charles	\N
Lars Von Trier	\N
Lasse Hallström	\N
Laurent Cantet	\N
Lee Daniels	\N
Lee Tamahori	\N
Lee Unkrich	\N
Leo McCarey	\N
Lewis Milestone	\N
Lindsay Anderson	\N
Louis Malle	\N
Loveleen Tandan	\N
Luc Besson	\N
Luc Dardenne	\N
Luchino Visconti	\N
Luis Bunuel	\N
Luis Bunnuel	\N
Lukas Moodysson	\N
M. Night Shyamalan	\N
Majid Majidi	\N
Mamoru Hosoda	\N
Mamoru Oshii	\N
Marc Caro	\N
Marc Forster	\N
Marc Webb	\N
Marcel Carné	\N
Marco Tullio Giordana	\N
Marjane Satrapi	\N
Mark Osborne	\N
Mark Sandrich	\N
Martin Brest	\N
Martin Campbell	\N
Martin McDonagh	\N
Martin Scorsese	\N
Masaki Kobayashi	\N
Mathieu Kassovitz	\N
Matt Reeves	\N
Matthew Vaughn	\N
Max Ophüls	\N
Max Opuls	\N
Mel Brooks	\N
Mel Gibson	\N
Mel Stuart	\N
Mervyn LeRoy	\N
Michael Cimino	\N
Michael Curtiz	\N
Michael Haneke	\N
Michael Lehmann	\N
Michael Mann	\N
Michael Powell	\N
Michel Gondry	\N
Michel Hazanavicius	\N
Michelangelo Antonioni	\N
Mike Figgis	\N
Mike Judge	\N
Mike Leigh	\N
Mike Newell	\N
Mike Nichols	\N
Mikhail Kalatozov	\N
Milos Forman	\N
Morten Tyldum	\N
Nathan Greno	\N
Neil Jordan	\N
Neill Blomkamp	\N
Nicholas Meyer	\N
Nicholas Ray	\N
Nick Park	\N
Nicolas Roeg	\N
Nicolas Winding Refn	\N
Niels Arden Oplev	\N
Noah Baumbach	\N
Norman Ferguson	\N
Norman Jewison	\N
Nuri Bilge Ceylan	\N
Oliver Hirschbiegel	\N
Oliver Stone	\N
Olivier Nakache	\N
Orson Welles	\N
Otto Preminger	\N
Paco Plaza	\N
Paolo Sorrentino	\N
Park Chan Wook	\N
Paul Greengrass	\N
Paul Thomas Anderson	\N
Paul Verhoeven	\N
Pawel Pawlikowski	\N
Pedro Almodóvar	\N
Penny Marshall	\N
Pete Docter	\N
Peter Bogdanovich	\N
Peter Greenaway	\N
Peter Jackson	\N
Peter Weir	\N
Peter Yates	\N
Phil Alden Robinson	\N
Phil Lord	\N
Philip Kaufman	\N
Preston Sturges	\N
Quentin Tarantino	\N
Rainer Werner Fassbinder	\N
Rajkumar Hirani	\N
Rakesh Omprakash Mehra	\N
Raoul Walsh	\N
René Clément	\N
Rian Johnson	\N
Rich Moore	\N
Richard Attenborough	\N
Richard Ayoade	\N
Richard Brooks	\N
Richard Donner	\N
Richard Eyre	\N
Richard Kelly	\N
Richard Lester	\N
Richard Linklater	\N
Richard Marquand	\N
Richard Rosson	\N
Ridley Scott	\N
Rob Marshall	\N
Rob Minkoff	\N
Rob Reiner	\N
Robert Aldrich	\N
Robert Altman	\N
Robert Benton	\N
Robert Bresson	\N
Robert Clouse	\N
Robert De Niro	\N
Robert Hamer	\N
Robert Mulligan	\N
Robert Pulcini	\N
Robert Redford	\N
Robert Rodriguez	\N
Robert Rossen	\N
Robert Siodmak	\N
Robert Stevenson	\N
Robert Wiene	\N
Robert Wise	\N
Robert Zemeckis	\N
Roberto Benigni	\N
Roberto Rossellini	\N
Robin Hardy	\N
Roger Allers	\N
Roger Donaldson	\N
Roland Joffé	\N
Roman Polanski	\N
Ron Clements	\N
Ron Howard	\N
Ronnie Del Carmen	\N
Ronny Yu	\N
Ruben Fleischer	\N
Rupert Wyatt	\N
Ryan Coogler	\N
Ryan Fleck	\N
S.M. Eisenstein	\N
Sam Armstrong	\N
Sam Mendes	\N
Sam Peckinpah	\N
Sam Raimi	\N
Sam Taylor	\N
Sam Wood	\N
Satoshi Kon	\N
Satyajit Ray	\N
Scott Hicks	\N
Sean Penn	\N
Sergei Eisenstein	\N
Sergio Leone	\N
Shane Black	\N
Shane Meadows	\N
Shari Springer Berman	\N
Shekhar Kapur	\N
Shimit Amin	\N
Sidney Lumet	\N
Sofia Coppola	\N
Spike Jonze	\N
Spike Lee	\N
Stanley Donen	\N
Stanley Kramer	\N
Stanley Kubrick	\N
Stefan Ruzowitzky	\N
Stephen Chbosky	\N
Stephen Chow	\N
Stephen Daldry	\N
Stephen Frears	\N
Steve Box	\N
Steve McQueen	\N
Steven Soderbergh	\N
Steven Spielberg	\N
Stuart Gordon	\N
Stuart Rosenberg	\N
Sydney Pollack	\N
Sylvain Chomet	\N
T. Hee	\N
Taika Waititi	\N
Takashi Miike	\N
Takeshi Kitano	\N
Tate Taylor	\N
Taylor Hackford	\N
Ted Kotcheff	\N
Terence Young	\N
Terrence Malick	\N
Terry George	\N
Terry Gilliam	\N
Terry Jones	\N
Terry Zwigoff	\N
The Hughes Brothers	\N
The Wachowski Brothers	\N
Thomas Vinterberg	\N
Tim Burton	\N
Tim Robbins	\N
Tobe Hooper	\N
Tod Browning	\N
Todd Field	\N
Todd Haynes	\N
Todd Solondz	\N
Tom Ford	\N
Tom Hooper	\N
Tom McCarthy	\N
Tom Tykwer	\N
Tomas Alfredson	\N
Tony Bancroft	\N
Tony Kaye	\N
Tony Scott	\N
Trey Parker	\N
Valerie Faris	\N
Vicky Jenson	\N
Victor Fleming	\N
Victor Sjöström	\N
Vincent Paronnaud	\N
Vincente Minnelli	\N
Vishal Bhardwaj	\N
Vittorio De Sica	\N
Víctor Erice	\N
W.S. Van Dyke	\N
Walter Hill	\N
Walter Salles	\N
Werner Herzog	\N
Wes Anderson	\N
Wes Craven	\N
William A. Wellman	\N
William Cottrell	\N
William Friedkin	\N
William Keighley	\N
William Wyler	\N
Wilson Yip	\N
Wim Wenders	\N
Wolfgang Becker	\N
Wolfgang Petersen	\N
Wolfgang Reitherman	\N
Woody Allen	\N
Xavier Dolan	\N
Yash Chopra	\N
Yasujirô Ozu	\N
Yimou Zhang	\N
Yôji Yamada	\N
Yôjirô Takita	\N
Zach Braff	\N
Ágnes Hranitzky	\N
\.


--
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (anno, titulo, genero, puntuacion, duracion_min, idioma, calificacion) FROM stdin;
2018	The Public	Action Drama	6.6	119 mins	en	PG-13
2019	Before You Know It	Action Comedy Drama	5.2	98 mins	en	\N
2000	Dancer in the Dark	Action Crime Drama Musical	7.9	140 mins	en	R
2018	A Star Is Born	Action Drama Music Romance	7.6	136 mins	en	R
2012	Rise of the Guardians	Action Adventure Animation Comedy Drama Family Fantasy Sci-Fi Thriller	7.2	97 mins	en	PG
1998	Apt Pupil	Action Crime Drama Romance Thriller	6.7	111 mins	en	R
2007	Suburban Girl	Comedy Drama Romance	5.4	97 mins	en	PG-13
2014	In Order of Disappearance	Action Adventure Comedy Crime Drama Thriller	7.1	116 mins	no	R
2000	Harlan County War	Drama	6.4	104 mins	en	\N
1985	Plenty	Action Drama	6	121 mins	en	\N
2012	The Hobbit: An Unexpected Journey	Action Adventure Family Fantasy	7.8	169 mins	en	PG-13
1978	The Shout	Action Drama Horror	6.6	86 mins	en	\N
2016	Back in the Day	Drama Sport	4	121 mins	en	\N
2006	The Da Vinci Code	Action Mystery Thriller	6.6	149 mins	en	PG-13
1991	The Marrying Man	Action Comedy Music Romance	5.7	115 mins	en	R
2006	Mini's First Time	Action Comedy Crime Drama	5.8	91 mins	en	R
2001	The Lord of the Rings: The Fellowship of the Ring	Action Adventure Drama Fantasy	8.8	178 mins	en	PG-13
2006	The Good Shepherd	Action Drama History Thriller	6.7	167 mins	en	R
1997	Swept from the Sea	Action Drama Mystery Romance	6.7	115 mins	en	PG-13
2013	Thor: The Dark World	Action Adventure Fantasy Sci-Fi	6.8	112 mins	en	PG-13
1996	Ghosts of Mississippi	Action Drama History	6.7	130 mins	en	PG-13
1988	The Unbearable Lightness of Being	Action Drama Romance	7.3	171 mins	en	\N
2011	Thor	Action Adventure Fantasy Sci-Fi	7	115 mins	en	PG-13
2014	Still Alice	Action Drama	7.5	101 mins	en	PG-13
1999	Notting Hill	Action Comedy Drama Romance	7.2	124 mins	en	PG-13
1988	Married to the Mob	Action Comedy Crime Romance	6.2	104 mins	en	\N
2019	Crown Vic	Action Adventure Crime Drama Mystery Thriller Action Adventure Crime Drama Mystery Thriller	6.4	110 mins	en	R
1992	Prelude to a Kiss	Comedy Fantasy Romance	5.6	105 mins	en	PG-13
1989	Scandal	Action Drama History	6.4	115 mins	en	R
2013	The Wolverine	Action Adventure Fantasy Sci-Fi Thriller	6.7	126 mins	en	PG-13
2020	Pixie	Action Comedy Crime Thriller	5.8	93 mins	en	R
2021	Infinitum: Subject Unknown	Action Mystery Sci-Fi	5	86 mins	en	\N
2006	Pirates of the Caribbean: Dead Man's Chest	Action Adventure Crime Family Fantasy History	7.3	151 mins	en	PG-13
2004	Kinsey	Action Biography Drama Romance	7.1	118 mins	en	R
2017	Return to Montauk	Action Drama Romance	5.9	106 mins	de	\N
2018	BlacKkKlansman	Action Biography Comedy Crime Drama	7.5	135 mins	en	R
1993	Malice	Action Crime Mystery Thriller	6.4	107 mins	en	R
1996	The Juror	Action Crime Drama Thriller	5.7	118 mins	en	R
2019	Out Stealing Horses	Action Drama Mystery	6.5	123 mins	no	\N
1987	Jim & Piraterna Blom	Action Adventure Comedy Family	6.1	92 mins	sv	\N
1994	The Getaway	Action Adventure Crime Drama Romance Thriller	5.8	115 mins	en	R
2009	Angels & Demons	Action Mystery Thriller Action Mystery Thriller	6.7	138 mins	en	PG-13
1995	Two Bits	Action Comedy Drama	6.1	85 mins	en	PG-13
2003	The Cooler	Action Drama Romance	6.9	101 mins	en	R
1999	Deep Blue Sea	Action Adventure Sci-Fi Thriller	5.9	105 mins	en	R
2021	The Boss Baby: Family Business	Action Adventure Animation Comedy Family Fantasy	5.8	107 mins	en	PG
1995	Congo	Action Adventure Mystery Sci-Fi	5.2	109 mins	en	PG-13
1993	Last Action Hero	Action Adventure Comedy Fantasy	6.4	130 mins	en	PG-13
1993	Six Degrees of Separation	Action Comedy Drama Mystery	6.8	112 mins	en	R
2015	Aloha	Action Comedy Drama Romance	5.4	105 mins	en	PG-13
2006	Flushed Away	Action Adventure Animation Comedy Drama Family Fantasy Romance	6.6	85 mins	en	PG
1999	The Confession	Action Drama Thriller	6	114 mins	en	R
2016	Our Kind of Traitor	Action Crime Drama Thriller	6.2	108 mins	en	R
1984	Dune	Action Adventure Sci-Fi	6.3	137 mins	en	\N
1996	Muppet Treasure Island	Action Adventure Comedy Family Musical Romance	6.9	99 mins	en	\N
1997	The Edge	Action Adventure Drama Thriller	6.9	117 mins	en	R
2016	Paris Can Wait	Action Comedy Drama Romance	5.8	92 mins	en	PG
2019	Arctic Dogs	Action Adventure Animation Comedy Family	4.7	92 mins	en	PG
1998	Mercury Rising	Action Crime Drama Thriller	6.1	111 mins	en	R
1992	Glengarry Glen Ross	Action Crime Drama Mystery	7.7	100 mins	en	R
1989	Great Balls of Fire!	Action Biography Drama Music	6.2	108 mins	en	\N
2015	Concussion	Action Biography Drama Sport	7.1	123 mins	en	PG-13
2008	My Best Friend's Girl	Action Comedy Romance	5.8	101 mins	en	R
1998	The Avengers	Action Adventure Sci-Fi Thriller	3.8	89 mins	en	PG-13
1997	Amistad	Action Biography Drama History	7.3	155 mins	en	R
1997	Insomnia	Action Crime Mystery Thriller	7.2	96 mins	no	\N
2000	Timecode	Action Drama Romance	6.1	97 mins	en	R
2005	Neverwas	Drama Fantasy Mystery	6.5	103 mins	en	PG-13
2020	Chick Fight	Action Comedy Drama Sport	4.7	97 mins	en	R
2001	Scary Movie 2	Action Comedy Horror	5.3	83 mins	en	R
2012	Rock of Ages	Action Comedy Drama Musical Romance	5.9	123 mins	en	PG-13
2002	No Good Deed	Action Crime Drama Music Thriller	5.4	97 mins	en	R
2001	Pearl Harbor	Action Drama History Romance War	6.2	183 mins	en	PG-13
2008	Mamma Mia!	Action Comedy Family Musical Romance	6.5	108 mins	en	PG-13
2001	Final Fantasy: The Spirits Within	Action Adventure Animation Fantasy Romance Sci-Fi	6.4	106 mins	en	PG-13
2003	Dogville	Action Crime Drama	8	178 mins	en	R
1975	The Rocky Horror Picture Show	Action Comedy Horror Musical	7.4	100 mins	en	\N
2015	Andron	Action Sci-Fi	2.7	100 mins	en	R
1994	The Shadow	Action Adventure Crime Fantasy Mystery Thriller	6	108 mins	en	PG-13
2017	The Boss Baby	Action Adventure Animation Comedy Family Fantasy	6.3	97 mins	en	PG
1993	Loaded Weapon 1	Action Comedy Crime	6.2	84 mins	en	PG-13
1990	The Hunt for Red October	Action Adventure Thriller	7.6	135 mins	en	\N
1996	Heaven's Prisoners	Action Drama Mystery Thriller	5.8	132 mins	en	R
1993	The Three Musketeers	Action Adventure Comedy Family Romance	6.3	105 mins	en	PG
2006	Running with Scissors	Action Comedy Drama	6.1	116 mins	en	R
2001	Cats & Dogs	Action Adventure Comedy Family Fantasy	5.1	87 mins	en	PG
1990	Miami Blues	Action Comedy Crime Drama Thriller	6.4	97 mins	en	\N
2019	Drunk Parents	Comedy	4	97 mins	en	R
2002	Ritual	Action Horror	4.8	99 mins	en	R
1998	Ronin	Action Adventure Crime Thriller	7.2	122 mins	en	R
2015	Avengers: Age of Ultron	Action Adventure Sci-Fi	7.3	141 mins	en	PG-13
2014	No Good Deed	Action Adventure Crime Drama Horror Thriller	5.6	84 mins	en	PG-13
1982	Annie	Action Comedy Drama Family Musical	6.6	126 mins	en	\N
2000	Thomas and the Magic Railroad	Action Adventure Comedy Drama Family Fantasy	4.1	85 mins	en	\N
2005	Elizabethtown	Action Comedy Drama Romance	6.3	123 mins	en	PG-13
1992	Home Alone 2: Lost in New York	Action Adventure Comedy Crime Family	6.8	120 mins	en	PG
1982	The Simple-Minded Murderer	Action Drama	7.6	108 mins	sv	\N
1983	The Ploughman's Lunch	Action Drama	6.2	107 mins	en	\N
2004	Along Came Polly	Action Comedy Romance	6	90 mins	en	PG-13
2014	The Hobbit: The Battle of the Five Armies	Action Adventure Fantasy	7.4	144 mins	en	\N
2016	Blind	Action Drama Romance	5.7	98 mins	en	R
2013	Blue Jasmine	Action Comedy Drama Romance	7.3	98 mins	en	PG-13
1988	She's Having a Baby	Action Comedy Drama Romance	5.9	106 mins	en	\N
2007	Stardust	Action Adventure Family Fantasy Romance	7.6	127 mins	en	PG-13
2018	The Man Who Killed Don Quixote	Action Adventure Comedy Drama Fantasy	6.3	132 mins	en	\N
2002	The Adventures of Pluto Nash	Action Comedy Sci-Fi	3.8	95 mins	en	PG-13
2009	My Sister's Keeper	Action Drama Family	7.3	109 mins	en	PG-13
2016	The Promise	Action Adventure Drama History War	6	133 mins	en	PG-13
2015	Mr. Holmes	Action Drama Mystery	6.8	104 mins	en	PG
1981	Priest of Love	Biography Drama Romance	6.2	125 mins	en	\N
2016	Rules Don't Apply	Action Comedy Drama Romance	5.7	127 mins	en	PG-13
2004	The Aviator	Action Biography Drama History	7.5	170 mins	en	PG-13
1999	Outside Providence	Action Comedy Drama Romance	6.4	96 mins	en	R
2011	The Girl with the Dragon Tattoo	Action Crime Drama Mystery Thriller	7.8	158 mins	en	R
1995	Restoration	Action Biography Drama History Romance	6.6	117 mins	en	R
1988	Working Girl	Action Comedy Drama Romance	6.8	113 mins	en	\N
2013	Seduced and Abandoned	Action Documentary	6.6	98 mins	en	\N
2019	Motherless Brooklyn	Action Crime Drama Mystery	6.8	144 mins	en	R
2019	The Good Liar	Action Crime Drama Mystery Thriller	6.7	109 mins	en	R
1985	Legend	Action Adventure Fantasy Romance	6.3	94 mins	en	\N
2012	The Avengers	Action Adventure Sci-Fi Thriller	8	143 mins	en	PG-13
1998	Gods and Monsters	Action Biography Drama	7.4	105 mins	en	R
1997	McHale's Navy	Action Comedy	4.5	108 mins	en	PG
2011	Hick	Action Comedy Drama Action Comedy Drama	5.5	99 mins	en	R
1996	Breaking the Waves	Action Drama Romance	7.8	159 mins	da	R
2013	The Hobbit: The Desolation of Smaug	Action Adventure Fantasy	7.8	161 mins	en	PG-13
1988	Beetlejuice	Action Comedy Fantasy	7.5	92 mins	en	\N
2020	Beast Beast	Action Drama	6.2	85 mins	en	\N
2008	The Secret of Moonacre	Action Adventure Family Fantasy Romance	6	103 mins	en	PG
1997	Good Will Hunting	Action Drama Romance	8.3	126 mins	en	R
1991	Oscar	Action Comedy Crime	6.5	109 mins	en	\N
2000	Charlie's Angels	Action Adventure Comedy Crime Thriller	5.6	98 mins	en	PG-13
1990	Alice	Action Comedy Romance	6.6	106 mins	en	\N
2006	The Departed	Action Crime Drama Thriller	8.5	151 mins	en	R
1980	Times Square	Action Drama Music	6.6	111 mins	en	\N
2000	State and Main	Action Comedy Drama	6.7	105 mins	en	R
2001	The Royal Tenenbaums	Action Comedy Drama	7.6	110 mins	en	R
2006	X-Men: The Last Stand	Action Adventure Fantasy Sci-Fi Thriller	6.6	104 mins	en	PG-13
2014	X-Men: Days of Future Past	Action Adventure Fantasy Sci-Fi Thriller	7.9	132 mins	en	PG- 13
2003	The Cat in the Hat	Action Adventure Comedy Family Fantasy	4	82 mins	en	PG
1988	Talk Radio	Action Drama Thriller	7.2	110 mins	en	\N
2002	Insomnia	Action Drama Mystery Thriller	7.2	118 mins	en	R
2012	To Rome with Love	Action Comedy Music Romance	6.3	112 mins	en	R
2015	Cinderella	Action Adventure Drama Family Fantasy Romance	6.9	105 mins	en	PG
2011	Melancholia	Action Drama Fantasy Sci-Fi	7.1	135 mins	en	R
1985	Clue	Action Comedy Crime Mystery Thriller	7.2	94 mins	en	\N
2003	The Lord of the Rings: The Return of the King	Action Adventure Drama Fantasy	9	201 mins	en	PG-13
2022	Not Okay	Comedy Drama	6	100 mins	en	R
2022	The Gray Man	Action Thriller	6.5	122 mins	en	PG-13
2022	Navalny	Action Biography Documentary	7.4	98 mins	en	R
2021	Strip Down Rise Up	Action Documentary	5.2	112 mins	en	R
2022	Book of Love	Comedy Romance	5.5	106 mins	en	\N
2021	Secret Agent Dingledorf and His Trusty Dog Splat	Action Comedy Family	5.5	89 mins	en	PG
2021	Resident Evil: Welcome to Raccoon City	Action Horror Sci-Fi	5.2	107 mins	en	R
2021	The Enormity of Life	Action Comedy	6	102 mins	en	\N
2021	Wolfgang	Action Biography Documentary	6.9	78 mins	en	\N
2022	Paradise Highway	Thriller	5.4	115 mins	en	R
2021	Taking a Shot at Love	Action Comedy Drama Romance	7.1	84 mins	en	\N
2022	Ronny Chieng: Speakeasy	Action Comedy Documentary	6.3	60 mins	en	\N
2021	Untold: Breaking Point	Action Documentary Sport	7.6	68 mins	en	\N
2021	Skater Girl	Action Drama Family Sport	6.6	107 mins	en	PG
2021	President	Action Documentary	7.6	120 mins	en	\N
2022	Paulie Go!	Action Comedy	5.3	86 mins	en	\N
2022	Romance to the Rescue	Action Comedy Drama Family Romance	5.6	87 mins	en	\N
2021	Tollbooth	Action Comedy Crime Thriller	5.6	83 mins	en	\N
2021	Shoplifters of the World	Action Comedy Drama	5.3	90 mins	en	\N
2022	Floodlights	Action Drama	7.5	80 mins	en	\N
2022	A Violent Man	Crime	4.9	105 mins	en	\N
2021	The Tender Bar	Action Drama	6.7	106 mins	en	R
2021	The House of Flowers: The Movie	Action Comedy Drama	5.5	86 mins	es	\N
2021	Superior	Action Drama Thriller	5.3	99 mins	en	\N
2021	Shock Docs Amityville Horror House	Documentary	6.4	88 mins	en	\N
2022	Rip in Time	Action Comedy Drama Fantasy Romance	6.8	84 mins	en	\N
2021	Secret Santa	Action	5.6	90 mins	en	\N
2021	The Card Counter	Action Crime Drama Thriller	6.2	111 mins	en	R
2022	Jurassic World Dominion	Action Adventure Sci-Fi Thriller	5.7	147 mins	en	PG-13
2021	Otra forma de entender la vida	Action Documentary Sport	7.4	69 mins	es	\N
2021	The Eyes of Tammy Faye	Biography Drama History Romance	6.6	126 mins	en	PG-13
2022	A Splash of Love	Comedy Romance	6	84 mins	en	\N
2021	The Boss Baby: Family Business	Action Adventure Animation Comedy Family Fantasy	5.8	107 mins	en	PG
2021	The Trick	Action Thriller	5.8	89 mins	en	\N
2021	The Unwonted Sasquatch - Director's Cut	Action Documentary Mystery Sci-Fi	5.9	64 mins	en	\N
2022	After Jackie	Action Documentary	7.2	87 mins	en	\N
2022	Tosh	Documentary	7.7	79 mins	en	\N
2021	The Wimbledon Kidnapping	Action Crime Documentary	5.9	120 mins	en	\N
2022	Hello Bookstore	Documentary	8	86 mins	en	\N
2021	Summer of Soul (...Or When the Revolution Could Not Be Televised)	Documentary Music	8	118 mins	en	PG-13
2022	Not Just a Girl	Action Biography Documentary Music	7	88 mins	en	\N
2022	The Monkey King: The Legend Begins	Action Fantasy	5.7	90 mins	en	\N
2022	My Grown-Up Christmas List	Comedy Romance	6.5	84 mins	en	\N
2022	Christina P.: Mom Genes	Action Comedy Documentary	5.9	62 mins	en	\N
2022	Thirteen Lives	Action Adventure Biography Drama Thriller	7.8	147 mins	en	PG-13
2021	River	Documentary	7.2	75 mins	en	\N
2022	Harry Potter 20th Anniversary: Return to Hogwarts	Action Documentary Family	8	102 mins	en	\N
2021	Two Yellow Lines	Action Drama	6.9	96 mins	en	\N
2021	The House of Snails	Adventure Horror Thriller	4.9	104 mins	es	\N
2022	Jessie and the Elf Boy	Action Family	6.5	83 mins	en	\N
2022	Emergency	Action Comedy Drama Thriller	6.1	105 mins	en	R
2022	Octopus Pot	Action Drama	5	87 mins	en	\N
2022	White Hot: The Rise & Fall of Abercrombie & Fitch	Action Documentary	5.7	88 mins	en	\N
2021	The Story of My Wife	Action Drama Romance	6.2	169 mins	en	\N
2021	Terry Venables: A Man Can Dream	Action Documentary	7.2	97 mins	en	\N
2022	Block Party	Action Comedy	5.9	90 mins	en	\N
2021	The Wonderful: Stories from the Space Station	Action Documentary	6.2	127 mins	en	\N
2022	Turning Red	Action Adventure Animation Comedy Family Fantasy	7	100 mins	en	PG
2021	Spring	Action Drama Romance	5.4	87 mins	en	\N
2022	The Sixth Secret	Action Comedy Horror Mystery	5.6	90 mins	en	\N
2021	South Park: Post Covid - The Return of Covid	Action Animation Comedy	7.5	62 mins	en	\N
2021	Symphoria	Drama Romance Thriller	7	100 mins	en	\N
2021	The Most Beautiful Boy in the World	Biography Documentary History	6.8	93 mins	en	\N
2021	The Matrix Resurrections	Action Sci-Fi	5.7	148 mins	en	R
2021	The Fallout	Drama	7	96 mins	en	R
2021	The Lost Sons	Action Documentary	7.3	98 mins	en	\N
2021	Robbo: The Bryan Robson Story	Action Documentary	7.5	103 mins	en	\N
2021	Reno 911!: The Hunt for QAnon	Action Comedy Crime	5.6	85 mins	en	\N
2022	Trevor: The Musical	Action Musical	5.4	113 mins	en	\N
2021	Operation Mincemeat	Action Drama War	6.6	128 mins	en	PG-13
2021	You Keep the Kids	Action Comedy	6	90 mins	es	\N
2021	Vacation Friends	Adventure Comedy	6.3	103 mins	en	R
2022	Good Luck to You Leo Grande	Action Comedy Drama	7.2	97 mins	en	R
2022	Gerry Anderson: A Life Uncharted	Action Documentary	7.4	88 mins	en	\N
2021	Paper & Glue	Documentary	8.4	94 mins	en	\N
2021	People Just Do Nothing: Big in Japan	Action Comedy Music	6.8	97 mins	en	R
2022	Girl in the Picture	Action Crime Documentary Mystery	7.2	101 mins	en	\N
2022	Jerry and Marge Go Large	Action Biography Comedy Drama	6.9	96 mins	en	PG-13
2022	Jeff Foxworthy: The Good Old Days	Biography Comedy Documentary	6.1	60 mins	en	\N
2022	Kimi	Action Crime Drama Thriller	6.3	89 mins	en	R
2021	Queenpins	Comedy Crime	6.3	110 mins	en	R
2021	Payback	Action Drama Thriller	5.9	91 mins	en	\N
2021	True Things	Action Drama	5.8	102 mins	en	\N
2022	X	Action Horror Mystery Thriller	6.6	105 mins	en	R
2022	City of Vultures 3	Action Thriller	5.5	83 mins	en	\N
2021	V.C. Andrews' Landry Family V.C. Andrews' Pearl in the Mist	Action Drama	6.5	87 mins	en	\N
2022	God's Waiting Room	Action Drama	5.8	95 mins	en	\N
2022	Catwoman: Hunted	Action Animation Crime Sci-Fi	5.5	78 mins	en	PG-13
2021	The Jump	Action Documentary Family Sport	8.4	80 mins	es	\N
2022	The Batman	Action Crime Drama Mystery	7.9	176 mins	en	PG-13
2021	Spin	Action Comedy Family Music Romance	6	93 mins	en	\N
2021	The Mauritanian	Action Biography Drama Thriller	7.4	129 mins	en	R
2022	Bear Witness	Action Documentary	6.9	83 mins	en	\N
2022	The Mystery of Her	Action Drama	5.8	108 mins	en	\N
2022	The Sound of Scars	Action Documentary	7.7	90 mins	en	\N
2021	Pretenders	Action Comedy	5.5	87 mins	en	\N
2022	Untold: The Rise and Fall of AND1	Documentary History Sport	6.8	68 mins	en	\N
2022	Ricardo Quevedo: Tomorrow Will Be Worse	Comedy	5.2	60 mins	es	\N
2022	American Experience Plague at the Golden Gate	Biography Documentary History	7.5	115 mins	en	\N
2022	The Mystery of Marilyn Monroe: The Unheard Tapes	Action Documentary	6.2	101 mins	en	\N
2021	Salt-N-Pepa	Action Drama Music	6	127 mins	en	\N
2022	No Woman No Try	Action Documentary	6.1	63 mins	en	\N
2022	River Road	Action Drama Thriller	6.9	88 mins	en	\N
2021	The Super Bob Einstein Movie	Biography Comedy Documentary	7.3	75 mins	en	\N
2021	WWE: Royal Rumble	Action Sport	6.9	230 mins	en	\N
2021	Space Titans: Musk Bezos Branson	Action Documentary	5.4	120 mins	en	\N
2021	tick tick... BOOM!	Action Biography Drama Musical	7.5	120 mins	en	PG-13
2022	Secret Headquarters	Action Adventure Comedy Family Sci-Fi	4.9	104 mins	en	PG
2021	Saints & Sinners Judgment Day	Action Drama	6.4	88 mins	en	\N
2021	Saving Paradise	Action Drama Romance	6	102 mins	en	\N
2022	Joel Kim Booster: Psychosexual	Action Comedy Documentary	5.6	67 mins	en	\N
2021	The Green Knight	Action Adventure Drama Fantasy	6.6	130 mins	en	R
2022	Katrina Babies	Documentary	7.2	79 mins	en	\N
2021	Scooby-Doo! The Sword and the Scoob	Action Adventure Animation Comedy Family Fantasy Mystery	6.1	76 mins	en	\N
2021	The Woman in the Window	Action Crime Drama Mystery Thriller	5.7	100 mins	en	R
2022	The 49th Annual Daytime Emmy Awards	Action News Reality-TV	8.2	94 mins	en	\N
2021	Why Did You Kill Me?	Action Crime Documentary	5.6	83 mins	en	\N
2022	The Sea Beast	Action Adventure Animation Comedy Family Fantasy	7.1	115 mins	en	\N
2022	The Journey Ahead	Adventure Drama Romance	6.8	102 mins	en	\N
2021	Strange Friends	Action Drama Mystery	5.8	97 mins	en	\N
2021	Raunch and Roll	Action Drama Music	6.9	107 mins	en	\N
2021	Welcome Matt	Action Comedy Drama	5	92 mins	en	\N
2021	Superhost	Action Horror Thriller	5.5	84 mins	en	\N
2022	Love Classified	Action Comedy Family Romance	6.1	90 mins	en	\N
2022	The Valet	Action Comedy Romance	6.7	124 mins	en	PG-13
2021	Our Dream Wedding	Action Drama Romance	5.7	87 mins	en	\N
2022	Paul Virzi: Nocturnal Admissions	Action Comedy	7	65 mins	en	\N
2021	Sister Swap: A Hometown Holiday	Action Comedy Romance	6.3	83 mins	en	\N
2021	The Loud House Movie	Action Adventure Animation Comedy Family Musical	6.1	83 mins	en	\N
2022	Wifelike	Sci-Fi Thriller	4.9	105 mins	en	R
2022	Rooney	Documentary Sport	6.8	103 mins	en	\N
2021	The Day Sports Stood Still	Action Documentary Sport	5.8	84 mins	en	\N
2022	Press Play	Action Music Romance Sci-Fi	5.8	85 mins	en	PG-13
2021	The Sailor	Documentary	7.4	78 mins	en	\N
2022	Finding Carlos	Action Drama Family Music	4.9	85 mins	en	\N
2022	The Princess	Action Drama Fantasy Thriller	5.5	94 mins	en	R
2022	County Line: All In	Action Crime Mystery	4.9	86 mins	en	\N
2021	Untold: Deal with the Devil	Action Crime Documentary Sport	7.3	77 mins	en	\N
2022	The Second Age of Aquarius	Action Comedy Sci-Fi	5.7	81 mins	en	\N
2022	Hustle	Action Comedy Drama Sport	7.3	117 mins	en	R
2021	Stallone: Frank That Is	Action Biography Documentary	6.4	73 mins	en	\N
2022	Me Time	Comedy	5	101 mins	en	R
2021	Rumba Love	Action Drama Musical Romance	6.8	103 mins	en	\N
2022	Christmas in Toyland	Comedy Romance	6.5	85 mins	en	\N
2021	Seven Deadly Sins: Lust	Action Drama Mystery Romance	5.4	87 mins	en	\N
2021	Together Together	Action Comedy Drama	6.4	90 mins	en	R
2022	A Genie's Tail	Action Comedy Family	5.3	89 mins	en	\N
2022	The Reunion	Action Drama	4.9	85 mins	en	\N
2021	The Conjuring: The Devil Made Me Do It	Action Horror Mystery Thriller	6.3	112 mins	en	R
2022	Line Sisters	Adventure Comedy Drama Horror Thriller	5.4	86 mins	en	\N
2021	The Justice of Bunny King	Action Drama	6.6	101 mins	en	\N
2022	Love in the Limelight	Comedy Romance	6.5	84 mins	en	\N
2022	A Tail of Love	Action Family Romance	6.5	87 mins	en	\N
2022	13: The Musical	Comedy Drama Family Musical	5.1	91 mins	en	PG
2022	Halftime	Action Biography Documentary Music	6.5	95 mins	en	\N
2021	Woodlands Dark and Days Bewitched: A History of Folk Horror	Action Documentary	7.7	194 mins	en	\N
2021	Reefa	Action Drama	5.4	96 mins	en	\N
2021	You Me & the Christmas Trees	Action Romance	6.3	84 mins	en	\N
2022	Hello Goodbye and Everything in Between	Comedy Drama Romance	4.9	82 mins	en	\N
2021	Our Lady of San Juan Four Centuries of Miracles	Action Drama History	6.2	122 mins	es	\N
2021	Rise and Shine Benedict Stone	Action Drama	6.8	84 mins	en	\N
2022	Boon	Action Crime Drama Mystery Thriller	5	95 mins	en	\N
2021	The Alpines	Drama Horror Mystery Thriller	5	93 mins	en	\N
2021	The Forgiven	Action Drama	5.8	117 mins	en	R
2021	The Rise of the Anti-Vaxx Movement	Action Documentary	5.8	68 mins	en	\N
2021	The Housewives of the North Pole	Action Comedy Family Music	5.5	84 mins	en	\N
2022	Last Exit: Space	Action Documentary	5.7	80 mins	en	\N
2021	Repeat	Action Drama Mystery Sci-Fi Thriller	4.9	95 mins	en	\N
2021	Operation Varsity Blues	Action Crime Documentary Drama	6.9	100 mins	en	R
2021	The One and Only Dick Gregory	Action Documentary	7.9	113 mins	en	\N
2021	Spider-Man: No Way Home	Action Adventure Fantasy Sci-Fi	8.3	148 mins	en	PG-13
2022	Frank and Penelope	Thriller	5.3	112 mins	en	R
2021	UnPerfect Christmas Wish	Action Romance	5.8	90 mins	en	\N
2021	The Swim	Action Adventure Documentary	6.2	92 mins	en	\N
2022	The Inside Outtakes	Action Comedy Drama Musical	8.1	63 mins	en	\N
2022	Windfall	Action Crime Drama Thriller	5.7	92 mins	en	R
2021	The River Runner	Documentary	6.9	86 mins	en	\N
2021	The Dig	Action Biography Drama History	7.1	112 mins	en	PG-13
2022	Clowning	Action Crime Romance	5.3	96 mins	en	\N
2021	Sometime Other Than Now	Action Drama Romance	5.8	89 mins	en	\N
2021	Soccer Mom Madam	Action Drama	5.4	88 mins	en	\N
2021	The Dog Who Wouldn't Be Quiet	Action Drama	6.3	73 mins	es	\N
2021	Wrath of Man	Action Crime Thriller	7.1	119 mins	en	R
2022	Snoop Dogg's F*Cn Around Comedy Special	Action Comedy Documentary	5.2	67 mins	en	\N
2021	Saying Yes to Christmas	Action Drama Romance	5.6	90 mins	en	\N
2021	South Beach Love	Action Comedy Drama Romance	6	83 mins	en	\N
2022	Hunting Souls	Action Horror	5	97 mins	en	\N
2022	The Tinder Swindler	Action Crime Documentary	7.1	114 mins	en	\N
2022	The Photographer: Murder in Pinamar	Action Crime Documentary	6.7	106 mins	es	\N
2022	Spin Me Round	Comedy	5.1	104 mins	en	\N
2022	Malicious Mind Games	Action Thriller	4.9	83 mins	en	\N
2022	Three Months	Action Comedy Drama	6.7	104 mins	en	\N
2022	Z-O-M-B-I-E-S 3	Family Musical Romance	5.3	88 mins	en	\N
2021	Pleasure	Drama	6.3	109 mins	en	\N
2022	I Challenger	Action Comedy	5.8	98 mins	en	\N
2022	Game Set Love	Comedy Drama Family Romance	5.8	84 mins	en	\N
2021	Tinsel - The Lost Movie About Hollywood	Action Comedy Documentary	7.4	79 mins	en	\N
2021	The Horrific Evil Monsters	Action Comedy Horror	5.2	70 mins	en	\N
2022	The Twin	Action Drama Horror Mystery Thriller	5.2	109 mins	en	\N
2022	Taylor Tomlinson: Look at You	Comedy Documentary	7.3	60 mins	en	\N
2022	North of the 10	Action Comedy Drama	6.1	154 mins	en	\N
2022	Lightyear	Action Adventure Animation Drama Family Sci-Fi	5.8	100 mins	en	PG
2022	Along for the Ride	Action Drama Romance	6.1	106 mins	en	\N
2022	Freedom Uncut	Documentary Music	8.3	87 mins	en	\N
2021	Snakehead	Action Crime Drama Thriller	5.1	97 mins	en	\N
2022	No Exit	Action Drama Horror Mystery Thriller	6.1	95 mins	en	R
2022	David A. Arnold: It Ain't for the Weak	Comedy Documentary	6.5	78 mins	en	\N
2022	American Werewolves	Action Horror	5.1	80 mins	en	\N
2022	Look at Me: XXXTentacion	Action Documentary Music	7.3	108 mins	en	\N
2022	Prizefighter: The Life of Jem Belcher	Biography	5.4	107 mins	en	\N
2022	Toy Aficiao	Action Comedy Romance	6.2	114 mins	es	\N
2021	Silent Hours	Action Crime Thriller	5.2	156 mins	en	\N
2021	The Murder of Gabby Petito: Truth Lies and Social Media	Action Biography Crime Documentary Mystery	6.2	85 mins	en	\N
2022	Swap Me Baby	Action Comedy	5.4	82 mins	en	\N
2022	Love Fashion Repeat	Romance	6.7	90 mins	en	\N
2022	The Perfect Pairing	Action Family Romance	6.5	82 mins	en	\N
2022	Green Lantern: Beware My Power	Adventure Animation Sci-Fi	6	88 mins	en	PG-13
2021	Torn	Documentary	7.5	92 mins	en	\N
2021	Tina	Action Biography Documentary History Music	7.9	118 mins	en	\N
2022	The Wall: Climb for Gold	Action Documentary	7.1	96 mins	en	\N
2022	Funny Pages	Comedy	6.4	86 mins	en	R
2021	The Deep House	Action Drama Horror Mystery Thriller	5.4	85 mins	en	\N
2021	Resort to Love	Action Comedy Romance	5.7	101 mins	en	\N
2021	Playing with Sharks: The Valerie Taylor Story	Action Adventure Documentary	7.5	95 mins	en	\N
2022	Untold: The Girlfriend Who Didn't Exist	Biography Documentary Sport	7.2	124 mins	en	\N
2022	Morbius	Action Adventure Horror Sci-Fi Thriller	5.2	104 mins	en	PG-13
2021	Rattle-Can	Action Crime Drama Mystery Thriller	5.6	90 mins	en	\N
2021	Trust	Action Drama Romance Thriller	5.3	94 mins	en	\N
2022	Through My Window	Comedy Drama Romance	5.4	116 mins	es	\N
2022	Salesmen	Action Comedy	6.1	81 mins	en	\N
2021	Small City	Action Thriller	4.9	74 mins	en	\N
2021	Wild Game	Action Drama	5.2	90 mins	en	\N
2021	The Passenger	Action Horror Sci-Fi	5.2	90 mins	es	\N
2021	Queen Bees	Action Comedy Drama Romance	6.2	100 mins	en	PG-13
2022	Elizabeth: The Unseen Queen	Action Documentary	7.3	76 mins	en	\N
2021	Redemption in Cherry Springs	Action Mystery	6.1	84 mins	en	\N
2021	Rumble	Action Adventure Animation Comedy Family Fantasy Sport	5.9	95 mins	en	PG
2021	The Humans	Action Drama	6.2	108 mins	en	R
2021	The Lost Leonardo	Documentary Mystery	7.5	96 mins	en	PG-13
2021	The United States vs. Billie Holiday	Action Biography Drama Music	6.2	126 mins	en	R
2021	Rise of the Footsoldier: Origins	Action Crime Drama	5.8	107 mins	en	\N
2022	Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse	Action Adventure Animation Comedy Family Fantasy Sci-Fi	5.3	79 mins	en	\N
2022	The House	Action Animation Comedy Drama Mystery Thriller	6.8	97 mins	en	\N
2021	WeWork: Or the Making and Breaking of a $47 Billion Unicorn	Action Documentary	6.6	104 mins	en	\N
2022	The Finellis Movie	Action Comedy	7.2	90 mins	en	\N
2022	A Tear in the Sky	Action Documentary	4.9	88 mins	en	\N
2021	Xtreme	Action Adventure Crime Drama Fantasy Thriller	5.8	111 mins	es	\N
2022	Save the Cinema	Action Drama	6.5	109 mins	en	\N
2022	The Loyola Project	Action Documentary	7.7	88 mins	en	\N
2021	What?	Action Comedy	6.2	100 mins	en	\N
2021	The Perfect Family	Action Comedy	5.3	110 mins	es	\N
2021	Resurgence	Action Documentary Sport	7.1	110 mins	en	\N
2021	Potato Dreams of America	Action Biography Comedy Drama	6.2	97 mins	en	\N
2021	The Pebble and the Boy	Action Drama	5.8	101 mins	en	\N
2021	The King's Man	Action Adventure Thriller	6.3	131 mins	en	R
2021	The Black Phone	Horror Thriller	7	103 mins	en	R
2021	The Healing Garden	Action Family	5.8	95 mins	en	\N
2022	The 64th Annual Grammy Awards	Action Music	5	153 mins	en	\N
2021	This Is Not a Comedy	Action Comedy Drama	4.9	105 mins	es	\N
2021	The Conservation Game	Documentary	7	107 mins	en	PG-13
2021	Two for the Win	Action Drama Romance	6.4	85 mins	en	\N
2022	Dancing on Glass	Action Drama Thriller	5.5	137 mins	es	\N
2022	The Issue with Elvis	Action Drama	5.1	88 mins	en	\N
2022	Chernobyl: The Lost Tapes	Action Documentary History	8	96 mins	en	\N
2022	Gabby Giffords Won't Back Down	Documentary	6.2	98 mins	en	PG-13
2021	The Sacred Spirit	Comedy Drama Sci-Fi Thriller	6.6	97 mins	es	\N
2022	Icahn: The Restless Billionaire	Action Biography Documentary	7	101 mins	en	\N
2022	Lancaster	Documentary	7.6	110 mins	en	\N
2021	Workhorse Queen	Action Documentary	7.1	88 mins	en	\N
2021	Things Don't Stay Fixed	Action Drama	4.9	100 mins	en	\N
2021	Romeo Santos: King of Bachata	Action Documentary Music	7.3	92 mins	en	\N
2022	Loving Highsmith	Documentary	7.1	83 mins	en	\N
2022	Gone in the Night	Mystery Thriller	4.9	90 mins	en	R
2021	The Many Saints of Newark	Action Crime Drama	6.3	120 mins	en	R
2022	Los Tigres Del Norte: Stories to Tell	Action Documentary	8.1	105 mins	es	\N
2021	Super Hot	Action Comedy Horror	5.2	81 mins	en	\N
2021	Torn from Her Arms	Action Drama	6.2	86 mins	en	\N
2022	Persuasion	Action Drama Romance	5.7	107 mins	en	PG
2021	Too Soon: Comedy After 9/11	Action Documentary	6.8	90 mins	en	\N
2021	Wild Indian	Action Crime Drama Mystery Thriller	5.8	90 mins	en	\N
2022	Cave Rescue	Drama	5.4	99 mins	en	PG-13
2021	The Gig Is Up	Action Documentary	6.8	88 mins	en	\N
2022	The Wedding Veil Legacy	Action Comedy Romance	7.3	84 mins	en	\N
2021	The Survivor	Action Biography Drama Sport	6.7	129 mins	en	R
2022	The Janes	Action Documentary	7.2	101 mins	en	\N
2021	The Girl Who Believes in Miracles	Action Drama Family	5.4	100 mins	en	PG
2022	Top Gun: Maverick	Action Drama	8.5	130 mins	en	PG-13
2022	Pride Jewel	Action Thriller	6.5	96 mins	en	\N
2021	The Man Putin Couldn't Kill	Action Documentary	7.1	86 mins	en	\N
2021	Spirit Untamed	Adventure Animation Comedy Family Western	5.5	88 mins	en	PG
2021	The Show	Action Documentary	7	93 mins	en	\N
2022	Losing Addison	Action Thriller	5.3	90 mins	en	\N
2021	The One You're With	Action Comedy Romance	5.4	88 mins	en	\N
2021	The Housewife and the Hustler	Action Crime Documentary Drama	6.3	68 mins	en	\N
2022	Dakota	Action Family	6	96 mins	en	\N
2021	The Marksman	Action Adventure Drama Thriller	5.6	108 mins	en	PG-13
2021	The Slow Hustle	Action Crime Documentary	6.5	88 mins	en	\N
2021	Set!	Documentary	7.3	105 mins	en	\N
2022	Dating the Delaneys	Drama Romance	7	84 mins	en	\N
2021	Stars Fell on Alabama	Action Comedy Drama Romance	5.5	103 mins	en	PG-13
2021	Violet	Action Drama	5.9	92 mins	en	R
2021	Where the Land Meets the Sky	Action Drama Family	4.9	85 mins	en	\N
2022	Low Life	Crime Drama Thriller	5.4	105 mins	en	\N
2022	Road Trip Romance	Action Comedy Drama Family Romance	4.9	83 mins	en	\N
2021	The Valentine Competition	Action Romance	5.5	92 mins	en	\N
2022	Love on Fire	Action Comedy Romance	5.6	83 mins	en	\N
2022	This Is Joan Collins	Action Biography Documentary	7.6	96 mins	en	\N
2021	Wyrmwood: Apocalypse	Action Horror	5.4	88 mins	en	\N
2021	Poser	Drama Music	6	87 mins	en	\N
2021	The Price of Freedom	Action Documentary History	5.2	94 mins	en	\N
2022	Gold	Action Thriller	5.4	97 mins	en	R
2022	Last Seen Alive	Action Drama Mystery Thriller	5.6	95 mins	en	R
2022	Gabriel's Rapture: Part Two	Action Romance	5.7	102 mins	en	\N
2021	Trigger Point	Action Mystery Thriller	4.9	85 mins	en	\N
2022	Memory	Action Crime Thriller	5.6	114 mins	en	R
2021	Shadow Game	Documentary	7.6	90 mins	en	\N
2022	Biffy Clyro: Cultural Sons of Scotland	Documentary Music	7.7	66 mins	en	\N
2021	Silent Night	Action Comedy Crime Drama Horror Mystery	5.7	92 mins	en	\N
2022	Luck	Adventure Animation Comedy Family Fantasy	6.3	105 mins	en	\N
2021	Revealed: The Hunt for Bin Laden	Action Documentary	6.5	85 mins	en	\N
2022	Uncharted	Action Adventure	6.4	116 mins	en	PG-13
2021	Secrets in the Wilderness	Thriller	5.3	86 mins	en	\N
2022	Kick Like Tayla	Action Documentary	5.7	60 mins	en	\N
2022	A Perfect Pairing	Action Comedy Romance	6.1	101 mins	en	\N
2021	The Girl Who Got Away	Action Horror Thriller	5.4	116 mins	en	\N
2021	Two Cents from a Pariah	Action Drama Thriller	5.6	82 mins	en	\N
2022	Ranveer vs. Wild with Bear Grylls	Documentary	6.6	70 mins	en	\N
2022	Bill Maher: #Adulting	Action Comedy	6	67 mins	en	\N
2021	Wolf	Drama Mystery Thriller	5.7	99 mins	en	R
2021	Things Heard & Seen	Action Drama Horror Mystery Thriller	5.3	121 mins	en	\N
2021	Tom and Jerry	Action Adventure Animation Comedy Family Fantasy	5.2	101 mins	en	PG
2021	This Little Love of Mine	Action Romance	5.3	91 mins	en	\N
2022	Paws of Fury: The Legend of Hank	Action Animation Comedy Family	5.6	98 mins	en	PG
2021	The Little Things	Action Crime Drama Mystery Thriller	6.3	128 mins	en	R
2021	The White Tiger	Action Crime Drama	7.1	125 mins	en	R
2022	Burn	Action Crime Thriller	5.1	99 mins	en	\N
2022	Fresh	Action Comedy Horror Thriller	6.7	114 mins	en	R
2022	Return to Space	Action Documentary	7.3	128 mins	en	\N
2021	Untold: Crimes and Penalties	Crime Documentary Sport	7.4	85 mins	en	\N
2022	Moriah's Lighthouse	Action Comedy Romance	6.4	84 mins	en	\N
2021	Ron's Gone Wrong	Action Adventure Animation Comedy Family Sci-Fi	7	107 mins	en	PG
2022	Randy Rhoads: Reflections of a Guitar Icon	Documentary	8	85 mins	en	\N
2022	Torn Hearts	Action Drama Horror Music Thriller	5.1	97 mins	en	\N
2022	Jon Stewart: The Kennedy Center Mark Twain Prize for American Humor	Action Comedy	7.4	120 mins	en	\N
2022	Trophy Wife	Action Crime Drama	6.9	87 mins	en	\N
2022	The Contractor	Action Thriller	5.8	103 mins	en	R
2021	Snake Eyes	Action Adventure Crime Fantasy Sci-Fi Thriller	5.3	121 mins	en	PG-13
2022	Ricky Gervais: SuperNature	Action Comedy	7.6	64 mins	en	\N
2022	The Weekend Away	Action Crime Drama Mystery Thriller	5.6	89 mins	en	\N
2022	Ambulance	Action Crime Drama Thriller	6.1	136 mins	en	R
2021	Under the Volcano	Documentary	7.6	96 mins	en	\N
2021	Untold: Malice at the Palace	Action Crime Documentary Sport	7.5	68 mins	en	\N
2022	Holy Heist	Action Documentary	6.1	85 mins	en	\N
2022	Leave No Trace	Action Documentary	6.9	108 mins	en	\N
2021	The New York Times Presents Framing Britney Spears	Action Documentary	6.8	74 mins	en	\N
2022	The Good Neighbor	Action Thriller	6.1	97 mins	en	R
2021	Zoey's Extraordinary Christmas	Action Comedy Drama Fantasy Musical	7.3	99 mins	en	\N
2021	The Man Who Fell from the Sky	Action Documentary	5.4	60 mins	en	\N
2021	The Pedal Movie	Action Documentary	7.2	142 mins	en	\N
2022	Sheryl	Action Documentary Music	6.8	94 mins	en	\N
2021	Saving Sloane	Action Drama Family	5.2	89 mins	en	PG
2021	Outside the Wire	Action Adventure Fantasy Sci-Fi	5.4	114 mins	en	R
2022	Caught in His Web	Action Drama Thriller	5.5	84 mins	en	\N
2021	Twisted Little Lies	Action Crime Drama Thriller	5.3	84 mins	en	\N
2021	The Children of God	Action Documentary	5.3	69 mins	es	\N
2022	Junkyard Dogs	Comedy Family	5.3	89 mins	en	\N
2021	Reopening Night	Action Documentary	6.1	85 mins	en	\N
2022	The Mulligan	Drama	6.2	125 mins	en	\N
2021	Sunday Mornings	Action Comedy Drama Musical	6.3	72 mins	en	\N
2022	I Want You Back	Action Comedy Romance	6.6	116 mins	en	R
2021	Snowkissed	Action Comedy Romance	6.1	84 mins	en	\N
2021	Street Gang: How We Got to Sesame Street	Action Documentary Family History	8.1	107 mins	en	PG
2021	The Exchange	Comedy Drama	5.6	93 mins	en	\N
2021	The Laws of the Border	Action Adventure Crime Thriller	6.9	127 mins	es	\N
2022	Tony Hawk: Until the Wheels Fall Off	Action Biography Documentary Sport	8	135 mins	en	\N
2022	And Just Like That... The Documentary	Action Documentary	6.6	70 mins	en	\N
2022	Bank Robbers: The Last Great Heist	Crime Documentary	7.1	109 mins	es	\N
2021	Venom: Let There Be Carnage	Action Adventure Sci-Fi Thriller	5.9	97 mins	en	PG-13
2022	Dual	Action Sci-Fi Thriller	5.8	94 mins	en	R
2021	The Hating Game	Action Comedy Romance	6.2	102 mins	en	R
2022	Shattered	Thriller	5	92 mins	en	R
2021	Paul Dood's Deadly Lunch Break	Action Comedy Thriller	5.4	95 mins	en	\N
2021	Voyagers	Action Adventure Sci-Fi Thriller	5.4	108 mins	en	PG-13
2021	Rebel Hearts	Action Documentary	6.8	99 mins	en	\N
2022	Lost Angel	Action Thriller	5	90 mins	en	\N
2022	Catherine Cohen: The Twist...? She's Gorgeous	Action Comedy Documentary	5	61 mins	en	\N
2021	The Loneliest Whale: The Search for 52	Action Adventure Documentary	6.5	96 mins	en	PG
2021	Sonsational	Action Documentary Sport	5.8	88 mins	en	\N
2022	Doctor Strange in the Multiverse of Madness	Action Adventure Fantasy Horror Sci-Fi	7	126 mins	en	PG-13
2021	Werewolves Within	Comedy Horror Mystery	6	97 mins	en	R
2022	Murder at Yellowstone City	Action Western	5	127 mins	en	\N
2021	The Replacement	Action Adventure Crime Thriller	6.3	117 mins	es	\N
2021	This Is Port Adelaide	Action Documentary History Sport	6.9	90 mins	en	\N
2021	Overrun	Action Comedy Crime Drama	5.4	105 mins	en	\N
2021	The Way of Miracles	Documentary	7.3	82 mins	en	\N
2021	Truth to Power	Action Documentary	6.8	79 mins	en	\N
2021	Son	Action Horror Thriller	5.6	98 mins	en	\N
2022	More Than Robots	Documentary	6	89 mins	en	\N
2021	The LCD Soundsystem Holiday Special	Action Comedy	6.6	65 mins	en	\N
2021	The Demented	Action Horror Mystery Thriller	5	96 mins	en	\N
2021	The Maltese Holiday	Action Romance	5	83 mins	en	\N
2021	Procession	Action Documentary	7.2	118 mins	en	R
2021	The Village Detective: a song cycle	Documentary	6.8	81 mins	en	\N
2021	The Protégé	Action Crime Thriller	6.1	109 mins	en	R
2021	Single All the Way	Comedy Drama Romance	6.1	99 mins	en	\N
2021	You Are Not My Mother	Action Drama Horror	5.8	93 mins	en	\N
2022	Day Shift	Action Comedy Fantasy Horror Thriller	6.1	113 mins	en	R
2021	The Rescue	Action Documentary Mystery Thriller	8.3	107 mins	en	PG
2022	Terry Bradshaw: Going Deep	Action Biography Documentary Sport	6.3	74 mins	en	\N
2022	Running with the Devil: The Wild World of John McAfee	Crime Documentary	6	105 mins	en	\N
2021	Reminiscence	Mystery Romance Sci-Fi Thriller	5.8	116 mins	en	PG-13
2022	Stay on Board: The Leo Baker Story	Documentary Sport	6.2	72 mins	en	\N
2022	Spring Awakening: Those You've Known	Action Documentary Musical	8	83 mins	en	\N
2022	Against the Ice	Action Adventure Drama History	6.5	102 mins	en	\N
2021	The Last Letter from Your Lover	Action Drama Romance	6.6	110 mins	en	\N
2021	You Had Me at Aloha	Action Drama Romance	6.4	85 mins	en	\N
2022	The Ledge	Action Thriller	5.1	86 mins	en	\N
2022	Family Squares	Action Comedy Drama	5.5	95 mins	en	R
2022	Tom Daley: Illegal to Be Me	Documentary	5.5	60 mins	en	\N
2021	The Right One	Action Comedy Romance	5.2	95 mins	en	R
2022	Benjamin Franklin	Action Biography Documentary History	8.3	225 mins	en	\N
2021	Playing Cupid	Action Comedy Romance	6.4	84 mins	en	\N
2022	Deep in the Heart: A Texas Wildlife Story	Action Documentary	7.6	101 mins	en	\N
2022	Gatlopp	Action Comedy Horror	5.9	80 mins	en	\N
2021	River's End: California's Latest Water War	Action Documentary	7.9	81 mins	en	\N
2021	Range Roads	Drama	6.3	86 mins	en	\N
2021	Pati Patni and Joe	Comedy Drama	6.3	106 mins	en	\N
2021	Volcanic UFO Mysteries	Action Documentary	6.1	62 mins	en	\N
2021	Passing	Action Drama	6.6	98 mins	en	PG-13
2021	The Ghost and the Tout Too	Comedy Fantasy	6.3	111 mins	en	\N
2021	Try Harder!	Action Documentary	7.2	85 mins	en	\N
2021	Rise Again: Tulsa and the Red Summer	Action Documentary	6.6	90 mins	en	\N
2021	We're All Going to the World's Fair	Drama Horror	5.3	86 mins	en	\N
2021	The Smartest Kids in the World	Documentary	7.6	105 mins	en	\N
2022	The Adam Project	Action Adventure Comedy Sci-Fi	6.7	106 mins	en	PG-13
2022	Sex Appeal	Action Comedy Drama Romance	5.3	90 mins	en	\N
2022	Assailant	Action Thriller	5.4	97 mins	en	R
2021	Yes Day	Action Comedy Family	5.7	86 mins	en	PG
2021	V.C. Andrews' Landry Family V.C. Andrews' Hidden Jewel	Drama	5.6	86 mins	en	\N
2021	The Last Mountain	Action Documentary	7.2	107 mins	en	R
2022	I Love My Dad	Action Comedy	6.3	96 mins	en	R
2022	The Unbearable Weight of Massive Talent	Action Comedy Crime Thriller	7	107 mins	en	R
2022	The Royal	Biography Sport	6.8	98 mins	en	\N
2022	All the Old Knives	Action Mystery Thriller	6.1	101 mins	en	R
2021	This Is the Night	Action Comedy Drama	5.4	107 mins	en	R
2022	The Day the Music Died/American Pie	Documentary	7.1	94 mins	en	\N
2022	Infinite Storm	Action Drama Thriller	5.1	97 mins	en	R
2021	Road to Damascus	Action Crime Drama Mystery Thriller	5.4	98 mins	en	\N
2022	Aloha with Love	Action Comedy Drama Romance	5.9	90 mins	en	\N
2021	Tina and Lori	Drama	5.2	115 mins	en	\N
2022	A Second Chance at Love	Action Romance	6.1	84 mins	en	\N
2021	Rushed	Crime Drama Horror Mystery Thriller	6	101 mins	en	\N
2021	Trippin' with the Kandasamys	Action Comedy Romance	5	93 mins	en	\N
2021	Peter Rabbit 2: The Runaway	Action Adventure Animation Comedy Crime Drama Family Fantasy	6.2	93 mins	en	PG
2022	Crimes of the Future	Action Drama Horror Sci-Fi	5.9	107 mins	en	R
2021	The Forever Purge	Action Horror Thriller	5.4	103 mins	en	R
2021	Who is Bill Rebane?	Action Documentary	6.8	115 mins	en	\N
2021	West Side Story	Crime Drama Musical Romance	7.2	156 mins	en	PG-13
2021	V/H/S/94	Action Horror Mystery Thriller	5.4	103 mins	en	\N
2021	The Clue to Love	Action Romance	5.4	84 mins	en	\N
2021	The Found Footage Phenomenon	Action Documentary	6.5	101 mins	en	\N
2021	The Power of the Dog	Action Drama Romance Western	6.8	126 mins	en	R
2022	The Disruptors	Action Documentary	8.3	98 mins	en	\N
2021	The Art of Incarceration	Action Documentary	7.8	81 mins	en	\N
2021	Veneciafrenia	Action Adventure Horror Thriller	5.1	100 mins	es	R
2022	American Carnage	Action Comedy Horror Mystery	4.9	101 mins	en	R
2021	Wildhood	Action Drama Romance	6.8	108 mins	en	\N
2022	Redeeming Love	Action Drama History Romance	6.6	134 mins	en	PG-13
2021	Swan Song	Action Drama Romance Sci-Fi	6.8	112 mins	en	\N
2022	The 75th Annual Tony Awards	Action Reality-TV	5.6	138 mins	en	\N
2021	Ultrasound	Drama Mystery Sci-Fi	5.7	103 mins	en	\N
2021	Our Towns	Action Documentary	6.4	97 mins	en	\N
2021	The Storms of Jeremy Thomas	Action Documentary	6.4	94 mins	en	\N
2022	Better Nate Than Ever	Action Comedy Drama Family Musical	6.2	94 mins	en	PG
2021	Sing 2	Action Adventure Animation Comedy Family Musical	7.4	110 mins	en	PG
2022	Terror on the Prairie	Action Drama Thriller Western	5.7	107 mins	en	\N
2021	Roadrunner: A Film About Anthony Bourdain	Action Documentary	7.7	119 mins	en	R
2021	The Nine Kittens of Christmas	Action Comedy Drama Family Fantasy Romance	6.6	84 mins	en	\N
2022	The Hall: Honoring the Greats of Stand-Up	Action Comedy	6.3	70 mins	en	\N
2022	The Bad Guys	Action Adventure Animation Comedy Crime Family	6.8	100 mins	en	PG
2021	Sweet Pecan Summer	Action Comedy Drama Family Romance	6.2	84 mins	en	\N
2022	Love Accidentally	Action Comedy Romance	5.3	85 mins	en	\N
2021	Redemption for Easter	Action Drama	5.6	124 mins	en	\N
2022	Shane	Action Documentary Sport	7.1	95 mins	en	\N
2021	She Will	Action Comedy Drama Horror Thriller	5.4	95 mins	en	\N
2022	Chip 'n Dale: Rescue Rangers	Action Adventure Animation Comedy Family Mystery	7	97 mins	en	PG
2021	The Green Sea	Action Drama Mystery	5.2	104 mins	en	\N
2021	The Spine of Night	Action Adventure Animation Fantasy Horror Sci-Fi	6.3	93 mins	en	\N
2021	Soy Rada: Serendipity	Action Comedy	6.1	68 mins	es	\N
2021	The Virtuoso	Action Crime Thriller	4.9	110 mins	en	R
2021	The Witcher: Nightmare of the Wolf	Action Adventure Animation Drama Fantasy Mystery	7.2	83 mins	en	\N
2021	Rock Dog 2: Rock Around the Park	Action Adventure Animation Comedy Family Music	4.9	87 mins	en	\N
2022	The Hyperions	Action Comedy Sci-Fi	5.4	90 mins	en	R
2021	This Is Francis X. Bushman	Action Documentary	7.4	60 mins	en	\N
2022	Spiderhead	Action Crime Drama Sci-Fi Thriller	5.4	106 mins	en	R
2021	The Race to Save the World	Action Documentary	5.2	102 mins	en	\N
2022	Hollywood Stargirl	Action Comedy Drama Family Musical Romance	5.7	105 mins	en	PG
2022	Putting Love to the Test	Action Romance	5.6	91 mins	en	\N
2022	Picabo	Action Documentary	7	91 mins	en	\N
2021	Pick A Side	Action Drama	5.4	102 mins	en	\N
2021	The French Dispatch	Action Comedy Drama Romance	7.2	107 mins	en	R
2022	Father Stu	Action Biography Drama	6.4	124 mins	en	R
2022	Downfall: The Case Against Boeing	Action Documentary	7.4	89 mins	en	PG-13
2021	Who Killed the KLF?	Action Documentary Music	7	88 mins	en	\N
2021	Second Chances	Action Drama Family	5.5	79 mins	en	\N
2022	Heart of the Matter	Action Drama Romance	6.6	85 mins	en	\N
2021	One of Ours	Action Documentary	5.8	88 mins	en	\N
2021	Show Me the Father	Documentary Drama	6.6	91 mins	en	PG
2022	Sweet as Pie	Comedy Romance	6.4	94 mins	en	\N
2022	Rogue Agent	Action Drama Thriller	6.3	115 mins	en	\N
2021	The War Below	Drama History War	6.5	96 mins	en	\N
2022	2000 Mules	Action Documentary	6.2	89 mins	en	\N
2022	Women of the White Buffalo	Action Documentary	6.1	86 mins	en	\N
2021	Skateshop	Action Comedy Sport	6.7	62 mins	en	\N
2022	The Railway Children Return	Adventure Drama Family	5.5	95 mins	en	PG
2022	DC League of Super-Pets	Action Adventure Animation Comedy Crime Family Fantasy Sci-Fi	7.6	105 mins	en	PG
2021	Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog	Action Adventure Animation Comedy Family Fantasy Horror Mystery	6.3	78 mins	en	\N
2021	The Vault	Action Adventure Thriller	6.4	118 mins	en	R
2021	The Unspeakable	Documentary	6.7	90 mins	en	\N
2022	Mother's Love	Action Comedy	5.8	110 mins	es	\N
2021	The Cabin	Action Drama	5.5	75 mins	en	\N
2021	Steve McQueen: The Lost Movie	Action Biography Documentary Sport	6.6	87 mins	en	\N
2021	PAW Patrol: The Movie	Action Adventure Animation Comedy Family Fantasy	6.1	86 mins	en	\N
2021	Woodstock 99: Peace Love and Rage	Action Documentary Music	7.1	110 mins	en	\N
2021	Sisters on Track	Action Documentary Sport	5.8	96 mins	en	PG
2021	The Wisdom of Trauma	Action Documentary	8	87 mins	en	\N
2022	Harmony from the Heart	Action Comedy Romance	6.4	87 mins	en	\N
2021	The Colour Room	Action Drama	6.7	108 mins	en	\N
2022	A Royal Runaway Romance	Action Comedy Romance	6.8	84 mins	en	\N
2021	The Laureate	Action Drama Thriller	5.1	104 mins	en	R
2022	The Northman	Action Adventure Drama Fantasy History Thriller	7.2	137 mins	en	R
2022	The Wrath of God	Action Drama Thriller	5.7	97 mins	es	\N
2021	Triumph	Action Drama	5.7	100 mins	en	PG-13
2021	The Manor	Action Horror Mystery	5.3	81 mins	en	\N
2022	As They Made Us	Action Drama	5.7	100 mins	en	R
2022	Gabriel's Rapture: Part Three	Romance	6.1	120 mins	en	\N
2022	Silverton Siege	Action Crime Drama Thriller	6.2	100 mins	en	\N
2022	The In Between	Drama Romance Sci-Fi	5.9	115 mins	en	PG-13
2021	The Final Code	Action Drama	5.7	123 mins	en	\N
2022	Step Into... The Movies	Action Music	7.5	60 mins	en	\N
2022	Family Camp	Action Comedy Family	4.9	111 mins	en	PG
2021	The Addams Family 2	Action Adventure Animation Comedy Family Fantasy Horror	5.4	93 mins	en	PG
2021	The Ogglies	Action Adventure Animation Family	5.2	85 mins	en	PG
2022	Cha Cha Real Smooth	Action Comedy Drama	7.3	107 mins	en	R
2022	Deep Water	Drama Mystery Thriller	5.4	115 mins	en	R
2021	Wicked	Action Drama Fantasy Romance	5.3	114 mins	en	\N
2021	Robin Roberts Presents: Mahalia	Action Biography Drama	7.4	102 mins	en	\N
2021	Ted K	Action Biography Crime Drama	6	120 mins	en	R
2021	Sweet Girl	Action Drama Thriller	5.5	110 mins	en	R
2021	The Kids	Documentary	7.2	88 mins	en	\N
2022	Norm Macdonald: Nothing Special	Action Comedy	7.6	86 mins	en	\N
2021	This Is Not a War Story	Action Drama War	6	112 mins	en	\N
2022	Unicorn Town	Documentary Drama Sport	9.1	83 mins	en	\N
2021	Till Death	Action Horror Thriller	5.8	88 mins	en	R
2021	Private Network: Who Killed Manuel Buendía?	Action Crime Documentary Mystery	6.8	100 mins	es	\N
2021	To Which We Belong	Documentary	7	90 mins	en	\N
2021	Warming up to you	Action Comedy Romance	6.2	84 mins	en	\N
2021	Quickening	Action Drama	5.4	90 mins	en	\N
2022	Nude Tuesday	Action Comedy Drama Romance	5.7	90 mins	en	\N
2022	Jane Fonda & Lily Tomlin: Ladies Night Live	Action Comedy Documentary	5.5	60 mins	en	\N
2022	Death on the Nile	Crime Drama Mystery	6.3	127 mins	en	PG-13
2021	Willy's Wonderland	Action Comedy Horror Thriller	5.5	88 mins	en	\N
2022	Lotawana	Action Adventure Drama	5.3	97 mins	en	\N
2021	Rhapsody of Love	Action Comedy Romance	5.7	86 mins	en	\N
2022	Samaritan	Action Drama Fantasy Sci-Fi	5.8	102 mins	en	PG-13
2022	Elizabeth: A Portrait in Part(s)	Documentary	5.7	89 mins	en	\N
2022	My Fake Boyfriend	Action Comedy Romance	4.9	100 mins	en	R
2021	Storm Lake	Action Documentary	7	85 mins	en	\N
2021	Puff: Wonders of the Reef	Documentary Family	7.2	62 mins	en	\N
2021	Red Snow	Action Comedy Horror Thriller	4.9	80 mins	en	\N
2022	Beavis and Butt-Head Do the Universe	Action Animation Comedy	7	87 mins	en	\N
2022	Master	Action Drama Horror Mystery Thriller	5	98 mins	en	R
2022	Scream	Horror Mystery Thriller	6.3	114 mins	en	R
2021	Seance	Action Horror Mystery	5.2	92 mins	en	R
2021	Shock Docs The Exorcism of Roland Doe	Action Documentary	6.5	84 mins	en	\N
2022	The Sky Is Everywhere	Drama Music Romance	5.6	103 mins	en	PG-13
2021	See You Next Christmas	Comedy Romance	5.2	99 mins	en	\N
2021	Pirates	Action Comedy	5.5	80 mins	en	\N
2021	The Mitchells vs the Machines	Action Adventure Animation Comedy Family Sci-Fi	7.6	114 mins	en	\N
2022	Look Both Ways	Comedy Drama Romance	6.3	110 mins	en	\N
2021	The Jenkins Family Christmas	Action Comedy Drama	5.3	94 mins	en	\N
2022	The 28th Annual Screen Actors Guild Awards	Action	6	98 mins	en	\N
2021	Prince of Muck	Action Documentary	7	77 mins	en	\N
2022	Groundswell	Comedy Family Romance	6.5	84 mins	en	\N
2021	The Holiday Fix Up	Action Drama Romance	6.4	84 mins	en	\N
2021	The Sparks Brothers	Action Biography Comedy Documentary History Music	7.8	140 mins	en	R
2022	Rescued by Ruby	Action Biography Drama Family	7.1	90 mins	en	\N
2022	Mr. Malcolm's List	Comedy Drama Romance	5.4	117 mins	en	PG
2022	Fittest on Earth: Next Gen	Action Documentary	5.9	118 mins	en	\N
2022	Never Alone	Action Drama Musical	6	84 mins	en	\N
2021	Tony Parker: The Final Shot	Action Biography Documentary Sport	6.8	98 mins	en	\N
2021	Sundown	Drama	6.5	82 mins	en	R
2022	The Cellar	Action Horror	5.2	94 mins	en	\N
2021	Zack Snyder's Justice League	Action Adventure Fantasy Sci-Fi	8	242 mins	en	R
2021	Schumacher	Action Biography Documentary Sport	7.4	112 mins	en	\N
2022	Vengeance	Comedy Mystery Thriller	6.8	107 mins	en	R
2022	Burden	Action Drama Romance	5.9	95 mins	en	\N
2021	Palmer	Action Drama	7.2	110 mins	en	R
2021	The Phantom	Action Documentary	6.5	82 mins	en	\N
2021	The Fabulous Filipino Brothers	Action Comedy Romance	6	99 mins	en	\N
2021	Own the Room	Action Documentary	6.5	91 mins	en	\N
2022	The Lost	Action Drama Mystery	4.9	120 mins	en	\N
2022	Radford Returns	Documentary Reality-TV	5.6	120 mins	en	\N
2021	The Voyeurs	Action Drama Mystery Thriller	6	116 mins	en	R
2022	Planning on Forever	Romance	6.1	90 mins	en	\N
2022	Carole King & James Taylor: Just Call Out My Name	Action Documentary Music	8.1	90 mins	en	\N
2021	The Killer in My Backyard	Thriller	5.2	85 mins	en	\N
2021	Subjects of Desire	Action Documentary	7.8	103 mins	en	\N
2021	The Souvenir: Part II	Action Drama Romance	7.3	107 mins	en	R
2022	It Snows All the Time	Drama	5.8	90 mins	en	\N
2021	The Last Bus	Action Drama	6.5	86 mins	en	\N
2021	The Santa Stakeout	Action Comedy Crime Drama Romance	6.4	84 mins	en	\N
2021	Trevor Noah Presents Josh Johnson: # (Hashtag)	Action Comedy	5.2	60 mins	en	\N
2021	Trees of Peace	Action Drama	6.4	97 mins	en	\N
2021	This is Gwar	Documentary Music	7.8	112 mins	en	\N
2021	The Unholy	Action Drama Horror Mystery	5.1	99 mins	en	PG-13
2021	South of Heaven	Action Crime Drama Horror Mystery Thriller	5.7	120 mins	en	\N
2021	The Tomorrow War	Action Adventure Drama Sci-Fi Thriller	6.5	138 mins	en	PG-13
2022	Killer Ambition	Thriller	4.9	85 mins	en	\N
2021	Wash My Soul in the River's Flow	Biography Documentary History Music	8.7	90 mins	en	\N
2021	Our Father	Action Comedy Drama	5.1	96 mins	en	\N
2021	Vivo	Action Adventure Animation Comedy Drama Family Musical	6.6	95 mins	en	PG
2022	Lucy and Desi	Action Biography Comedy Documentary Drama History	7.8	103 mins	en	PG
2022	The Adventures of Peanut and Pig	Action Animation	4.9	75 mins	en	\N
2021	The Eternal Moment	Action Documentary	7.8	90 mins	es	\N
2021	Royal Blossom	Action Romance	5.5	85 mins	en	\N
2021	Sweetheart	Action Comedy Drama Romance	6.4	103 mins	en	\N
2022	Flux Gourmet	Action Comedy Drama Horror	5.8	111 mins	en	\N
2022	Endangered	Action Documentary	6.2	90 mins	en	\N
2022	Fireheart	Adventure Animation Comedy Family	6.1	92 mins	en	\N
2022	Untrapped: The Story of Lil Baby	Documentary	5.7	93 mins	en	R
2021	The Velvet Underground	Action Documentary Music	7.4	121 mins	en	R
2021	The 27-Hour Day	Action Comedy Romance	6.7	85 mins	en	\N
2021	The Razz Guy	Comedy Fantasy	6.3	99 mins	en	\N
2022	Studio 666	Action Comedy Horror Music	5.7	106 mins	en	R
2022	King Tweety	Action Adventure Animation Comedy Family Fantasy Mystery	5.4	81 mins	en	\N
2022	The Royal Treatment	Comedy Family Romance	5.2	96 mins	en	\N
2022	Polar Bear	Action Documentary	6.9	84 mins	en	PG
2021	Slapface	Action Horror Thriller	5.1	85 mins	en	\N
2022	Love You Anyway	Action Drama	5.3	80 mins	en	\N
2022	Erzulie	Action Adventure Fantasy	6	86 mins	en	\N
2022	Run & Gun	Action Thriller	5.2	96 mins	en	R
2021	Open by Christmas	Action Romance	6.9	84 mins	en	\N
2021	Vengeance Is Mine	Action Thriller	6	79 mins	en	\N
2022	Belle Vie	Action Documentary	8	77 mins	en	\N
2022	Single Black Female	Drama Horror Thriller	5.2	88 mins	en	\N
2021	Red Rocket	Comedy Drama	7.2	130 mins	en	R
2022	Moonshot	Action Comedy Romance Sci-Fi	5.5	104 mins	en	PG-13
2022	Borrego	Thriller	5.5	102 mins	en	R
2021	The Cleveland Kidnappings	Action Crime Documentary	6.8	91 mins	en	\N
2021	Seal Team	Action Animation Comedy Family Fantasy Sci-Fi	5.5	101 mins	en	\N
2022	Her Private Hell	Action Drama	4.9	84 mins	en	\N
2022	VALLDAURA: A Quarantine Cabin	Action Documentary	6.7	79 mins	es	\N
2021	The Score	Action Crime Music Romance Thriller	4.9	100 mins	en	\N
2021	The Rise and Fall of LuLaRoe	Action Documentary	6.6	104 mins	en	\N
2021	The Unforgivable	Action Crime Drama	7.1	112 mins	en	\N
2021	Oprah with Meghan and Harry: A CBS Primetime Special	Action Talk-Show	5.2	86 mins	en	\N
2022	Jazz Fest: A New Orleans Story	Documentary Music	7.3	95 mins	en	PG-13
2021	The Most Reluctant Convert	Action Biography Drama History	6.9	73 mins	en	\N
2021	Scenes from an Empty Church	Action Comedy Drama	6	98 mins	en	\N
2022	Just One Kiss	Action Comedy Drama Romance	6.8	85 mins	en	\N
2021	The Wheel	Drama	5.9	83 mins	en	\N
2021	One and the Same	Action Mystery	6	110 mins	en	\N
2022	Fantastic Beasts: The Secrets of Dumbledore	Action Adventure Family Fantasy	6.2	142 mins	en	PG-13
2022	David Spade: Nothing Personal	Action Comedy Documentary	5.8	66 mins	en	\N
2021	The Tragedy of Macbeth	Drama History Mystery Thriller War	7.1	105 mins	en	\N
2022	Elvis	Biography Drama Music	7.6	159 mins	en	PG-13
2022	This Much I Know to Be True	Documentary Music	7.8	105 mins	en	\N
2022	Mrs Harris Goes to Paris	Comedy Drama	7.1	115 mins	en	\N
2022	Presence of Love	Action Family Romance	7	84 mins	en	\N
2022	Men	Action Drama Fantasy Horror Sci-Fi	6.1	100 mins	en	R
2021	Sugar Plum Twist	Action Romance	6.2	84 mins	en	\N
2021	The Devil's Ring	Action Drama	5.9	95 mins	en	\N
2021	The Map of Tiny Perfect Things	Action Comedy Fantasy Romance	6.8	98 mins	en	PG-13
2021	Phil Wang: Philly Philly Wang Wang	Comedy	6	63 mins	en	\N
2022	Alone Together	Drama Romance	5.1	93 mins	en	R
2021	Pray Away	Action Documentary	6.5	101 mins	en	PG-13
2022	Jackass 4.5	Action Comedy Documentary	6.5	90 mins	en	\N
2021	The Enchanted Christmas Cake	Action Romance	5.3	90 mins	en	\N
2021	Romeo & Juliet	Action Drama Romance	7.4	95 mins	en	\N
2022	Home Team	Action Comedy Sport	6	95 mins	en	PG
2021	Pig	Action Drama Mystery Thriller	6.9	92 mins	en	R
2022	2022 Oscar Nominated Short Films: Animation	Action Animation	6	96 mins	en	\N
2021	Taking the Reins	Comedy Drama Romance	6.3	84 mins	en	\N
2021	The 2021 Rock & Roll Hall of Fame Induction Ceremony	Action Music	6.8	188 mins	en	\N
2022	El Rezador	Action Thriller	5.3	96 mins	es	\N
2022	Joyride	Drama	5.9	94 mins	en	\N
2022	Sonic the Hedgehog 2	Action Adventure Animation Comedy Family Fantasy Sci-Fi	6.5	122 mins	en	PG
2022	Fire Island	Action Comedy Romance	6.7	105 mins	en	\N
2021	Rebel Dykes	Action Documentary	7	89 mins	en	\N
2022	Dog	Comedy Drama	6.5	101 mins	en	PG-13
2022	Exposure 36	Action Sci-Fi Thriller	5.1	92 mins	en	\N
2021	Stowaway	Action Adventure Drama Sci-Fi Thriller	5.6	116 mins	en	\N
2021	Time for Them to Come Home for Christmas	Romance	7.2	84 mins	en	\N
2022	The Winter Palace	Action Romance	6.2	85 mins	en	\N
2022	Apollo 10½: A Space Age Childhood	Action Adventure Animation Drama Family Sci-Fi	7.3	97 mins	en	PG-13
2021	There Is No I in Threesome	Action Documentary Drama	5.4	88 mins	en	\N
2021	Psych 3: This Is Gus	Action Comedy Crime Mystery	7.6	96 mins	en	\N
2021	The Judge of Harbor County	Action Drama Western	5.4	72 mins	en	\N
2022	Honor Society	Action Comedy	6.5	98 mins	en	\N
2021	What Josiah Saw	Horror Thriller	6.1	120 mins	en	\N
2022	What Is a Woman?	Action Documentary	8.6	95 mins	en	\N
2022	I Do (But I Don't)	Comedy Drama Romance	5.5	97 mins	en	\N
2022	Vanished: Searching for My Sister	Thriller	5.5	85 mins	en	\N
2021	The Secret Lives of College Freshmen	Thriller	5.8	90 mins	en	\N
2021	Seaspiracy	Action Adventure Documentary	8.1	89 mins	en	\N
2022	Welcome to Mama's	Romance	5.9	84 mins	en	\N
2021	The Land of Owls	Action Drama Romance	5.7	79 mins	en	\N
2022	Moon Manor	Action Biography Comedy Drama	5.3	103 mins	en	\N
2022	Brian and Charles	Comedy	6.7	90 mins	en	PG
2021	One Shot	Action Thriller	5.6	96 mins	en	\N
2021	Project Pay Day	Family	6	91 mins	en	\N
2022	Elizabeth Windsor	Action Documentary	6.5	90 mins	en	\N
2021	The Princess Switch 3	Action Comedy Drama Family Romance	5.5	106 mins	en	\N
2021	Respect	Biography Drama Music	6.5	145 mins	en	PG-13
2022	Shut In	Action Drama Horror Thriller	5.9	89 mins	en	\N
2022	11M: Terror in Madrid	Action Documentary	6.9	92 mins	es	\N
2021	The United Way	Action Documentary History Sport	7.2	90 mins	en	\N
2022	Tyson's Run	Action Drama	6.1	103 mins	en	PG
2022	Dying for Chocolate: A Curious Caterer Mystery	Action Crime Mystery	6.6	84 mins	en	\N
2021	Wish Dragon	Action Adventure Animation Comedy Family Fantasy Romance	7.2	98 mins	en	PG
2021	Walk With Me	Action Drama	5.4	112 mins	en	\N
2021	Ride the Eagle	Action Comedy Drama	6.3	88 mins	en	\N
2022	Moses Storm: Trash White	Action Comedy	7.3	60 mins	en	\N
2021	Truly Texas Mexican	Action Documentary	6.6	86 mins	en	\N
2021	Who We Are: A Chronicle of Racism in America	Action Documentary	6.5	117 mins	en	PG-13
2021	Stop and Go	Action Comedy Drama	5.9	80 mins	en	\N
2021	When Today Ends	Action Drama	6.1	97 mins	en	\N
2021	The Big Rant	Action Comedy Drama	7.2	84 mins	en	\N
2021	The First Wave	Action Documentary History	6.9	93 mins	en	R
2021	Shang-Chi and the Legend of the Ten Rings	Action Adventure Fantasy Sci-Fi	7.4	132 mins	en	PG-13
2022	Lie Hard	Action Comedy	5.4	89 mins	en	\N
2021	The Righteous	Action Drama Horror Mystery Thriller	5.7	97 mins	en	\N
2022	Prey	Action Adventure Drama Horror Sci-Fi Thriller	7.2	99 mins	en	R
2021	Strawberry Mansion	Action Adventure Comedy Drama Fantasy Romance Sci-Fi	6.4	91 mins	en	\N
2021	Secretly Santa	Romance	5.2	85 mins	en	\N
2021	The Beatles and India	Action Documentary Music	6.5	96 mins	en	\N
2021	Toying with the Holidays	Action Comedy Romance	6.3	86 mins	en	\N
2022	Nope	Horror Mystery Sci-Fi Thriller	7.1	130 mins	en	R
2021	The Guilty	Action Crime Drama Thriller	6.3	90 mins	en	R
2021	Rose West: Born Evil?	Biography Crime Documentary	6.2	69 mins	en	\N
2022	Super Turnt	Action Drama	5.2	104 mins	en	\N
2022	Olivia Rodrigo: driving home 2 u (a SOUR film)	Action Biography Documentary Music	7.1	76 mins	en	\N
2021	Silk Road	Action Crime Drama Thriller	5.9	112 mins	en	R
2021	Sweet Carolina	Drama Romance	6.8	84 mins	en	\N
2022	Tyler Perry's A Madea Homecoming	Action Comedy Drama Romance	5.6	105 mins	en	\N
2022	We Met in Virtual Reality	Action Documentary	5.8	91 mins	en	\N
2021	The Ice Road	Action Adventure Drama Thriller	5.6	109 mins	en	PG-13
2021	Sand Dollar Cove	Action Comedy Drama Romance	6.2	84 mins	en	\N
2022	Tankhouse	Action Comedy	5.4	94 mins	en	R
2022	Mo Gilligan: There's Mo to Life	Action Comedy	5.9	65 mins	en	\N
2022	Cristela Alonzo: Middle Classy	Action Comedy Documentary	6.7	60 mins	en	\N
2021	Sounds Like Love	Action Comedy Music Romance	5.4	110 mins	es	\N
2021	The Legend of the Underground	Action Documentary	6.5	86 mins	en	\N
2022	The Bob's Burgers Movie	Adventure Animation Comedy Musical	7	102 mins	en	PG-13
2021	The Last Thing Mary Saw	Action Drama Horror Thriller	5.2	89 mins	en	\N
2022	South Park: The 25th Anniversary Concert	Animation Comedy Music	7.9	99 mins	en	\N
2022	Chickenhare and the Hamster of Darkness	Adventure Animation Comedy Family	6.3	91 mins	en	\N
2022	Seize the Night	Action Drama Thriller	4.9	87 mins	en	\N
2022	Dinosaurs - The Final Day with David Attenborough	Action Documentary	7.4	90 mins	en	\N
2021	The Cleaner	Action Crime Drama Mystery Thriller	5.1	93 mins	en	\N
2021	The Influencer	Action Comedy Drama Thriller	5.7	90 mins	en	\N
2021	To Be Determined	Action Documentary	6.5	95 mins	en	\N
2022	Downton Abbey: A New Era	Action Drama Romance	7.5	124 mins	en	PG
2022	After Yang	Drama Sci-Fi	6.6	96 mins	en	PG
2022	Anything's Possible	Romance	5.1	96 mins	en	PG-13
2022	The Outfit	Action Crime Drama Mystery Thriller	7.1	105 mins	en	R
2021	Women Is Losers	Action Drama	5.5	84 mins	en	\N
2022	The Great American Tag Sale with Martha Stewart	Action	5.6	60 mins	en	\N
2021	Stillwater	Crime Drama Thriller	6.6	139 mins	en	R
2022	The Man from Toronto	Action Adventure Comedy Thriller	5.8	110 mins	en	PG-13
2022	Adeline	Drama	7	97 mins	en	\N
2022	Resurrection	Crime Drama Horror Mystery Thriller	5.9	103 mins	en	\N
2021	The Baker's Son	Action Comedy Fantasy Romance	6.2	87 mins	en	\N
2021	The Forever Prisoner	Action Crime Documentary	7.3	119 mins	en	\N
2021	The Beta Test	Action Comedy Horror Thriller	6.1	93 mins	en	\N
2021	Together	Comedy Drama Romance	6.2	92 mins	en	R
2021	SAS: Red Notice	Action Thriller	5.2	124 mins	en	R
2021	Where Is Anne Frank	Action Animation Drama Family History	6.4	99 mins	en	\N
2022	Purple Hearts	Drama Music Romance	6.7	122 mins	en	\N
2021	See for Me	Action Crime Drama Mystery Thriller	5.8	92 mins	en	\N
2021	Theo Von: Regular People	Action Comedy	5	61 mins	en	\N
2021	The Electrical Life of Louis Wain	Biography Drama History	6.8	111 mins	en	PG-13
2021	The Grandmother	Horror	5.9	100 mins	es	R
2021	The Daughter	Adventure Thriller	6.2	122 mins	es	\N
2021	Seduction & Snacks	Comedy Romance	5.9	98 mins	en	\N
2022	The Irish Connection	Action Adventure	6.2	93 mins	en	\N
2022	Surviving Paradise: A Family Tale	Action Documentary	7.5	78 mins	en	\N
2021	Zebra Girl	Action Comedy Mystery Thriller	5.2	79 mins	en	\N
2022	Harmony in Paradise	Romance	6.6	86 mins	en	\N
2022	Take the Night	Action Crime Drama Thriller	5.6	82 mins	en	PG-13
2022	The Figo Affair: The Transfer that Changed Football	Documentary Sport	7.2	105 mins	en	\N
2022	The 355	Action Thriller	5.4	122 mins	en	PG-13
2022	Father of the Bride	Action Comedy Drama Fantasy Romance	5.9	117 mins	en	PG-13
2021	Peace by Chocolate	Action Comedy Drama	6.7	96 mins	en	\N
2021	The Resonator: Miskatonic U	Action Fantasy Horror Sci-Fi	4.9	68 mins	en	\N
2021	Persona: The Dark Truth Behind Personality Tests	Action Documentary	5.5	85 mins	en	\N
2022	Gamestop: Rise of the Players	Action Documentary	5.8	94 mins	en	R
2021	Raya and the Last Dragon	Action Adventure Animation Comedy Drama Family Fantasy	7.3	107 mins	en	PG
2021	Rebellion	Action Documentary	6.7	82 mins	en	\N
2022	Watergate: High Crimes in the White House	Action Documentary	7	120 mins	en	\N
2022	Love Under the Lemon Tree	Action Comedy Romance	6.2	88 mins	en	\N
2021	The Chronicle Mysteries Helped to Death	Action Crime Drama Mystery	6.8	86 mins	en	\N
2021	The Wedding Trip	Action Comedy Romance	5.8	99 mins	en	\N
2021	The Harder They Fall	Action Drama Western	6.5	139 mins	en	R
2022	The King's Daughter	Action Adventure Family Fantasy Romance	5.1	90 mins	en	PG
2022	Virus-32	Action Horror	5.4	90 mins	es	\N
2021	Scarborough	Action Drama	7.1	136 mins	en	\N
2021	Songs for a Sloth	Action Comedy Drama Music	5.7	85 mins	en	\N
2022	The Modern Way	Action Drama	6.7	88 mins	en	\N
2021	Outside	Action Drama	5	85 mins	en	\N
2021	Searchers	Action Documentary	5.5	81 mins	en	\N
2021	Zone 414	Action Sci-Fi Thriller	4.9	98 mins	en	R
2021	The Starling	Comedy Drama	6.3	102 mins	en	PG-13
2021	The Middle Man	Action Comedy Drama	5.9	95 mins	en	\N
2022	Facing Nolan	Documentary	8	102 mins	en	\N
2021	Pharma Bro	Action Documentary	5	85 mins	en	\N
2021	Riverdance: The Animated Adventure	Adventure Animation Comedy Fantasy Musical	5.4	90 mins	en	\N
2021	The Real Charlie Chaplin	Action Documentary	7.3	114 mins	en	\N
2022	No Name and Dynamite Davenport	Action Western	5.3	91 mins	en	\N
2021	The Girl in the Window	Action Thriller	5	90 mins	en	\N
2022	Last Seen Alive	Action Drama Thriller	5.6	95 mins	en	R
2021	Roller Squad	Action Comedy	5.5	86 mins	en	\N
2021	Tulsa: The Fire and the Forgotten	Action Documentary History	6.3	85 mins	en	\N
2021	The Jesus Music	Documentary	7.3	109 mins	en	PG-13
2022	Resisting Roots	Drama Romance	5.5	91 mins	en	\N
2021	We Broke Up	Action Comedy Drama	5	80 mins	en	\N
2021	The Novice	Action Drama Sport Thriller	6.5	97 mins	en	R
2022	Bill Burr: Live at Red Rocks	Comedy Documentary	7.7	82 mins	en	\N
2022	Proyecto Emperador	Drama Thriller	5.8	106 mins	es	\N
2022	Glorious	Horror Thriller	5.5	79 mins	en	\N
2021	Senior Moment	Action Comedy Drama Romance	5.9	92 mins	en	\N
2021	The Christmas Contest	Action Drama Romance	5.8	83 mins	en	\N
2021	Parallel Mothers	Action Drama	7.1	123 mins	es	R
2021	Switched Before Birth	Action Drama Thriller	5.9	87 mins	en	\N
2021	The Bezonians	Action Crime Drama Thriller	6.1	98 mins	en	\N
2021	Simple as Water	Action Documentary	6.8	97 mins	en	\N
2022	How Did We Get Here?	Action Biography Documentary	7.1	90 mins	en	\N
2021	Past Shadows	Action Drama	6.4	85 mins	en	\N
2021	Real Talk	Action Drama	5.6	98 mins	en	\N
2022	Hidden Gems	Action Comedy Romance	6.5	85 mins	en	\N
2021	Poly Styrene: I Am a Cliché	Action Biography Documentary Music	7.1	96 mins	en	\N
2022	Curse of the Macbeths	Thriller	4.9	82 mins	en	\N
2021	Sir Alex Ferguson: Never Give In	Action Documentary	8.2	108 mins	en	PG-13
2021	Red Notice	Action Adventure Comedy Crime Thriller	6.3	118 mins	en	PG-13
2021	The Automat	Action Documentary	7.6	79 mins	en	\N
2021	Oslo	Action Drama History Thriller	6.6	118 mins	en	\N
2021	The Power	Action Drama Fantasy Horror Mystery Thriller	5.5	92 mins	en	\N
2021	Without Remorse	Action Adventure Thriller War	5.7	109 mins	en	R
2021	Wrong Turn	Action Horror Thriller	5.5	109 mins	en	R
2021	Prayers for the Stolen	Action Drama	7.3	110 mins	es	R
2021	Patrice O'Neal: Killing Is Easy	Action Comedy Documentary	7.8	91 mins	en	\N
2022	Civil: Ben Crump	Action Biography Documentary	5.4	101 mins	en	\N
2021	The Space Between	Action Comedy Drama	5.4	95 mins	en	R
2022	Feeling Butterflies	Comedy Drama Romance	6.4	83 mins	en	\N
2021	The Ultimate Playlist of Noise	Action Comedy Drama Music	6.6	99 mins	en	\N
2021	The Good Boss	Comedy Drama	7.2	116 mins	es	\N
2021	Searching for Cannibal Holocaust	Documentary	5.6	87 mins	en	\N
2021	Those Who Wish Me Dead	Action Crime Drama Thriller	6	100 mins	en	R
2022	Stroke of Luck	Action Comedy	4.9	81 mins	en	\N
2022	City of Vultures 2	Action Thriller	6.1	95 mins	en	\N
2021	The Seance	Horror	5	82 mins	en	\N
2022	Easter Sunday	Action Comedy	5.3	96 mins	en	\N
2022	Donkeyhead	Action Drama	6.1	106 mins	en	\N
2021	To Olivia	Action Biography Drama	6.3	99 mins	en	\N
2021	The Wedding Ring	Action Romance	5.3	85 mins	en	\N
2021	Shepherd	Action Horror Mystery	4.9	103 mins	en	R
2021	The Legend of Molly Johnson	Action Drama History Thriller Western	6.1	109 mins	en	\N
2022	Explorer	Documentary	8.1	140 mins	en	\N
2021	Shatner in Space	Action Documentary	6.9	60 mins	en	\N
2021	The Lost Daughter	Action Drama	6.7	121 mins	en	R
2022	Rise of the Teenage Mutant Ninja Turtles: The Movie	Action Adventure Animation Comedy Drama Family Fantasy Sci-Fi	5.8	82 mins	en	\N
2022	Life After You	Action Drama	7	90 mins	en	R
2022	Rise	Action Biography Drama Sport	7	113 mins	en	PG
2021	The Grand Duke of Corsica	Action Comedy Drama	4.9	93 mins	en	\N
2022	Aftershock	Documentary	5.8	86 mins	en	\N
2021	Taking the Fall	Action Drama	5.9	102 mins	en	\N
2021	Wired Shut	Action Horror Thriller	5.8	95 mins	en	\N
2022	Marry Me	Comedy Music Romance	6.1	112 mins	en	PG-13
2022	Wedding Season	Comedy Romance	6.3	98 mins	en	\N
2022	Here Out West	Drama	7.1	120 mins	en	\N
2022	Brut Force	Action Thriller	5.9	93 mins	en	\N
2021	Tango Shalom	Action Comedy Drama Family Music	5.9	115 mins	en	PG-13
2021	The Exorcism of God	Drama Horror	5.3	98 mins	en	R
2021	To Catch a Spy	Action Mystery Romance	6.2	90 mins	en	\N
2022	Everything Everywhere All at Once	Action Adventure Comedy Fantasy Sci-Fi	8.2	139 mins	en	R
2022	Dirty Daddy: The Bob Saget Tribute	Action Comedy	6.5	83 mins	en	\N
2021	The Wrong Valentine	Action Drama Thriller	4.9	86 mins	en	\N
2021	Prince Philip: The Man Behind the Throne	Action Documentary	5.2	87 mins	en	\N
2021	The Christmas Pitch	Action Comedy Romance	5.7	83 mins	en	\N
2021	The Matchmaker	Comedy Drama Family Romance	7.2	116 mins	en	\N
2021	The 43rd Annual Kennedy Center Honors	Action	6.4	91 mins	en	\N
2021	Twyla Moves	Action Biography Documentary History Music Musical	7.1	82 mins	en	\N
2022	Slash/Back	Action Adventure Sci-Fi	5.4	86 mins	en	\N
2021	The Good Father: The Martin MacNeill Story	Action Crime	5.9	87 mins	en	\N
2021	Samantha Rose	Drama	6.8	94 mins	en	\N
2022	Watcher	Action Drama Horror Thriller	6.3	91 mins	en	R
2022	Due Season	Action Drama	5.7	93 mins	en	\N
2022	Metal Lords	Action Comedy Drama Music	6.7	97 mins	en	R
2022	Centaur	Action Adventure Crime Thriller	5.3	89 mins	es	\N
2021	The Act of Reading	Action Documentary	6.2	87 mins	en	\N
2022	Minions: The Rise of Gru	Adventure Animation Comedy Crime Family Sci-Fi	6.6	87 mins	en	PG
2022	Senior Year	Action Comedy Drama	5.5	111 mins	en	\N
2021	Plan B	Action Comedy	6.7	107 mins	en	\N
2021	Spiral	Action Adventure Crime Drama Horror Mystery Thriller	5.2	93 mins	en	R
2022	GoldenEra	Action Documentary	6.9	99 mins	en	\N
2022	Jackass Shark Week 2.0	Comedy Documentary Reality-TV	5.5	60 mins	en	\N
2021	Spencer	Biography Drama	6.6	117 mins	en	R
2022	Our Father	Action Crime Documentary	6.6	97 mins	en	\N
2022	Don't Make Me Go	Action Drama	6.6	109 mins	en	R
2021	One Summer	Action Drama Mystery Romance	7	84 mins	en	\N
2021	The Hunt for Planet B	Action Documentary	6.5	93 mins	en	\N
2021	Road to Perth	Action Drama	5.2	82 mins	en	\N
2021	Right in Front of Me	Action Comedy Drama Romance	6.6	84 mins	en	\N
2021	¡A todo tren! Destino Asturias	Action Comedy	5.2	90 mins	es	\N
2022	Jackass Forever	Action Comedy Documentary	6.9	96 mins	en	R
2021	The Secret of Sinchanee	Action Horror	5.2	115 mins	en	\N
2022	Stand Out: An LGBTQ+ Celebration	Action Comedy Documentary	5.9	96 mins	en	\N
2022	Fourth of July	Comedy Drama	7.1	90 mins	en	\N
2021	Untold: Caitlyn Jenner	Action Documentary Sport	6.4	69 mins	en	\N
2021	What Drives Us	Action Documentary	7.3	88 mins	en	\N
2022	Machine Gun Kelly's Life in Pink	Action Documentary Music	6	101 mins	en	\N
2022	How to Please a Woman	Action Drama	6.1	107 mins	en	\N
2021	Walking with Herb	Action Comedy	5.2	110 mins	en	PG
2022	They Live in the Grey	Action Horror Thriller	5	123 mins	en	\N
2021	iGilbert	Action Drama	5.2	90 mins	en	\N
2021	Sold Out	Action Drama Music Romance	5.7	91 mins	en	\N
2022	Orphan: First Kill	Action Crime Drama Horror Mystery Thriller	6	99 mins	en	R
2022	In Search of Tomorrow	Documentary Sci-Fi	7.9	305 mins	en	\N
2022	Inside the Mind of a Cat	Documentary	7	67 mins	en	\N
2021	Take Me to Tarzana	Action Comedy	5.3	106 mins	en	\N
2021	The United States of Insanity	Biography Documentary Music	6.8	99 mins	en	\N
2021	One Winter Wedding	Action Drama Romance	6.1	84 mins	en	\N
2022	Home2Home	Action Adventure	7.4	111 mins	en	\N
2021	Open	Drama Romance Sport	5.9	71 mins	en	\N
2021	Strings	Action Horror	5.3	84 mins	en	\N
2022	Tom and Jerry: Cowboy Up!	Adventure Animation Comedy Family Western	5.1	71 mins	en	\N
2022	Diamond Hands: The Legend of WallStreetBets	Action Documentary	5.5	89 mins	en	\N
2021	Small Engine Repair	Action Comedy Drama Thriller	6.5	102 mins	en	R
2022	Ray Donovan: The Movie	Action Drama	6.8	100 mins	en	\N
2022	The Only	Action Documentary Sport	6.6	99 mins	en	\N
2022	Beyond Impossible	Action Documentary	5	82 mins	en	\N
2021	The Red Star	Action Biography Comedy Mystery	5.9	72 mins	es	\N
2022	Cypress Hill: Insane in the Brain	Action Documentary	7.1	89 mins	en	\N
2022	Found Wandering Lost	Drama Thriller	5.7	99 mins	en	\N
2021	The Toolbox Killer	Action Biography Crime Documentary	6.3	89 mins	en	\N
2021	To All the Boys: Always and Forever	Comedy Drama Romance	6.3	109 mins	en	\N
2022	The Lost City	Action Adventure Comedy Romance	6.1	112 mins	en	PG-13
2021	The Colony	Action Adventure Sci-Fi Thriller	5.3	104 mins	en	R
2021	You're Watching Video Music Box	Action Documentary	7.7	92 mins	en	\N
2022	Crush	Action Comedy Romance	6.2	93 mins	en	\N
2022	Wuthering Heights	Action Drama	5.3	150 mins	en	\N
2022	Movers Ultimate	Comedy	6.2	91 mins	en	\N
2021	Reach for the Rings	Action Documentary Sport	6.6	118 mins	en	\N
2022	Love & Gelato	Action Comedy Drama Romance	5.1	110 mins	en	\N
2021	The Christmas Promise	Action Drama	6.7	84 mins	en	\N
2022	Moonfall	Action Adventure Sci-Fi	5.2	130 mins	en	PG-13
2021	Our Christmas Journey	Action Drama Romance	6.5	84 mins	en	\N
2021	Out of Time	Action Drama Sci-Fi	5.5	92 mins	en	\N
2022	The Highwayman	Action Adventure	5.6	85 mins	en	\N
2021	Streamline	Action Drama Sport	5.8	86 mins	en	\N
2021	The Story of Film: A New Generation	Action Documentary	7.3	160 mins	en	\N
2021	Trollhunters: Rise of the Titans	Action Adventure Animation Comedy Drama Family Fantasy	6.6	104 mins	en	\N
2022	Backpackers	Action Comedy Romance	5.7	96 mins	es	\N
2021	The Ballad of Billy McCrae	Action Thriller	5.3	93 mins	en	\N
2022	That's Amor	Comedy Romance	5.2	96 mins	en	\N
2021	Redeemed	Action Drama Family	6.6	80 mins	en	\N
2021	See You Then	Action Drama	5.6	74 mins	en	\N
2021	Wedding Cake Dreams	Action Romance	6	85 mins	en	\N
2021	What She Said	Action Drama	5.9	99 mins	en	\N
2021	The Man from Nowhere	Drama	5.9	79 mins	en	\N
2022	A Cowgirl's Song	Action Drama Music	5.1	93 mins	en	PG
2022	Butlers in Love	Comedy Romance	6	84 mins	en	\N
2021	Slumber Party Massacre	Action Horror	5	86 mins	en	\N
2021	The Pharm	Action Crime Drama Thriller	5.1	92 mins	en	\N
2022	Eddie Izzard: Wunderbar	Action Comedy	6.4	78 mins	en	\N
2021	Twice Bitten	Action Drama Romance Thriller	5.8	88 mins	en	\N
2022	North to Home	Action Drama	7.2	84 mins	en	\N
2022	Two Tickets to Paradise	Action Comedy Drama Romance	6.8	84 mins	en	\N
2021	The Cursed	Action Fantasy Horror Mystery	6.2	111 mins	en	R
2021	Paranormal Activity: Next of Kin	Action Horror Mystery Thriller	5.2	98 mins	en	R
\.


--
-- Name: actor actor_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.actor
    ADD CONSTRAINT actor_pk PRIMARY KEY (nombre_personal);


--
-- Name: actua actua_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.actua
    ADD CONSTRAINT actua_pk PRIMARY KEY (nombre_personal_actor, anno_peliculas, titulo_peliculas);


--
-- Name: caratulas caratulas_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.caratulas
    ADD CONSTRAINT caratulas_pk PRIMARY KEY (tipo, anno_peliculas, titulo_peliculas);


--
-- Name: criticas criticas_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.criticas
    ADD CONSTRAINT criticas_pk PRIMARY KEY (critico, anno_peliculas, titulo_peliculas);


--
-- Name: director director_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.director
    ADD CONSTRAINT director_pk PRIMARY KEY (nombre_personal);


--
-- Name: generos generos_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.generos
    ADD CONSTRAINT generos_pk PRIMARY KEY (genero, anno_peliculas, titulo_peliculas);


--
-- Name: pag_web pag_web_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.pag_web
    ADD CONSTRAINT pag_web_pk PRIMARY KEY (nombre);


--
-- Name: peliculas peliculas_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.peliculas
    ADD CONSTRAINT peliculas_pk PRIMARY KEY (anno, titulo);


--
-- Name: personal personal_pk; Type: CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.personal
    ADD CONSTRAINT personal_pk PRIMARY KEY (nombre);


--
-- Name: actua actor_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.actua
    ADD CONSTRAINT actor_fk FOREIGN KEY (nombre_personal_actor) REFERENCES peliculas.actor(nombre_personal) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: peliculas director_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.peliculas
    ADD CONSTRAINT director_fk FOREIGN KEY (nombre_personal_director) REFERENCES peliculas.director(nombre_personal) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: criticas pag_web_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.criticas
    ADD CONSTRAINT pag_web_fk FOREIGN KEY (nombre_pag_web) REFERENCES peliculas.pag_web(nombre) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: caratulas pag_web_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.caratulas
    ADD CONSTRAINT pag_web_fk FOREIGN KEY (nombre_pag_web) REFERENCES peliculas.pag_web(nombre) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: actua peliculas_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.actua
    ADD CONSTRAINT peliculas_fk FOREIGN KEY (anno_peliculas, titulo_peliculas) REFERENCES peliculas.peliculas(anno, titulo) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: generos peliculas_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.generos
    ADD CONSTRAINT peliculas_fk FOREIGN KEY (anno_peliculas, titulo_peliculas) REFERENCES peliculas.peliculas(anno, titulo) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: criticas peliculas_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.criticas
    ADD CONSTRAINT peliculas_fk FOREIGN KEY (anno_peliculas, titulo_peliculas) REFERENCES peliculas.peliculas(anno, titulo) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: caratulas peliculas_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.caratulas
    ADD CONSTRAINT peliculas_fk FOREIGN KEY (anno_peliculas, titulo_peliculas) REFERENCES peliculas.peliculas(anno, titulo) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: actor personal_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.actor
    ADD CONSTRAINT personal_fk FOREIGN KEY (nombre_personal) REFERENCES peliculas.personal(nombre) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: director personal_fk; Type: FK CONSTRAINT; Schema: peliculas; Owner: postgres
--

ALTER TABLE ONLY peliculas.director
    ADD CONSTRAINT personal_fk FOREIGN KEY (nombre_personal) REFERENCES peliculas.personal(nombre) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

---------------=[SECCIÓN EDITADA POR NOSOTROS]=---------------

-- En primer lugar tenemos que crear la tabla de auditoría, que guardará los eventos que tienen lugar en la base de datos

CREATE USER admin PASSWORD 'admin'; -- Creamos el rol de administrador
CREATE USER gestor PASSWORD 'gestor'; -- Creamos el rol de gestor
CREATE USER critico PASSWORD 'critico'; -- Creamos el rol de critico
CREATE USER cliente PASSWORD 'cliente'; -- Creamos le rol de cliente

-- Creamos la tabla para almacenar las medias de todas las películas

CREATE TABLE peliculas.nota_media_peliculas(

    titulo_peliculas text,
    anno_peliculas smallint,
    media integer
);

REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA peliculas FROM gestor, critico, cliente; -- Le quitamos todos los permisos predeterminados que puedan tener el usuario gestor, crítico y cliente 
GRANT USAGE ON SCHEMA peliculas TO admin, gestor, critico, cliente; -- Damos acceso a todos los roles al esquema peliculas, ya que es el que vamos a utilizar
GRANT SELECT ON ALL TABLES IN SCHEMA peliculas TO critico; -- Un critico puede consultar cualquier tabla de la base de datos
GRANT INSERT ON peliculas.criticas TO critico; -- Un crítico solo puede insertar elementos en la tabla de críticas
GRANT SELECT ON ALL TABLES IN SCHEMA peliculas TO cliente; -- Un cliente solo puede consultar el contenido de las tablas

CREATE TABLE peliculas.auditoria(

    evento text,
    tabla name,
    usuario text,
    fecha timestamp
);

-- Una vez creados todos los usuarios, les damos permisos a cada uno de ellos

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA peliculas TO admin WITH GRANT OPTION; -- El administrador tiene todos los privilegios para realizar cualquier operación sobre la base de datos
GRANT INSERT, UPDATE, DELETE, SELECT ON ALL TABLES IN SCHEMA peliculas TO gestor; -- El usuario gestor tiene acceso a insertar, actualizar, borrar y realizar consultas sobre la base de datos


-- Funcion auxiliar para dar permisos a critico para insertar en auditoria

CREATE OR REPLACE FUNCTION peliculas.da_permiso_critico_audit() RETURNS void SECURITY DEFINER AS $BODY$
BEGIN
    GRANT INSERT ON peliculas.auditoria TO critico;
END;
$BODY$
LANGUAGE plpgsql;

-- Funcion auxiliar para quitar permisos a critico para insertar en auditoria

CREATE OR REPLACE FUNCTION peliculas.quita_permiso_critico_audit() RETURNS void SECURITY DEFINER AS $BODY$
BEGIN
    REVOKE INSERT ON peliculas.auditoria FROM critico;
END;
$BODY$
LANGUAGE plpgsql;

-- Una vez creada la tabla de auditoria, podemos crear en trigger de esta misma tabla

CREATE OR REPLACE FUNCTION peliculas.fn_auditoria() RETURNS TRIGGER AS $fn_auditoria$
BEGIN

    IF current_user = 'critico' THEN
        PERFORM peliculas.da_permiso_critico_audit();

    END IF;

    IF TG_OP = 'INSERT' THEN
        INSERT INTO peliculas.auditoria(evento, tabla, usuario, fecha) VALUES ('INSERT', TG_TABLE_NAME, current_user, current_timestamp);

    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO peliculas.auditoria(evento, tabla, usuario, fecha) VALUES ('UPDATE', TG_TABLE_NAME, current_user, current_timestamp);

    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO peliculas.auditoria(evento, tabla, usuario, fecha) VALUES ('DELETE', TG_TABLE_NAME, current_user, current_timestamp);

    END IF;

    IF current_user = 'critico' THEN
        PERFORM peliculas.quita_permiso_critico_audit();

    END IF;

    RETURN NEW;

END;
$fn_auditoria$ LANGUAGE plpgsql;

-- CREAMOS TRIGGERS DE AUDITORÍA PARA TODAS LAS TABLAS, porque no adminte poner ALL TABLES.

-- Trigger de auditoría para la tabla peliculas.criticas:

CREATE TRIGGER tg_criticas_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.criticas
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoría para la tabla peliculas.personal:

CREATE TRIGGER tg_personal_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.personal
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla peliculas.actor:

CREATE TRIGGER tg_actor_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.actor
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla de peliculas.director:

CREATE TRIGGER tg_director_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.director
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();


-- Trigger de auditoria para la tabla de peliculas.actua

CREATE TRIGGER tg_actua_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.actua
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla de peliculas.peliculas

CREATE TRIGGER tg_peliculas_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.peliculas
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla peliculas.generos

CREATE TRIGGER tg_generos_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.generos
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla peliclas.caratulas:

CREATE TRIGGER tg_caratulas_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.caratulas
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Trigger de auditoria para la tabla peliculas.pag_web:

CREATE TRIGGER tg_paginaweb_audit

    AFTER INSERT OR UPDATE OR DELETE
    ON peliculas.pag_web
    FOR EACH ROW
    EXECUTE PROCEDURE peliculas.fn_auditoria();

-- Funcion auxiliar para dar permisos a critico para insertar en pag_web

CREATE OR REPLACE FUNCTION peliculas.da_permiso_critico_pagweb() RETURNS void SECURITY DEFINER AS $BODY$
BEGIN
    GRANT INSERT ON peliculas.pag_web TO critico;
END;
$BODY$
LANGUAGE plpgsql;

-- Funcion auxiliar para quitar permisos a critico para insertar en pag_web

CREATE OR REPLACE FUNCTION peliculas.quita_permiso_critico_pagweb() RETURNS void SECURITY DEFINER AS $BODY$
BEGIN
    REVOKE INSERT ON peliculas.pag_web FROM critico;
END;
$BODY$
LANGUAGE plpgsql;

-- Cuando se inserta una critica, en el caso de que la pagina web no esté en la tabla de pag_web, se deberá añadir dicha pagina a la tabla

CREATE OR REPLACE FUNCTION peliculas.fn_inserta_critica() RETURNS TRIGGER AS $fn_inserta_critica$

BEGIN

    -- Nos fijamos en los campos de la tabla peliculas.criticas que tienen NOT NULL, y los tendremos que poner como condición d a tener antes de insertar la crítica
    -- Primero deberemos comprobar que el usuario da una pagina web en al consulta, si no se le dará error

    IF NEW.critico ISNULL THEN
        RAISE EXCEPTION 'El nombre del critico no puede ser nulo, debes imprimir uno';
    END IF;

    IF NEW.anno_peliculas ISNULL THEN
        RAISE EXCEPTION 'El anno de la pelicula no puede ser nulo, debes aportar uno';
    END IF;

    IF NEW.titulo_peliculas ISNULL THEN
        RAISE EXCEPTION 'El titulo de la pelicula no puede tener valor nulo, debes aportar uno';
    END IF;

    IF NEW.nombre_pag_web ISNULL THEN
        RAISE EXCEPTION 'El nombre o url de la pagina web no puede ser nulo, debes aportar uno';
    END IF;
    
    -- Si se ha llegado hasta este punto podemos asegurar que la consulta es correcta y contiene todo los campos necesarios para insertar, ahora debemos comprobar
    -- si la pagina web está presente en la pagina web, o si no añadirla, al igual que el titulo y año de la pelicula que esten presentes en la tabla de peliculas
    
    -- En caso de que esta función la ejecute el critico, le daremos permisos para insertar en pag_web para que en auditoria salga que la ha insertado el critico en
    -- lugar del usuario postgres

    IF NEW.nombre_pag_web NOT IN (SELECT nombre FROM peliculas.pag_web) THEN
        -- Se verifica que la pagina web no está en la tabla de peliculas.pag_web, por tanto tenemos que añadirla
        IF current_user = 'critico' THEN
        PERFORM peliculas.da_permiso_critico_pagweb();
        END IF;

        INSERT INTO peliculas.pag_web(nombre) VALUES (NEW.nombre_pag_web);

        IF current_user = 'critico' THEN
        PERFORM peliculas.quita_permiso_critico_pagweb();
        END IF;
        
    END IF;

    RETURN NEW;

END;

$fn_inserta_critica$ LANGUAGE plpgsql;

-- Creamos el trigger de insertar criticas

CREATE TRIGGER tg_inserta_critica

    BEFORE INSERT
    ON peliculas.criticas
    FOR EACH ROW
    EXECUTE FUNCTION peliculas.fn_inserta_critica();

-- Funcion que ejecuta el trigger de insertar criticas

CREATE OR REPLACE FUNCTION peliculas.fn_actualiza_media_peliculas() RETURNS TRIGGER SECURITY DEFINER AS $fn_actualiza_media_peliculas$

BEGIN

    UPDATE peliculas.nota_media_peliculas SET (media) =
    (SELECT puntuacion_media
    FROM peliculas.media_peliculas
    WHERE (peliculas.media_peliculas.titulo_peliculas = NEW.titulo_peliculas) and (peliculas.media_peliculas.anno_peliculas = NEW.anno_peliculas));

    -- Solo se cambia la nota media a la pelicula que se le ha insertado la critica, ya que las demás seguirán intactas y no tiene sentido cambiarlas

    RETURN NEW;

END;

$fn_actualiza_media_peliculas$ LANGUAGE plpgsql;

-- Creamos el trigger de actuializar la nota media de las peliculas

CREATE TRIGGER tg_actualiza_medias_peliculas
    AFTER INSERT
    ON peliculas.criticas
    FOR EACH ROW
    EXECUTE FUNCTION peliculas.fn_actualiza_media_peliculas();

-- Vista auxiliar de las medias de todas las películas

CREATE VIEW peliculas.media_peliculas as
(SELECT titulo_peliculas, anno_peliculas, avg(puntuacion) as puntuacion_media
FROM
peliculas.criticas
GROUP BY
titulo_peliculas, anno_peliculas
ORDER BY
avg(puntuacion));

-- Poblamos la tabla de notas medias de peliculas con la vista auxiliar que hemos creado anteriormente

INSERT INTO peliculas.nota_media_peliculas(titulo_peliculas, anno_peliculas, media)
SELECT titulo_peliculas, anno_peliculas, puntuacion_media FROM peliculas.media_peliculas;
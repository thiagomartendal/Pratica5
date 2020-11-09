<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase id="rgbase1">
			<region height="100.00%" id="rgTV" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="80.00%" id="regiaoR2" left="3.50%" top="7.50%" width="45.00%" zIndex="2">
				</region>
				<region height="80.00%" id="regiaoR3" left="51.50%" top="7.50%" width="45.00%" zIndex="2">
				</region>
				<region height="10.00%" id="regiaoR1" left="3.51%" top="88.54%" width="93.00%" zIndex="2">
				</region>
			</region>
		</regionBase>
		<connectorBase id="connectorBase1">
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onEndStartL">
				<simpleCondition delay="2s" role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
		</connectorBase>
		<descriptorBase id="descriptorBase1">
			<descriptor explicitDur="10s" id="dImagem2" region="regiaoR3">
			</descriptor>
			<descriptor explicitDur="10s" id="dVideo2" region="regiaoR2">
			</descriptor>
			<descriptor explicitDur="10s" id="dImagem1" region="regiaoR3">
			</descriptor>
			<descriptor explicitDur="8s" id="dVideo1" region="regiaoR2">
			</descriptor>
			<descriptor explicitDur="10s" id="dAudio2">
			</descriptor>
			<descriptor explicitDur="10s" id="dAudio1">
			</descriptor>
			<descriptor explicitDur="10s" id="dLegenda2" region="regiaoR1">
			</descriptor>
			<descriptor explicitDur="8s" id="dLegenda1" region="regiaoR1">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="pInicio">
		<media descriptor="dImagem1" id="imagem1" src="media/imagem1.jpg" type="image/jpeg">
		</media>
		<port component="imagem1" id="port1">
		</port>
		<media descriptor="dImagem2" id="imagem2" src="media/imagem2.gif" type="image/gif">
		</media>
		<port component="imagem2" id="port2">
		</port>
		<link id="link1" xconnector="onEndStart">
			<bind component="imagem1" role="onEnd">
			</bind>
			<bind component="imagem2" role="start">
			</bind>
		</link>
		<media descriptor="dVideo1" id="video1" src="media/video1.mpg" type="video/mpeg">
		</media>
		<port component="video1" id="port3">
		</port>
		<media descriptor="dVideo2" id="video2" src="media/video2.mpg" type="video/mpeg">
		</media>
		<port component="video2" id="port4">
		</port>
		<link id="link2" xconnector="onEndStart">
			<bind component="video1" role="onEnd">
			</bind>
			<bind component="video2" role="start">
			</bind>
		</link>
		<media descriptor="dAudio1" id="audio1" src="media/audio1.mp3" type="audio/mp3">
		</media>
		<port component="audio1" id="port5">
		</port>
		<media descriptor="dAudio2" id="audio2" src="media/audio2.mp3" type="audio/mp3">
		</media>
		<port component="audio2" id="port6">
		</port>
		<link id="link3" xconnector="onEndStart">
			<bind component="audio1" role="onEnd">
			</bind>
			<bind component="audio2" role="start">
			</bind>
		</link>
		<media descriptor="dLegenda1" id="legenda1" src="media/legenda1.txt" type="text/plain">
		</media>
		<port component="legenda1" id="port7">
		</port>
		<media descriptor="dLegenda2" id="legenda2" src="media/legenda2.txt" type="text/plain">
		</media>
		<port component="legenda2" id="port8">
		</port>
		<link id="link4" xconnector="onEndStartL">
			<bind component="legenda1" role="onEnd">
			</bind>
			<bind component="legenda2" role="start">
			</bind>
		</link>
	</body>
</ncl>

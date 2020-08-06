deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'stm32mp1-av96'
	aliases: [ 'stm32mp1-av96' ]
	name: 'Avenger96'
	arch: 'aarch64'
	state: 'experimental'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: ''
		osx: ''
		linux: ''
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'stm32mp1-av96'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-warrior'
		deployArtifact: 'resin-image-stm32mp1-av96.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization

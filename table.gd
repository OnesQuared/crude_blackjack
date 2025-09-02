extends Node2D

@onready var playerlbl = $Player
@onready var dealerlbl = $Dealer

var playerNum = 0
var dealerNum = 0
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	playerlbl.text = str(playerNum)
	dealerlbl.text = str(dealerNum)
	
func _on_hit_pressed() -> void:
	playerNum += rng.randi_range(1, 11)
	playerlbl.text = (str(playerNum))
	print(playerNum)
	if playerNum > 21 :
		playerlbl.text = "Lose"
	


func _on_stand_pressed() -> void:
	while dealerNum < 21:
		dealerNum += rng.randi_range(1, 11)
		print(dealerNum)
		dealerlbl.text = str(dealerNum)
	
	if dealerNum > 21:
		dealerlbl.text = "Dealer Lose"

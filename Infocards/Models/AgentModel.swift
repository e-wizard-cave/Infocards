//
//  File.swift
//  Infocards
//
//  Created by Eduardo Pedroza on 10/30/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String{self.rawValue}
    
    case sentinel = "Sentinel"
    case ontroller = "Controller"
    case duelist = "Duelist"
    case initiator = "Initiator"
}

struct Agent: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let category: Category.RawValue
}

extension Agent {
    static let all: [Agent] = [
        
        Agent(
            name: "Harbor",
            image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt81e8a3e8c7beeaf3/634894a15e281916980f655b/Harbor_KeyArt-web.png",
            description: "Hailing from India’s coast, Harbor storms the field wielding ancient technology with dominion over water. He unleashes frothing rapids and crushing waves to shield his allies and pummel those that oppose him.",
            category: "Controller"),
        
        Agent(
            name: "Fade", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt516d37c6c84fcda0/625db737c9aa404b76ddd594/Fade_Key_Art_587x900_for_Website.png", description: "Turkish bounty hunter, Fade, unleashes the power of raw nightmares to seize enemy secrets. Attuned with terror itself, she hunts targets and reveals their deepest fears—before crushing them in the dark.", category: "Initiator"),
        
        Agent(
            name: "Neon", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt8093ba7b5e84ed05/61d8a63ddea73a236fc56d12/Neon_KeyArt-Web.png", description: "Filipino Agent Neon surges forward at shocking speeds, discharging bursts of bioelectric radiance as fast as her body generates it. She races ahead to catch enemies off guard, then strikes them down quicker than lightning.", category: "Duelist"),
        
        Agent(name: "Cypher", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt158572ec37653cf3/5eb7cdc19df5cf37047009d1/V_AGENTS_587x900_Cypher.png", description: "The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy's every move. No secret is safe. No maneuver goes unseen. Cypher is always watching.", category: "Sentinel"),
        
        Agent(name: "Chamber", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt6f1392b30784e029/618d9da0d380f814d61f001c/WebUpdate_Chamber_KeyArt.png", description: "Well dressed and well armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.", category: "Sentinel"),
        
        Agent(name: "KAY/O", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blte5aefeb26bee12c8/60ca5aa30ece0255888d7faa/KAYO_KeyArt_587x900.png", description: "KAY/O is a machine of war built for a single purpose: neutralizing radiants. His power to suppress enemy abilities cripples his opponents' capacity to fight back, securing him and his allies the ultimate edge.", category: "Initiator"),
        
        Agent(name: "Astra", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt5599d0d810824279/6036ca30ce4a0d12c3ec1dfa/V_AGENTS_587x900_Astra.png", description: "Ghanaian Agent Astra harnesses the energies of the cosmos to reshape battlefields to her whim. With full command of her astral form and a talent for deep strategic foresight, she's always eons ahead of her enemy's next move.", category: "Controller"),
        
        Agent(name: "Yoru", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltd4080f8efb365751/5ff5660bb47cdf7fc7d6c3dc/V_AGENTS_587x900_yoru.png", description: "Japanese native, Yoru, rips holes straight through reality to infiltrate enemy lines unseen. Using deception and aggression in equal measure, he gets the drop on each target before they know where to look.", category: "Duelist"),
        
        Agent(name: "Skye", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt302fcb2b9628c376/5f7fa6ff8db9ea0f149ece0a/V_AGENTS_587x900_ALL_Skye.png", description: "Hailing from Australia, Skye and her band of beasts trail-blaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye’s side.", category: "Initiator"),
        
        Agent(name: "Raze", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt6fef56a8182d0a81/5ebf2c2798f79d6925dbd6b4/V_AGENTS_587x900_ALL_Raze_2.png", description: "Raze explodes out of Brazil with her big personality and big guns. With her blunt-force-trauma playstyle, she excels at flushing entrenched enemies and clearing tight spaces with a generous dose of “boom.”", category: "Duelist"),
        
        Agent(name: "Jett", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltceaa6cf20d328bd5/5eb7cdc1b1f2e27c950d2aaa/V_AGENTS_587x900_Jett.png", description: "Representing her home country of South Korea, Jett's agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them.", category: "Duelist"),
        
        Agent(name: "Omen", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt4e5af408cc7a87b5/5eb7cdc17bedc8627eff8deb/V_AGENTS_587x900_Omen.png", description: "A phantom of a memory, Omen hunts in the shadows. He renders enemies blind, teleports across the field, then lets paranoia take hold as his foe scrambles to learn where he might strike next.", category: "Controller"),
        
        Agent(name: "Breach", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt100d13bfa8286a3d/5eb7cdc11ea0c32e33b95fa2/V_AGENTS_587x900_Breach.png", description: "Breach, the bionic Swede, fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.", category: "Initiator"),
        
        Agent(name: "Killjoy", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt53405c26141beff8/5f21fda671ec397ef9bf0894/V_AGENTS_587x900_KillJoy_.png", description: "The genius of Germany. Killjoy secures the battlefield with ease using her arsenal of inventions. If the damage from her gear doesn't stop her enemies, her robots' debuff will help make short work of them.", category: "Sentinel"),
        
        Agent(name: "Reyna", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt6577b1f58530e6b2/5eb7cdc121a5027d77420208/V_AGENTS_587x900_Reyna.png", description: "Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance.", category: "Duelist"),
        
        Agent(name: "Viper", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltc825c6589eda7717/5eb7cdc6ee88132a6f6cfc25/V_AGENTS_587x900_Viper.png", description: "The American chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and cripple the enemy's vision. If the toxins don't kill her prey, her mind games surely will.", category: "Controller"),
        
        Agent(name: "Sova", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltf11234f4775729b7/5ebf2c275e73766852c8d5d4/V_AGENTS_587x900_ALL_Sova_2.png", description: "Born from the eternal winter of Russia's tundra, Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide.", category: "Initiator"),
        
        Agent(name: "Sage", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt8a627ec10b57f4f2/5eb7cdc16509f3370a5a93b7/V_AGENTS_587x900_sage.png", description: "The stronghold of China, Sage creates safety for herself and her team wherever she goes. Able to revive fallen friends and stave off aggressive pushes, she provides a calm center to a hellish fight.", category: "Sentinel"),
        
        Agent(name: "Phoenix", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltf0200e1821b5b39f/5eb7cdc144bf8261a04d87f9/V_AGENTS_587x900_Phx.png", description: "Hailing from the U.K., Phoenix's star power shines through in his fighting style, igniting the battlefield with flash and flare. Whether he's got backup or not, he'll rush into a fight on his own terms.", category: "Duelist"),
        
        Agent(name: "Brimstone", image: "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt26fcf1b5752514ee/5eb7cdbfc1dc88298d5d3799/V_AGENTS_587x900_Brimstone.png", description: "Joining from the USA, Brimstone's orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and from a distance makes him an unmatched boots-on-the-ground commander.", category: "Controller"),

    ]
}


import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var agents: [Agent]{
        return Agent.all.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            AgentList(agent: agents)
            
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.duelist)
    }
}

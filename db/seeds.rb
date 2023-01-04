# db/seeds.rb
author1 = Author.create(name: 'Arjunan', bio: 'Ruby developer')
author2 = Author.create(name: 'David', bio: 'Angular developer')
Article.create(
title: 'Basics of Ruby Programming',
description: 'This article is related to ruby programming',
author: author1
)
Article.create(
title: 'How to create Angular application',
description: 'This article is related to Angular App',
author: author2
)
using DependencyParser.DependencyParsing

function build_dep_parser()
  settings = Settings(embeddings_size = 4, hidden_size = 2)

  connlu_file = "test/fixtures/connlu_test.txt"
  emb_file = "test/fixtures/embeddings_test.vec"

  conllu_sentences = load_connlu_file(connlu_file)

  model = Model(settings, ArcEager.ArcEagerSystem(), emb_file, conllu_sentences)

  DepParser(settings, model)
end
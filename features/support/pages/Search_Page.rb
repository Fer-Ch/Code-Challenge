class SearchPage
  include PageObject

  div(:searchSummary, id: 'result-stats')
  h3(:searchResult, class: ['LC20lb','DKV0Md'])
end
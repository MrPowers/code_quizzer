$(document).ready(function(){
  $(function(){ // on dom ready

  var cy = cytoscape({
    container: document.getElementById('cy'),

    style: cytoscape.stylesheet()
      .selector('node')
        .css({
          'content': 'data(id)'
        })
      .selector('edge')
        .css({
          'target-arrow-shape': 'triangle',
          'width': 4,
          'line-color': '#ddd',
          'target-arrow-color': '#ddd'
        })
      .selector('.highlighted')
        .css({
          'background-color': '#61bffc',
          'line-color': '#61bffc',
          'target-arrow-color': '#61bffc',
          'transition-property': 'background-color, line-color, target-arrow-color',
          'transition-duration': '0.5s'
        }),

    elements: {
        nodes: [
          { data: { id: 'using-the-console' } },
          { data: { id: 'introduction-to-booleans' } },
          { data: { id: 'introduction-to-strings' } },
          { data: { id: 'introduction-to-numbers' } },
          { data: { id: 'variable-assignment' } },
          { data: { id: 'variable-reassignment' } }
        ],

        edges: [
          { data: { id: 'console-booleans', weight: 1, source: 'using-the-console', target: 'introduction-to-booleans' } },
          { data: { id: 'console-strings', weight: 1, source: 'using-the-console', target: 'introduction-to-strings' } },
          { data: { id: 'console-numbers', weight: 1, source: 'using-the-console', target: 'introduction-to-numbers' } },
          { data: { id: 'b-va', weight: 1, source: 'introduction-to-booleans', target: 'variable-assignment' } },
          { data: { id: 's-va', weight: 1, source: 'introduction-to-strings', target: 'variable-assignment' } },
          { data: { id: 'n-va', weight: 1, source: 'introduction-to-numbers', target: 'variable-assignment' } },
          { data: { id: 'va-vra', weight: 1, source: 'variable-assignment', target: 'variable-reassignment' } }
        ]
      },

    layout: {
      name: 'breadthfirst',
      directed: true,
      roots: '#using-the-console',
      padding: 10
    }
  });

  var bfs = cy.elements().bfs('#using-the-console', function(){}, true);

  var i = 0;
  var highlightNextEle = function(){
    bfs.path[i].addClass('highlighted');
    if( i < bfs.path.length ){
      i++;
      setTimeout(highlightNextEle, 1000);
    }
  };

  // kick off first highlight
  highlightNextEle();

  }); // on dom ready
});

# ObjectPoolRuby

O Pool de Objetos permite que outras pessoas "façam check-out" de objetos de seu pool, quando esses objetos não são mais  necessários por seus processos, eles são retornados ao pool para serem reutilizados. 

No entanto, não queremos que um processo tenha que esperar que um determinado objeto seja liberado, portanto, o Conjunto de Objetos também instancia novos objetos conforme eles são necessários, mas também deve implementar um recurso para limpar objetos não utilizados periodicamente.

Disciplina: Padrões de Projeto

Alunos: Luisa, Carol, Amanda e Eduardo

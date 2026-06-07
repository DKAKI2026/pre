SCÈNE 1 — Page d'accueil
"Pour cette démo, on va prendre le cas de David Evans.
David vient de décrocher un emploi à Toronto et doit déménager
du Québec vers l'Ontario dans les prochaines semaines.
Il a besoin d'assurer son véhicule dans sa nouvelle province.
Il clique sur Espace client."

SCÈNE 2 — Authentification
"David entre son numéro de compte et son code postal.
On a choisi le code postal parce qu'on ne voulait pas créer
une étape d'inscription supplémentaire.
Le client existe déjà dans la base de données de Desjardins —
le code postal suffit à l'identifier."
[ Connexion ]

SCÈNE 3 — Chatbot
"Avant de soumettre une demande, David a une vraie question.
Il tape : comment le système d'assurance de l'Ontario
diffère-t-il du Québec ?"
[ Saisir la question → réponse affichée ]
"L'agent chatbot — notre Agent RAG — génère la réponse en quelques secondes.
Je bascule maintenant vers le PDF officiel Desjardins indexé dans le système.
C'est exactement la même information.
L'agent n'a rien inventé — il a cherché dans ce document et reformulé
pour David."

SCÈNE 4 — Soumission nouveau véhicule
"David passe à la soumission. Il peut soit sélectionner un véhicule
existant dans sa base, soit saisir les données d'un nouveau véhicule.
David vient d'en acheter un — il saisit les informations."
[ Saisir : marque, modèle, kilométrage, valeur, pneus hiver, antivol ]
[ Soumettre ]

SCÈNE 5 — Score de risque et tarification
"Le pipeline se lance. Notre moteur de règles calcule le profil de David. 
Il est en profil 1 — conducteur expérimenté, plus de 15 ans de permis — 
ce qui est le profil le plus favorable. 
Malgré ça, il a deux infractions mineures à son dossier. 
La première lui vaut 2 points, la deuxième 4 points supplémentaires. 
Il termine donc à 6 points de risque sur 12.

Notre Agent Tarification VMR prend ensuite le relais.
Il consulte les documents officiels Desjardins pour déterminer
le groupe tarifaire du véhicule de David,
calcule la prime annuelle avec les rabais applicables —
pneus hiver et antivol dans ce cas —
et retourne une prime détaillée avec toutes ses composantes."

[ Afficher capture : score 6/12 + infractions + prime ]

SCÈNE 6 — Explication client
"Une fois la tarification établie, notre Agent Souscription entre en jeu.
Son rôle : transformer ce résultat technique en message humain pour David.
L'explication est claire, sans jargon, directe.
Humain, simple, moderne — ce sont les valeurs de Desjardins,
et c'est exactement ce que cette explication reflète."

SCÈNE 7 — Espace employé
"On passe dans l'espace employé. Il voit la demande de David
dans les dossiers en attente.
Il clique sur Analyser avec IA — notre Agent Souscription
génère une analyse structurée avec les points d'attention,
le profil de risque et une recommandation claire.
L'IA assiste l'employé pour traiter le dossier rapidement —
pas pour décider à sa place."
[ Analyser → ajouter commentaire → Approuver ]
 

SCÈNE 8 — Confirmation client et PDF
"David revient dans son espace. Sa demande est approuvée
par son conseiller. Mais la police n'est pas encore active.
David doit lui-même donner sa confirmation finale.
L'humain prend toujours la décision finale et cruciale."
[ J'accepte et je confirme ]
"Police active. David télécharge sa confirmation officielle en PDF."
[ Télécharger PDF ]


SCÈNE 9 — Espace développeur — Rafraîchir l'index
"Dans l'espace développeur, si Desjardins modifie ses règles
 ou publie de nouveaux documents, il n'y a pas besoin de toucher au code.
Un seul clic sur Rafraîchir l'index — les agents l'intègrent automatiquement.
C'est ce qui garantit la scalabilité et la transférabilité de la solution."
[ Cliquer Rafraîchir ]

SCÈNE 10 — RAGAS et LLM Judge
"Imaginons le risque réputationnel et organisationnel
si nos agents donnaient de fausses informations à un client.
C'est pourquoi on a intégré deux outils d'évaluation de la qualité.

RAGAS et LLM-as-a-Judge. On leur soumet des questions avec leurs réponses attendues.
 Ils exécutent le pipeline RAG en arrière-plan,
 comparent les résultats obtenus avec les réponses attendues,
 et mesurent deux choses : la fidélité — est-ce que les agents ont répondu uniquement 
sur les documents fournis ou ont-ils inventé des informations 
— et la pertinence — est-ce que les réponses correspondent vraiment aux questions posées.

Nos résultats sont bons. Notre fidélité dépasse 0.90 —
nos agents répondent presque exclusivement sur les documents
officiels Desjardins. Notre pertinence est élevée.
C'est notre preuve que la solution est fiable
et peut être déployée avec confiance."


.class final Lecv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lecy;

.field private final b:Ldyc;


# direct methods
.method public constructor <init>(Lecy;Ldyc;)V
    .locals 0

    iput-object p1, p0, Lecv;->a:Lecy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lecv;->b:Ldyc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 2
    move-object/from16 v1, p0

    const-string v2, "serviceConfig"

    const-string v3, "Unable to resolve host "

    sget-object v4, Lecy;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    const-string v5, "run"

    const-string v6, "io.grpc.internal.DnsNameResolver$Resolve"

    if-eqz v4, :cond_1

    sget-object v4, Lecy;->a:Ljava/util/logging/Logger;

    .line 3
    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v8, v1, Lecv;->a:Lecy;

    iget-object v8, v8, Lecy;->k:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Attempting DNS resolution of "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 9
    :cond_0
    new-instance v8, Ljava/lang/String;

    .line 3
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v7, v6, v5, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, v1, Lecv;->a:Lecy;

    iget-object v10, v9, Lecy;->k:Ljava/lang/String;

    iget v11, v9, Lecy;->l:I

    .line 4
    invoke-static {v10, v11}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    iget-object v9, v9, Lecy;->g:Ldyn;

    .line 5
    instance-of v11, v10, Ljava/net/InetSocketAddress;

    if-nez v11, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .line 30
    :cond_2
    move-object v11, v9

    check-cast v11, Legr;

    iget-object v11, v11, Legr;->b:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v11, :cond_3

    :try_start_1
    invoke-static {}, Ldwj;->a()Ldwi;

    move-result-object v11

    check-cast v9, Legr;

    iget-object v9, v9, Legr;->b:Ljava/net/InetSocketAddress;

    .line 6
    invoke-virtual {v11, v9}, Ldwi;->a(Ljava/net/SocketAddress;)V

    .line 7
    invoke-virtual {v11, v10}, Ldwi;->a(Ljava/net/InetSocketAddress;)V

    .line 8
    invoke-virtual {v11}, Ldwi;->a()Ldwj;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :cond_3
    :try_start_2
    invoke-static {v10}, Legr;->a(Ljava/net/InetSocketAddress;)Ldym;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 5
    :goto_1
    if-eqz v9, :cond_4

    .line 10
    :try_start_3
    new-instance v10, Ldwg;

    invoke-direct {v10, v9}, Ldwg;-><init>(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x1

    goto/16 :goto_2d

    .line 3
    :catch_0
    move-exception v0

    move-object v4, v0

    const/4 v2, 0x1

    goto/16 :goto_2f

    .line 30
    :cond_4
    const/4 v10, 0x0

    .line 11
    :goto_2
    :try_start_4
    invoke-static {}, Ldye;->a()Ldyd;

    move-result-object v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-eqz v10, :cond_6

    :try_start_5
    sget-object v2, Lecy;->a:Ljava/util/logging/Logger;

    .line 12
    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lecy;->a:Ljava/util/logging/Logger;

    .line 13
    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Using proxy address "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v6, v5, v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v9, Ldyd;->a:Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2a

    .line 133
    :cond_6
    :try_start_6
    iget-object v5, v1, Lecv;->a:Lecy;

    new-instance v6, Lecs;

    invoke-direct {v6}, Lecs;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    iget-object v10, v5, Lecy;->i:Lecr;

    iget-object v10, v5, Lecy;->k:Ljava/lang/String;

    .line 15
    invoke-static {v10}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-instance v11, Ljava/util/ArrayList;

    .line 20
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v12, :cond_7

    :try_start_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 22
    new-instance v13, Ldwg;

    new-instance v14, Ljava/net/InetSocketAddress;

    iget v15, v5, Lecy;->l:I

    invoke-direct {v14, v12, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v13, v14}, Ldwg;-><init>(Ljava/net/SocketAddress;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 19
    :catch_1
    move-exception v0

    move-object v4, v0

    const/4 v2, 0x1

    goto/16 :goto_25

    .line 23
    :cond_7
    :try_start_a
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v6, Lecs;->b:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :try_start_b
    sget-boolean v10, Lecy;->e:Z

    if-eqz v10, :cond_3a

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    sget-boolean v11, Lecy;->c:Z

    sget-boolean v12, Lecy;->d:Z

    iget-object v13, v5, Lecy;->k:Ljava/lang/String;

    if-nez v11, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    .line 33
    :cond_8
    const-string v11, "localhost"

    .line 27
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v12, :cond_e

    const/4 v11, 0x0

    goto :goto_6

    .line 32
    :cond_9
    const-string v11, ":"

    .line 28
    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 29
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-ge v11, v14, :cond_d

    .line 30
    :try_start_c
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_c

    const/16 v15, 0x30

    if-lt v14, v15, :cond_b

    const/16 v15, 0x39

    if-gt v14, v15, :cond_b

    const/4 v14, 0x1

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    :goto_5
    and-int/2addr v12, v14

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    if-eqz v12, :cond_e

    const/4 v11, 0x0

    goto :goto_6

    .line 27
    :cond_e
    :try_start_d
    iget-object v11, v5, Lecy;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lecw;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-nez v11, :cond_f

    :try_start_e
    sget-object v12, Lecy;->f:Lecx;

    if-eqz v12, :cond_f

    sget-object v11, Lecy;->f:Lecx;

    .line 32
    invoke-interface {v11}, Lecx;->a()Lecw;

    move-result-object v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 26
    :cond_f
    :goto_6
    if-eqz v11, :cond_11

    :try_start_f
    const-string v12, "_grpc_config."

    iget-object v13, v5, Lecy;->k:Ljava/lang/String;

    .line 33
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 131
    :cond_10
    new-instance v13, Ljava/lang/String;

    .line 33
    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-interface {v11}, Lecw;->a()Ljava/util/List;

    move-result-object v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_11
    goto :goto_8

    .line 25
    :catch_2
    move-exception v0

    move-object/from16 v16, v0

    :try_start_10
    sget-object v11, Lecy;->a:Ljava/util/logging/Logger;

    .line 34
    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v13, "io.grpc.internal.DnsNameResolver"

    const-string v14, "resolveServiceConfig"

    const-string v15, "ServiceConfig resolution failure"

    invoke-virtual/range {v11 .. v16}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 35
    :goto_8
    :try_start_11
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-nez v11, :cond_39

    :try_start_12
    iget-object v11, v5, Lecy;->h:Ljava/util/Random;

    .line 36
    invoke-static {}, Lecy;->d()Ljava/lang/String;

    move-result-object v12
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    new-instance v13, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "grpc_config="

    .line 39
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    sget-object v16, Lecy;->a:Ljava/util/logging/Logger;

    .line 40
    sget-object v17, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v14, v15, v7

    const-string v18, "io.grpc.internal.DnsNameResolver"

    const-string v19, "parseTxtResults"

    const-string v20, "Ignoring non service config {0}"

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    const/16 v15, 0xc

    .line 41
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Leeo;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 42
    instance-of v15, v14, Ljava/util/List;

    if-eqz v15, :cond_13

    .line 43
    check-cast v14, Ljava/util/List;

    .line 44
    invoke-static {v14}, Leep;->a(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 42
    :cond_13
    new-instance v2, Ljava/lang/ClassCastException;

    .line 65
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0xb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "wrong type "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 45
    :cond_14
    :try_start_14
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v13, 0x0

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 46
    :try_start_15
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    sget-object v8, Lecy;->b:Ljava/util/Set;

    .line 47
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "Bad key: %s"

    invoke-static {v4, v8, v15}, Lcrw;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const-string v4, "clientLanguage"

    .line 48
    invoke-static {v13, v4}, Leep;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 49
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_18

    .line 50
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "java"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 51
    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_c

    .line 60
    :cond_17
    const/4 v13, 0x0

    goto :goto_e

    .line 51
    :cond_18
    :goto_c
    const-string v4, "percentage"

    .line 52
    invoke-static {v13, v4}, Leep;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 53
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v8
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/16 v14, 0x64

    if-ltz v8, :cond_19

    if-gt v8, v14, :cond_19

    const/4 v15, 0x1

    goto :goto_d

    .line 62
    :cond_19
    const/4 v15, 0x0

    .line 53
    :goto_d
    :try_start_16
    const-string v7, "Bad percentage: %s"

    .line 54
    invoke-static {v15, v7, v4}, Lcrw;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v11, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v8, :cond_1a

    const/4 v13, 0x0

    goto :goto_e

    .line 62
    :cond_1a
    const-string v4, "clientHostname"

    .line 56
    invoke-static {v13, v4}, Leep;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 57
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 59
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1c
    nop

    .line 60
    invoke-static {v13, v2}, Leep;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object v13, v4

    .line 55
    :goto_e
    if-eqz v13, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_a

    .line 100
    :cond_1e
    new-instance v4, Lcrs;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v2, "key \'%s\' missing in \'%s\'"

    .line 61
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcrs;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 66
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 63
    :try_start_17
    sget-object v4, Ldyv;->d:Ldyv;

    const-string v7, "failed to pick service config choice"

    .line 64
    invoke-virtual {v4, v7}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v2

    .line 63
    invoke-static {v2}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v2

    goto :goto_11

    .line 55
    :cond_1f
    :goto_f
    if-nez v13, :cond_20

    const/4 v2, 0x0

    goto :goto_11

    .line 62
    :cond_20
    invoke-static {v13}, Ldya;->a(Ljava/lang/Object;)Ldya;

    move-result-object v2

    goto :goto_11

    .line 34
    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    :goto_10
    move-object v2, v0

    .line 66
    sget-object v4, Ldyv;->d:Ldyv;

    const-string v7, "failed to parse TXT records"

    .line 67
    invoke-virtual {v4, v7}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v2

    .line 66
    invoke-static {v2}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v2

    .line 55
    :goto_11
    if-eqz v2, :cond_38

    iget-object v4, v2, Ldya;->a:Ldyv;

    if-eqz v4, :cond_21

    .line 68
    invoke-static {v4}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_20

    .line 133
    :cond_21
    iget-object v2, v2, Ldya;->b:Ljava/lang/Object;

    .line 69
    check-cast v2, Ljava/util/Map;

    iget-object v4, v5, Lecy;->q:Ldyf;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    iget-object v4, v4, Ldyf;->a:Leam;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v2, :cond_27

    :try_start_19
    new-instance v5, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "loadBalancingConfig"

    .line 71
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 72
    invoke-static {v2, v7}, Leep;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_22
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_23

    const-string v7, "loadBalancingPolicy"

    .line 74
    invoke-static {v2, v7}, Leep;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 75
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 77
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_23
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_24

    const/4 v5, 0x0

    goto/16 :goto_13

    .line 92
    :cond_24
    new-instance v7, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 81
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_25

    .line 82
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lehl;

    .line 83
    invoke-static {v8, v10}, Leep;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v11, v10, v8}, Lehl;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 81
    :cond_25
    new-instance v4, Ljava/lang/RuntimeException;

    .line 85
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "There are "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fields in a LoadBalancingConfig object. Exactly one is expected. Config="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_26
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_13

    .line 129
    :catch_6
    move-exception v0

    move-object v4, v0

    goto/16 :goto_16

    .line 86
    :cond_27
    const/4 v5, 0x0

    .line 78
    :goto_13
    if-eqz v5, :cond_2b

    .line 87
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v4, v4, Leam;->a:Ldxj;

    new-instance v15, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lehl;

    iget-object v8, v7, Lehl;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {v4, v8}, Ldxj;->a(Ljava/lang/String;)Ldxh;

    move-result-object v14

    if-nez v14, :cond_28

    .line 91
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 94
    :cond_28
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    const-class v4, Lehn;

    .line 95
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v12, "io.grpc.internal.ServiceConfigUtil"

    const-string v13, "selectLbPolicyFromList"

    const-string v4, "{0} specified by Service Config are not available"

    move-object v5, v14

    move-object v14, v4

    invoke-virtual/range {v10 .. v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    .line 94
    :cond_29
    move-object v5, v14

    .line 96
    :goto_15
    invoke-virtual {v5}, Ldxh;->d()Ldya;

    move-result-object v4

    iget-object v8, v4, Ldya;->a:Ldyv;

    if-nez v8, :cond_2c

    new-instance v8, Lehm;

    .line 97
    iget-object v7, v7, Lehl;->b:Ljava/util/Map;

    iget-object v4, v4, Ldya;->b:Ljava/lang/Object;

    .line 98
    invoke-direct {v8, v5, v7, v4}, Lehm;-><init>(Ldxh;Ljava/util/Map;Ljava/lang/Object;)V

    .line 99
    invoke-static {v8}, Ldya;->a(Ljava/lang/Object;)Ldya;

    move-result-object v4

    goto :goto_17

    .line 92
    :cond_2a
    sget-object v4, Ldyv;->d:Ldyv;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x33

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "None of "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " specified by Service Config are available."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v4

    .line 92
    invoke-static {v4}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_17

    .line 100
    :goto_16
    :try_start_1a
    sget-object v5, Ldyv;->d:Ldyv;

    const-string v7, "can\'t parse load balancer configuration"

    .line 101
    invoke-virtual {v5, v7}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v5

    invoke-virtual {v5, v4}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v4

    .line 100
    invoke-static {v4}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v4

    goto :goto_17

    .line 92
    :cond_2b
    const/4 v4, 0x0

    .line 99
    :cond_2c
    :goto_17
    if-nez v4, :cond_2d

    const/4 v14, 0x0

    goto :goto_18

    .line 105
    :cond_2d
    iget-object v5, v4, Ldya;->a:Ldyv;

    if-eqz v5, :cond_2e

    .line 102
    invoke-static {v5}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_20

    :cond_2e
    iget-object v4, v4, Ldya;->b:Ljava/lang/Object;

    move-object v14, v4

    .line 99
    :goto_18
    new-instance v12, Ljava/util/HashMap;

    .line 103
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    .line 104
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    if-nez v2, :cond_2f

    const/4 v15, 0x0

    goto :goto_19

    .line 127
    :cond_2f
    const-string v4, "healthCheckConfig"

    .line 105
    invoke-static {v2, v4}, Leep;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v15, v4

    .line 104
    :goto_19
    const-string v4, "methodConfig"

    .line 106
    invoke-static {v2, v4}, Leep;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_30

    new-instance v2, Lefw;

    const/4 v11, 0x0

    .line 107
    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lefw;-><init>(Lefv;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_1f

    .line 108
    :cond_30
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v11, 0x0

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    new-instance v7, Lefv;

    .line 109
    invoke-direct {v7, v5}, Lefv;-><init>(Ljava/util/Map;)V

    const-string v8, "name"

    .line 110
    invoke-static {v5, v8}, Leep;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 111
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_35

    .line 112
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "service"

    .line 113
    invoke-static {v8, v10}, Leep;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v4

    const-string v4, "method"

    .line 114
    invoke-static {v8, v4}, Leep;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v10}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 116
    invoke-static {v4}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "missing service name for method %s"

    .line 117
    invoke-static {v8, v10, v4}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez v11, :cond_31

    const/4 v4, 0x1

    goto :goto_1c

    .line 118
    :cond_31
    const/4 v4, 0x0

    .line 117
    :goto_1c
    const-string v8, "Duplicate default method config in service config %s"

    .line 118
    invoke-static {v4, v8, v2}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    move-object v11, v7

    move-object/from16 v4, v19

    goto :goto_1b

    .line 119
    :cond_32
    invoke-static {v4}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 124
    invoke-interface {v13, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    const-string v8, "Duplicate service %s"

    .line 125
    invoke-static {v4, v8, v10}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-interface {v13, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 120
    :cond_33
    invoke-static {v10, v4}, Ldxx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    xor-int/2addr v8, v10

    const-string v10, "Duplicate method name %s"

    .line 122
    invoke-static {v8, v10, v4}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-interface {v12, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_1d
    move-object/from16 v4, v19

    goto :goto_1b

    :cond_34
    move-object/from16 v19, v4

    goto/16 :goto_1a

    .line 111
    :cond_35
    move-object/from16 v19, v4

    goto :goto_1e

    .line 110
    :cond_36
    move-object/from16 v19, v4

    .line 108
    :goto_1e
    move-object/from16 v4, v19

    goto/16 :goto_1a

    .line 123
    :cond_37
    new-instance v2, Lefw;

    .line 127
    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lefw;-><init>(Lefv;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)V

    .line 128
    :goto_1f
    invoke-static {v2}, Ldya;->a(Ljava/lang/Object;)Ldya;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object v4, v2

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_20

    .line 63
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 129
    :try_start_1b
    sget-object v4, Ldyv;->d:Ldyv;

    const-string v5, "failed to parse service config"

    .line 130
    invoke-virtual {v4, v5}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v2

    .line 129
    invoke-static {v2}, Ldya;->a(Ldyv;)Ldya;

    move-result-object v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-object v4, v2

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_20

    .line 86
    :cond_38
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_20

    .line 133
    :catchall_1
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2d

    .line 3
    :catch_8
    move-exception v0

    move-object v4, v0

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2f

    .line 60
    :cond_39
    :try_start_1c
    sget-object v10, Lecy;->a:Ljava/util/logging/Logger;

    .line 131
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    const/4 v2, 0x1

    :try_start_1d
    new-array v15, v2, [Ljava/lang/Object;

    iget-object v4, v5, Lecy;->k:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    const/4 v7, 0x0

    :try_start_1e
    aput-object v4, v15, v7

    const-string v12, "io.grpc.internal.DnsNameResolver"

    const-string v13, "resolveServiceConfig"

    const-string v14, "No TXT records found for {0}"

    invoke-virtual/range {v10 .. v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 68
    :goto_20
    iput-object v4, v6, Lecs;->c:Ldya;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_27

    .line 133
    :catchall_2
    move-exception v0

    goto :goto_21

    .line 3
    :catch_9
    move-exception v0

    goto :goto_22

    .line 133
    :catchall_3
    move-exception v0

    const/4 v2, 0x1

    :goto_21
    const/4 v7, 0x0

    goto/16 :goto_2c

    .line 3
    :catch_a
    move-exception v0

    const/4 v2, 0x1

    :goto_22
    const/4 v7, 0x0

    goto/16 :goto_2e

    .line 23
    :cond_3a
    const/4 v2, 0x1

    goto :goto_27

    .line 19
    :catch_b
    move-exception v0

    const/4 v2, 0x1

    goto :goto_24

    .line 17
    :catchall_4
    move-exception v0

    const/4 v2, 0x1

    move-object v4, v0

    const/4 v15, 0x0

    goto :goto_23

    .line 137
    :catch_c
    move-exception v0

    const/4 v2, 0x1

    move-object v4, v0

    .line 16
    :try_start_1f
    invoke-static {v4}, Lcrr;->a(Ljava/lang/Throwable;)V

    new-instance v8, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 136
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-object v15, v4

    move-object v4, v8

    .line 17
    :goto_23
    if-eqz v15, :cond_3b

    :try_start_20
    sget-object v10, Lecy;->a:Ljava/util/logging/Logger;

    .line 18
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "io.grpc.internal.DnsNameResolver"

    const-string v13, "resolveAddresses"

    const-string v14, "Address resolution failure"

    invoke-virtual/range {v10 .. v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_3b
    throw v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 133
    :catchall_6
    move-exception v0

    goto/16 :goto_2c

    .line 19
    :catch_d
    move-exception v0

    :goto_24
    move-object v4, v0

    .line 24
    :goto_25
    :try_start_21
    sget-object v8, Ldyv;->i:Ldyv;

    iget-object v5, v5, Lecy;->k:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3c

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_26

    .line 136
    :cond_3c
    new-instance v5, Ljava/lang/String;

    .line 24
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_26
    invoke-virtual {v8, v5}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v5

    invoke-virtual {v5, v4}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v4

    iput-object v4, v6, Lecs;->a:Ldyv;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 68
    :goto_27
    :try_start_22
    iget-object v4, v6, Lecs;->a:Ldyv;

    if-eqz v4, :cond_3e

    iget-object v5, v1, Lecv;->b:Ldyc;

    .line 134
    invoke-virtual {v5, v4}, Ldyc;->a(Ldyv;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    iget-object v3, v6, Lecs;->a:Ldyv;

    if-nez v3, :cond_3d

    const/4 v4, 0x1

    goto :goto_28

    .line 133
    :cond_3d
    const/4 v4, 0x0

    .line 134
    :goto_28
    iget-object v2, v1, Lecv;->a:Lecy;

    iget-object v2, v2, Lecy;->n:Ldzb;

    new-instance v3, Lecu;

    .line 133
    invoke-direct {v3, v1, v4}, Lecu;-><init>(Lecv;Z)V

    :goto_29
    invoke-virtual {v2, v3}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3e
    :try_start_23
    iget-object v4, v6, Lecs;->b:Ljava/util/List;

    if-eqz v4, :cond_3f

    iput-object v4, v9, Ldyd;->a:Ljava/util/List;

    :cond_3f
    iget-object v4, v6, Lecs;->c:Ldya;

    if-eqz v4, :cond_40

    iput-object v4, v9, Ldyd;->c:Ldya;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 14
    :cond_40
    move-object v8, v6

    :goto_2a
    :try_start_24
    iget-object v4, v1, Lecv;->b:Ldyc;

    .line 132
    invoke-virtual {v9}, Ldyd;->a()Ldye;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldyc;->a(Ldye;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_e
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    if-eqz v8, :cond_41

    iget-object v3, v8, Lecs;->a:Ldyv;

    if-nez v3, :cond_41

    const/4 v4, 0x1

    goto :goto_2b

    .line 133
    :cond_41
    const/4 v4, 0x0

    .line 132
    :goto_2b
    iget-object v2, v1, Lecv;->a:Lecy;

    iget-object v2, v2, Lecy;->n:Ldzb;

    new-instance v3, Lecu;

    .line 133
    invoke-direct {v3, v1, v4}, Lecu;-><init>(Lecv;Z)V

    goto :goto_29

    .line 137
    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_33

    :catch_e
    move-exception v0

    move-object v4, v0

    goto :goto_30

    .line 63
    :catchall_8
    move-exception v0

    move-object v3, v0

    move-object v8, v6

    goto :goto_33

    :catch_f
    move-exception v0

    move-object v4, v0

    move-object v8, v6

    goto :goto_30

    .line 3
    :catch_10
    move-exception v0

    goto :goto_2e

    .line 133
    :catchall_9
    move-exception v0

    const/4 v2, 0x1

    :goto_2c
    move-object v3, v0

    :goto_2d
    const/4 v8, 0x0

    goto :goto_33

    .line 3
    :catch_11
    move-exception v0

    const/4 v2, 0x1

    :goto_2e
    move-object v4, v0

    :goto_2f
    const/4 v8, 0x0

    :goto_30
    :try_start_25
    iget-object v5, v1, Lecv;->b:Ldyc;

    .line 135
    sget-object v6, Ldyv;->i:Ldyv;

    iget-object v9, v1, Lecv;->a:Lecy;

    iget-object v9, v9, Lecy;->k:Ljava/lang/String;

    .line 136
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 61
    :cond_42
    new-instance v9, Ljava/lang/String;

    .line 136
    invoke-direct {v9, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    :goto_31
    invoke-virtual {v6, v3}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v3

    invoke-virtual {v3, v4}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v3

    .line 135
    invoke-virtual {v5, v3}, Ldyc;->a(Ldyv;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v8, :cond_43

    iget-object v3, v8, Lecs;->a:Ldyv;

    if-nez v3, :cond_43

    const/4 v4, 0x1

    goto :goto_32

    .line 136
    :cond_43
    const/4 v4, 0x0

    .line 135
    :goto_32
    iget-object v2, v1, Lecv;->a:Lecy;

    iget-object v2, v2, Lecy;->n:Ldzb;

    new-instance v3, Lecu;

    .line 133
    invoke-direct {v3, v1, v4}, Lecu;-><init>(Lecv;Z)V

    goto/16 :goto_29

    .line 61
    :catchall_a
    move-exception v0

    move-object v3, v0

    .line 133
    :goto_33
    if-eqz v8, :cond_44

    iget-object v4, v8, Lecs;->a:Ldyv;

    if-nez v4, :cond_44

    const/4 v4, 0x1

    goto :goto_34

    .line 136
    :cond_44
    const/4 v4, 0x0

    .line 133
    :goto_34
    iget-object v2, v1, Lecv;->a:Lecy;

    iget-object v2, v2, Lecy;->n:Ldzb;

    new-instance v5, Lecu;

    invoke-direct {v5, v1, v4}, Lecu;-><init>(Lecv;Z)V

    invoke-virtual {v2, v5}, Ldzb;->execute(Ljava/lang/Runnable;)V

    .line 137
    goto :goto_36

    :goto_35
    throw v3

    :goto_36
    goto :goto_35
.end method
